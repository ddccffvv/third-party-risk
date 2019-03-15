class CompaniesController < ApplicationController

  def index
    @companies = Company.all.order(:name)
  end

  def show
    @company = current_company
  end

  private

  helper_method def current_company
    return Company.friendly.find params[:id]
  end
end
