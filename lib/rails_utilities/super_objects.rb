class Object
  def true?
    return self == true || self == "true"
  end

  def false?
    return self == false || self == "false"
  end
end
