class WorksController < ApplicationController
  def index
    works = Work.all
  end

  def new
  end

  def create
  end

  private

  def message_params
    params.require(:work).permit(:app_name, :url, :text, :image).merge(user_id: current_user.id)
  end
end