class HomeController < ApplicationController
  def index
	  @bangunans = Bangunan.all
  end
end