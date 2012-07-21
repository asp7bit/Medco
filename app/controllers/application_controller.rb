class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionHelper

  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :correct_user,   only: [:edit, :update]
  #before_filter :admin_user,     only: :destroy
  
end
