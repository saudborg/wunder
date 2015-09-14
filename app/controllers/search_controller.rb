class SearchController < ApplicationController
  def index
    @driver_applications = DriverApplication.where(nil)
    filtering_params(params).each do |key, value|
      # Here I try to passar um campo vazio mas nao consegui fazer esse tratamento
      @driver_applications = @driver_applications.public_send(key, value) if value.present?
    end

  #if params[:status].present?
  #  @driver_applications = @driver_applications.status(params[:status])
  #end
  #if params[:city_id].present?
  #  @driver_applications = @driver_applications.city_id(params[:city_id])
  #end
  end

  def edit
    @driver_application = DriverApplication.find(params[:id])
  end

  # A list of the param names that can be used for filtering the Product list
  def filtering_params(params)
    params.slice(:status, :city_id)
  end
end
