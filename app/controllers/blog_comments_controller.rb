class BlogCommentsController < ApplicationController
  def index
    @blog_comments = BlogComments.all
  end
  
  def show
    @blog_comments = BlogComments.find(params[:id])
  end
  
  def new
    @blog_comments = BlogComments.new
  end
  
  def create
    @blog_comments = BlogComments.new(params[:blog_comments])
    if @blog_comments.save
      flash[:notice] = "Successfully created blog comments."
      redirect_to @blog_comments
    else
      render :action => 'new'
    end
  end
  
  def edit
    @blog_comments = BlogComments.find(params[:id])
  end
  
  def update
    @blog_comments = BlogComments.find(params[:id])
    if @blog_comments.update_attributes(params[:blog_comments])
      flash[:notice] = "Successfully updated blog comments."
      redirect_to @blog_comments
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @blog_comments = BlogComments.find(params[:id])
    @blog_comments.destroy
    flash[:notice] = "Successfully destroyed blog comments."
    redirect_to blog_comments_url
  end
end
