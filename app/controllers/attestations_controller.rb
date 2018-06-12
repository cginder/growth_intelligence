class AttestationsController < ApplicationController
  def index
    @attestations = Attestation.page(params[:page]).per(10)

    render("attestations/index.html.erb")
  end

  def show
    @attestation = Attestation.find(params[:id])

    render("attestations/show.html.erb")
  end

  def new
    @attestation = Attestation.new

    render("attestations/new.html.erb")
  end

  def create
    @attestation = Attestation.new

    @attestation.physician_id = params[:physician_id]
    @attestation.ehr_vendor = params[:ehr_vendor]
    @attestation.ehr_name = params[:ehr_name]
    @attestation.certification_date = params[:certification_date]

    save_status = @attestation.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/attestations/new", "/create_attestation"
        redirect_to("/attestations")
      else
        redirect_back(:fallback_location => "/", :notice => "Attestation created successfully.")
      end
    else
      render("attestations/new.html.erb")
    end
  end

  def edit
    @attestation = Attestation.find(params[:id])

    render("attestations/edit.html.erb")
  end

  def update
    @attestation = Attestation.find(params[:id])

    @attestation.physician_id = params[:physician_id]
    @attestation.ehr_vendor = params[:ehr_vendor]
    @attestation.ehr_name = params[:ehr_name]
    @attestation.certification_date = params[:certification_date]

    save_status = @attestation.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/attestations/#{@attestation.id}/edit", "/update_attestation"
        redirect_to("/attestations/#{@attestation.id}", :notice => "Attestation updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Attestation updated successfully.")
      end
    else
      render("attestations/edit.html.erb")
    end
  end

  def destroy
    @attestation = Attestation.find(params[:id])

    @attestation.destroy

    if URI(request.referer).path == "/attestations/#{@attestation.id}"
      redirect_to("/", :notice => "Attestation deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Attestation deleted.")
    end
  end
end
