class HighTemperatureAlerter < TemperatureAlerter

  def update(time, temp)
    puts "#{time.to_s}: [#{temp}] High temperature alert!\r" if temp > @limit
  end

end
