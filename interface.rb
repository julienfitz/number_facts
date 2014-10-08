require 'pry'

class NumberFinder

  def initialize
    puts "Enter your favorite number: "
    number = gets.chomp
    #binding.pry
    get_num_fact("numbers.txt",number)
  end

  def get_num_fact(doc,num)
    File.readlines(doc).each do |line|
      match_num(line,num)
    end
  end

  def match_num(line, num)
    line.split("").each_with_index do |char, ind|
      if ind > 3
        next
      elsif char == num[ind] && line[ind+1] == " "
        puts line
      end
    end
  end

end

NumberFinder.new