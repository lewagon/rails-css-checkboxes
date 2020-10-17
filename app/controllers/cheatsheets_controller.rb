class CheatsheetsController < ApplicationController
  before_action :set_cheatsheet, only: [:show, :edit, :update, :destroy]

  def index
    @cheatsheets = Cheatsheet.all
  end

  def show
  end

  def new
    @cheatsheet = Cheatsheet.new
  end

  def edit
  end

  def create
    @cheatsheet = Cheatsheet.new(cheatsheet_params)
    if @cheatsheet.save
      redirect_to cheatsheet_path(@cheatsheet)
    else
      render :new
    end
  end

  def update
    @cheatsheet.update(cheatsheet_params)
    redirect_to cheatsheet_path(@cheatsheet)
  end

  def destroy
    @cheatsheet.destroy
    redirect_to cheatsheets_path
  end
  
  private
  def set_cheatsheet
    @cheatsheet = Cheatsheet.find(params[:id])
  end
  
  def cheatsheet_params
    params.require(:cheatsheet).permit(:title, :code, :language_id, tag_ids: [])
  end
  
end