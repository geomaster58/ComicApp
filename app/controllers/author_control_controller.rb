class AuthorControlController < ApplicationController
  def show
    @comic = Comic.find(params[:id])
  end

  # GET /blogs/new
  def new
    @comic = Comic.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @comic = Comic.new(comic_params)
    
    respond_to do |format|
      if @comic.save
        format.html { redirect_to @comic, notice: 'Success!!' }
        
      else
        format.html { render :new }
       
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @comic.update(comic_params)
        format.html { redirect_to @comic, notice: 'Updated!!' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @comic.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Removed!!' }
      
    end
  end

  private 

  def comic_params
    params.require(:comic).permit(:image)
  end
end
