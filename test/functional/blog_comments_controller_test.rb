require 'test_helper'

class BlogCommentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => BlogComments.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    BlogComments.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    BlogComments.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to blog_comments_url(assigns(:blog_comments))
  end
  
  def test_edit
    get :edit, :id => BlogComments.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    BlogComments.any_instance.stubs(:valid?).returns(false)
    put :update, :id => BlogComments.first
    assert_template 'edit'
  end
  
  def test_update_valid
    BlogComments.any_instance.stubs(:valid?).returns(true)
    put :update, :id => BlogComments.first
    assert_redirected_to blog_comments_url(assigns(:blog_comments))
  end
  
  def test_destroy
    blog_comments = BlogComments.first
    delete :destroy, :id => blog_comments
    assert_redirected_to blog_comments_url
    assert !BlogComments.exists?(blog_comments.id)
  end
end
