class LinksController < ApplicationController
  def new 
    @link = Link.new
    @links = Link.all
  end 

  def show 
    id = params[:base_36].to_i(36)
    link = Link.find(id)
    redirect_to link.original_url
  end 

  def create 
    Link.create(original_url: params[:link][:original_url])
    flash[:success] = "You created a new link! 🔗"
    redirect_to "/links"
  end 
end
