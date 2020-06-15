class HomeController < ApplicationController
  def top
  end
  def new
  	@user = User.new
  end

end
