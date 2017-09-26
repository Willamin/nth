require "./nth/*"

module Nth
end

struct Int32
  def minus_one
    self - 1
  end

  def st
    raise "#{self}.st is invalid" if self.to_s[-1] != '1'
    minus_one
  end

  def nd
    raise "#{self}.nd is invalid" if self.to_s[-1] != '2'
    minus_one
  end

  def rd
    raise "#{self}.rd is invalid" if self.to_s[-1] != '3'
    minus_one
  end

  def th
    return minus_one if self.to_s.size > 1 && self.to_s[-2..-1] == "11"
    return minus_one if self.to_s.size > 1 && self.to_s[-2..-1] == "12"
    return minus_one if self.to_s.size > 1 && self.to_s[-2..-1] == "13"
    raise "#{self}.th is invalid" if self.to_s[-1] == '1'
    raise "#{self}.th is invalid" if self.to_s[-1] == '2'
    raise "#{self}.th is invalid" if self.to_s[-1] == '3'
    minus_one
  end
end
