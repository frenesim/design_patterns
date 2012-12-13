class LowTemperatureAlerter < TemperatureAlerter

  def update(time, temp)
    puts "#{time.to_s}: [#{temp}] Low temperature alert!\r" if temp < @limit
  end

end
