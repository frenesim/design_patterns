class TemperatureAlerter

  def initialize(termometer, limit)
    @limit = limit
    termometer.add_observer(self)
  end

end
