class HomeController < ApplicationController

  before_action :authenticate_user!, except: :about
  # skip_before_filter :authenticate_user!, except: :about
  # skip_before_filter :require_no_authentication, :except => [:about]

  # This will be for when no user is logged in
  def about
  end

  # This will show the default page after a user is logged in.
  def index
  end

end
