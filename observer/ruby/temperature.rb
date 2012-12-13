class Temperature

  @@initial_temp = 22

  def self.measure
    @@initial_temp += rand(7) - 3
  end

end
