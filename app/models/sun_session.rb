class SunSession

  # Use self because this is a class method. You just want to return number, not make a new instance of the class first
  def self.calculate_uv_index(zipcode)
    w_api = Wunderground.new(ENV['WUNDERGROUND_TOKEN'])
    uv_index = w_api.conditions_for("#{zipcode}")['current_observation']['UV']
    return uv_index
  end

  def self.calculate_exposure_time(uv_index, max_unprotected_exposure_time, spf)
    exposure_time = (max_unprotected_exposure_time.to_f / uv_index.to_f) * spf.to_f
    return exposure_time.floor
  end

  def self.calculate_exposure_time_in_hours(exposure_time)
    exposure_time_in_hours = (exposure_time.to_f / 60).round(1)
    return exposure_time_in_hours
  end

end
