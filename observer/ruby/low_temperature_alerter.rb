class LowTemperatureAlerter < TemperatureAlerter

  def initialize(termometer, limit)
    super termometer, limit
  end

  def update(time, temp)
    puts "\r#{time.to_s}: [#{temp}] Low temperature alert!" if temp < @limit
  end

end
