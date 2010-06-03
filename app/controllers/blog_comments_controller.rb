class BlogCommentsController < ApplicationController
  def index
    @blog_comments = BlogComment.all
  end
  
  def show
    @blog_comments = BlogComment.find(params[:id])
  end
  
  def new
    @blog_comments = BlogComment.new
  end
  
  def create
    @post = BlogPost.find(params[:blog_post_id])
    @comment = @post.blog_comments.create!(params[:blog_comment])
    if @comment.save
      flash[:notice] = "Successfully created blog comments."
      redirect_to @post
    end
  end
  
  def edit
    @blog_comments = BlogComment.find(params[:id])
  end
  
  def update
    @blog_comments = BlogComment.find(params[:id])
    if @blog_comments.update_attributes(params[:blog_comments])
      flash[:notice] = "Successfully updated blog comments."
      redirect_to @blog_comments
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @blog_comments = BlogComment.find(params[:id])
    @blog_comments.destroy
    flash[:notice] = "Successfully destroyed blog comments."
    redirect_to blog_comments_url
  end
end
