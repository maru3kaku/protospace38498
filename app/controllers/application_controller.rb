class ApplicationController < ActionController::Base
  def index
    @posts = Prototype.all
  end
end
