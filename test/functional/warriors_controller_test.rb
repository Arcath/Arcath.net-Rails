require 'test_helper'

class WarriorsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Warrior.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Warrior.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Warrior.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to warrior_url(assigns(:warrior))
  end
  
  def test_edit
    get :edit, :id => Warrior.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Warrior.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Warrior.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Warrior.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Warrior.first
    assert_redirected_to warrior_url(assigns(:warrior))
  end
  
  def test_destroy
    warrior = Warrior.first
    delete :destroy, :id => warrior
    assert_redirected_to warriors_url
    assert !Warrior.exists?(warrior.id)
  end
end
