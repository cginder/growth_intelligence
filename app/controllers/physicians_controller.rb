class PhysiciansController < ApplicationController
  def index
    @physicians = Physician.all

    render("physicians/index.html.erb")
  end

  def show
    @physician = Physician.find(params[:id])

    render("physicians/show.html.erb")
  end

  def new
    @physician = Physician.new

    render("physicians/new.html.erb")
  end

  def create
    @physician = Physician.new

    @physician.npi = params[:npi]
    @physician.first_name = params[:first_name]
    @physician.last_name = params[:last_name]

    save_status = @physician.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/physicians/new", "/create_physician"
        redirect_to("/physicians")
      else
        redirect_back(:fallback_location => "/", :notice => "Physician created successfully.")
      end
    else
      render("physicians/new.html.erb")
    end
  end

  def edit
    @physician = Physician.find(params[:id])

    render("physicians/edit.html.erb")
  end

  def update
    @physician = Physician.find(params[:id])

    @physician.npi = params[:npi]
    @physician.first_name = params[:first_name]
    @physician.last_name = params[:last_name]

    save_status = @physician.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/physicians/#{@physician.id}/edit", "/update_physician"
        redirect_to("/physicians/#{@physician.id}", :notice => "Physician updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Physician updated successfully.")
      end
    else
      render("physicians/edit.html.erb")
    end
  end

  def destroy
    @physician = Physician.find(params[:id])

    @physician.destroy

    if URI(request.referer).path == "/physicians/#{@physician.id}"
      redirect_to("/", :notice => "Physician deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Physician deleted.")
    end
  end
end
