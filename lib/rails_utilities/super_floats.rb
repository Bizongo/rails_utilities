class Float
  def to_round(precision = 2)
    ("%.#{precision}f" % self)
  end
end
