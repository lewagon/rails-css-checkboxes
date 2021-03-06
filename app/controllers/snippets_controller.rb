class SnippetsController < ApplicationController
  before_action :set_snippet, only: [:show, :edit, :update, :destroy]

  def index
    @snippets = Snippet.where(archived: false)
  end

  def archives
    @snippets = Snippet.where(archived: true)
  end

  def show
  end

  def new
    @snippet = Snippet.new
  end

  def edit
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      redirect_to snippet_path(@snippet)
    else
      render :new
    end
  end

  def update
    @snippet.update(snippet_params)
    redirect_to snippet_path(@snippet)
  end

  def destroy
    @snippet.destroy
    redirect_to snippets_path
  end
  
  private
  def set_snippet
    @snippet = Snippet.find(params[:id])
  end
  
  def snippet_params
    params.require(:snippet).permit(:title, :code, :category, :archived, tag_ids: [])
  end
  
end