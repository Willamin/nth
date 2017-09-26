require "./nth/*"

module Nth
  macro minus_one
    self - 1
  end

  def st
    raise "#{self}.st is invalid" if self % 10 != 1
    minus_one
  end

  def nd
    raise "#{self}.nd is invalid" if self % 10 != 2
    minus_one
  end

  def rd
    raise "#{self}.rd is invalid" if self % 10 != 3
    minus_one
  end

  def th
    return minus_one if self > 10 && self % 100 == 11
    return minus_one if self > 10 && self % 100 == 12
    return minus_one if self > 10 && self % 100 == 13
    raise "#{self}.th is invalid" if self % 10 == 1
    raise "#{self}.th is invalid" if self % 10 == 2
    raise "#{self}.th is invalid" if self % 10 == 3
    minus_one
  end
end

struct Int32
  include Nth
end
