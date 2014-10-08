require 'pry'

class NumberFinder

  def initialize
    puts "Enter your favorite number: "
    number = gets.chomp
    #binding.pry
    get_num_fact("./numbers.txt",number)
  end

  def get_num_fact(doc,num)
    File.readlines(doc).each do |line|
      match_num(line)
    end
  end

  def match_num(line)
    number_array =["1","2","3","4","5","6","7","8","9","0"]
    if line[0] == number_array[0] && line[1] == " "
      puts line
    end
  end

end

NumberFinder.new