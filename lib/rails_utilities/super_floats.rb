class Float
  def displayed_with_exact_precision(precision = 2)
    ("%.#{precision}f" % self)
  end
end