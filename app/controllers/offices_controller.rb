class OfficesController < ApplicationController
  def index
    @offices = Office.page(params[:page]).per(10)

    render("offices/index.html.erb")
  end

  def show
    @office = Office.find(params[:id])

    render("offices/show.html.erb")
  end

  def new
    @office = Office.new

    render("offices/new.html.erb")
  end

  def create
    @office = Office.new

    @office.line1_address = params[:line1_address]
    @office.line2_address = params[:line2_address]
    @office.city = params[:city]
    @office.state = params[:state]
    @office.zip = params[:zip]
    @office.phone = params[:phone]
    @office.practice_id = params[:practice_id]

    save_status = @office.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/offices/new", "/create_office"
        redirect_to("/offices")
      else
        redirect_back(:fallback_location => "/", :notice => "Office created successfully.")
      end
    else
      render("offices/new.html.erb")
    end
  end

  def edit
    @office = Office.find(params[:id])

    render("offices/edit.html.erb")
  end

  def update
    @office = Office.find(params[:id])

    @office.line1_address = params[:line1_address]
    @office.line2_address = params[:line2_address]
    @office.city = params[:city]
    @office.state = params[:state]
    @office.zip = params[:zip]
    @office.phone = params[:phone]
    @office.practice_id = params[:practice_id]

    save_status = @office.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/offices/#{@office.id}/edit", "/update_office"
        redirect_to("/offices/#{@office.id}", :notice => "Office updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Office updated successfully.")
      end
    else
      render("offices/edit.html.erb")
    end
  end

  def destroy
    @office = Office.find(params[:id])

    @office.destroy

    if URI(request.referer).path == "/offices/#{@office.id}"
      redirect_to("/", :notice => "Office deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Office deleted.")
    end
  end
end
