class FilenotesController < ApplicationController
  def new
    @filenotes = Filenote.all
  end

  def create
    @filenote = Filenote.new(filenote_params)
    if @filenote.save
      redirect_to new_filenote_path 
    else
      render :new 
    end
  end

  def destroy
  end

  private

  def filenote_params
    params.require(:filenote).permit(:title, :memo).merge(user_id: current_user.id)
  end
end
