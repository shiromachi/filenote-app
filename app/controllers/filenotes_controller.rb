class FilenotesController < ApplicationController
  
  def new
    @filenotes = Filenote.all
  end

  def create
    @filenote = Filenote.new(filenote_params)
    if @filenote.save
      redirect_to new_filenote_path 
    else
      redirect_to new_filenote_path  
    end
  end

  def destroy
    filenote = Filenote.find(params[:id])
    filenote.destroy
    redirect_to new_filenote_path 
  end

  private

  def filenote_params
    params.permit(:title, :memo).merge(user_id: current_user.id)
  end
end
