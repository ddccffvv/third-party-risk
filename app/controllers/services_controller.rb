class ServicesController < ApplicationController
  def index
    @services = Service.all.order(:name)
  end

  def show
    @service = current_service
  end

  private

  helper_method def current_service
    return Service.friendly.find params[:id]
  end
end
