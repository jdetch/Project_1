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

  # A method for manipulating the data; get the uv index and then use it
  # Some methods are just for displaying data, others are for manipulating data
  def calculate_uv_index
    if !validate_zipcode(params[:zipcode])
      render :index
      return
    end

    # Grab the params :zipcode that came from the form on the home/index page and pass it in
    # Using the given zipcode, call the calc_uv_index method on the SunSession class and assign the value to the uv_index variable
    uv_index = SunSession.calculate_uv_index(params[:zipcode])
    # To the home index path, we are passing the variable that we found so that it can use the number
    redirect_to home_index_path(:uv_index => uv_index)
  end

  def calculate_exposure_time
    exposure_time = SunSession.calculate_exposure_time(params[:uv_index], params[:max_unprotected_exposure_time], params[:spf])
    redirect_to home_index_path(:exposure_time => exposure_time)
  end


  private


  def validate_zipcode(zipcode)
    # by default the zipcode is invalid
      valid = false
    if zipcode =~ /^\d{5}(?:[-\s]\d{4})?$/
      valid = true
    else
      @error = "Please enter valid zip code"
    end
    valid
  end

end
