class PagesController < ApplicationController
  def index
    @comic = Comic.all 
  end
end
