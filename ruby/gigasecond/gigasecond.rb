class Gigasecond
  GIGASECOND = 1_000_000_000

  def self.from(birthdate)
    (birthdate + GIGASECOND).to_date
  end
end
