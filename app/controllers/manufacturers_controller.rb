class ManufacturersController < ApplicationController
  def index

    @manufacturers = Manufacturer.all

  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
    @models = Model.all
  end
end
