class HighTemperatureAlerter < TemperatureAlerter

  def initialize(termometer, limit)
    super termometer, limit
  end

  def update(time, temp)
    puts "\r#{time.to_s}: [#{temp}] High temperature alert!" if temp > @limit
  end

end