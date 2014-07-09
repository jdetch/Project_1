class SunSession

  # Use self because this is a class method. You just want to return number, not make a new instance of the class first
  def self.calculate_uv_index(zipcode)
    w_api = Wunderground.new(ENV['WUNDERGROUND_TOKEN'])
    uv_index = w_api.conditions_for("#{zipcode}")['current_observation']['UV']
    return uv_index
  end

end
