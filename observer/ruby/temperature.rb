class Temperature

  @@last_temp = 22

  def self.measure
    @@last_temp += rand(2) < 1 ? -rand(3) : rand(3)
  end

end
