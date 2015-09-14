class SearchController < ApplicationController
  def index
    @driver_applications = DriverApplication.where(nil)
    filtering_params(params).each do |key, value|
    #Here I tried to handle the case of an empty field (''), but I didn't succeed
    #value.blank?
      @driver_applications = @driver_applications.public_send(key, value) if value.present?
    end
  end

  def edit
    @driver_application = DriverApplication.find(params[:id])
  end

  # A list of the param names that can be used for filtering the Driver Applications list
  def filtering_params(params)
    params.slice(:status, :city_id)
  end
end
