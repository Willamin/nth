require "./spec_helper"

describe Nth do
  it "follows english rules" do
    my_array = [
      :first, :second, :third, :fourth, :fifth,
      :sixth, :seventh, :eighth, :ninth, :tenth,
      :eleventh, :twelfth, :thirteenth, :fourteenth, :fifteenth,
      :sixteenth, :seventeenth, :eighteenth, :nineteenth, :twentieth,
      :twentyfirst, :twentysecond, :twentythird, :twentyfourth, :twentyfifth,
    ]

    my_output = [] of String

    my_output << [my_array[1.st], my_array[2.nd], my_array[3.rd], my_array[4.th], my_array[5.th]].join(" ")
    my_output << [my_array[6.th], my_array[7.th], my_array[8.th], my_array[9.th], my_array[10.th]].join(" ")
    my_output << [my_array[11.th], my_array[12.th], my_array[13.th], my_array[14.th], my_array[15.th]].join(" ")
    my_output << [my_array[16.th], my_array[17.th], my_array[18.th], my_array[19.th], my_array[20.th]].join(" ")
    my_output << [my_array[21.st], my_array[22.nd], my_array[23.rd], my_array[24.th], my_array[25.th]].join(" ")

    my_output.join("\n").should eq <<-OUTPUT
first second third fourth fifth
sixth seventh eighth ninth tenth
eleventh twelfth thirteenth fourteenth fifteenth
sixteenth seventeenth eighteenth nineteenth twentieth
twentyfirst twentysecond twentythird twentyfourth twentyfifth
OUTPUT
  end
end
