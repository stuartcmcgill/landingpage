class AdminController < ApplicationController
  def index
  	@landing_pages=LandingPage.all
  end
end
