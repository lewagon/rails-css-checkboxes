class CheatsheetsController < ApplicationController
  def new
    @cheatsheet = Cheatsheet.new
  end

  def create
    @cheatsheet = Cheatsheet.new(cheatsheet_params)
    if @cheatsheet.save
      redirect_to cheatsheet_path(@cheatsheet)
    else
      render :new
    end
  end

  def show
    @cheatsheet = Cheatsheet.find(params[:id])
  end

  private

  def cheatsheet_params
    params.require(:cheatsheet).permit(:title, :snippet, tag_ids: [])
  end
end