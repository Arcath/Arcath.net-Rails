class UsagesController < ApplicationController
  def index
    @usages = Usage.all(:order => "created_at DESC", :limit => 30)
  end
end
