class String
  def is_i?
    /\A[-+]?\d+\z/ === self
  end

  def is_email?
    /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i === self
  end

  def prepend_a_or_an
    return self if self[0].is_i?
    %w(a e i o u).include?(self[0].downcase) ? "an #{self}" : "a #{self}"
  end

  def strip_country_code(country_code = "+91")
    self.split(country_code).last
  end
end
