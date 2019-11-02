require "namx/version"

module Namx
  class Error < StandardError; end
  ##
  # @return Array of all numbers
  def Namx.parse number
    number.split(" ").each do |i|
      i.to_i
    end
  end

  def Namx.biggest_nums n, count=1
    n.max count
  end

  def Namx.run io, count=1
    numbers_array = self.parse(io)
    biggest_nums = self.biggest_nums numbers_array, count
    puts biggest_nums.join ' '
  end
end
