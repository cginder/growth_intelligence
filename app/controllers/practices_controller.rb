class PracticesController < ApplicationController
  def index
    @practices = Practice.all

    render("practices/index.html.erb")
  end

  def show
    @employment = Employment.new
    @office = Office.new
    @practice = Practice.find(params[:id])

    render("practices/show.html.erb")
  end

  def new
    @practice = Practice.new

    render("practices/new.html.erb")
  end

  def create
    @practice = Practice.new

    @practice.pac_id = params[:pac_id]

    save_status = @practice.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/practices/new", "/create_practice"
        redirect_to("/practices")
      else
        redirect_back(:fallback_location => "/", :notice => "Practice created successfully.")
      end
    else
      render("practices/new.html.erb")
    end
  end

  def edit
    @practice = Practice.find(params[:id])

    render("practices/edit.html.erb")
  end

  def update
    @practice = Practice.find(params[:id])

    @practice.pac_id = params[:pac_id]

    save_status = @practice.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/practices/#{@practice.id}/edit", "/update_practice"
        redirect_to("/practices/#{@practice.id}", :notice => "Practice updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Practice updated successfully.")
      end
    else
      render("practices/edit.html.erb")
    end
  end

  def destroy
    @practice = Practice.find(params[:id])

    @practice.destroy

    if URI(request.referer).path == "/practices/#{@practice.id}"
      redirect_to("/", :notice => "Practice deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Practice deleted.")
    end
  end
end
