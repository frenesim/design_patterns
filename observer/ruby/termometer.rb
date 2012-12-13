# encoding: utf-8
require 'observer'
require 'temperature_alerter'
require 'temperature'
require 'low_temperature_alerter'
require 'high_temperature_alerter'

class Termometer
  include Observable

  def initialize(location)
    @location = location
  end

  def measure
    puts "Showing data for #{@location}:"
    loop do
      last_temp = nil
      temp = Temperature.measure
      if temp != last_temp
        changed
        last_temp = temp
        notify_observers(Time.now.utc, temp)
      end
      print " #{Time.now.utc.to_s}: #{temp} º.C  \r"
      sleep 1
    end
  end
end

termometer = Termometer.new("Faro, Portugal")
LowTemperatureAlerter.new(termometer, 5)
HighTemperatureAlerter.new(termometer, 35)
termometer.measure
