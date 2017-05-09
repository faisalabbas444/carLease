class Inputprocess::ShareleaseController < ApplicationController
  def new
    # @sharelease = Inputprocess::ShareLease.new
  end
  def create
    render plain: Inputprocess::ShareLease.new.inspect
    # @sharelease = Inputprocess::ShareLease.new(sharelease_params)
    # if @sharelease.save
      # redirect_to @sharelease
    # else
    #   render 'new'
    # end
    # @sharelease.inspect
    # render plain: params[:sharelease].inspect
  end
  def edit
    @sharelease = Inputprocess::ShareLease.find(params[:id])
  end
  def update
    # @sharelease = Inputprocess::ShareLease.find(params[])
  end
  def delete
    @sharelease = Inputprocess::ShareLease.delete([params[:id]])
  end

  private
  def sharelease_params
    params.require(:sharelease).permit(:name, :model)
  end
end
