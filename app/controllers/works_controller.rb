class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to "/works"
    else
      render :index
    end
  end

  def edit
  end

  def update
  end

  def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to works_path 
  end

  private

  def work_params
    params.permit(:app_name, :url, :text, :image).merge(user_id: current_user.id)
  end
end