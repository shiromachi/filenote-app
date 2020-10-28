class FilenotesController < ApplicationController
  def new
    @filenotes = Filenote.all
  end

  def create
  end

  def destroy
  end
end
