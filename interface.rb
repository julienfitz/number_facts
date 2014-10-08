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
    if line[0] == num[0] && line[1]== num[1]
      if line[0] == num[0] && line[1] == " "
        puts line
      end
    elsif line[0] == num[0] && line[1] == num[1] && line[2] == num[2]
      if line[0] == num[0] && line[1] == num[1] && line[2] == " "
        puts line
      end
    elsif line[0] == num[0] && line[1] == num[1] && line[2] == num[2] && line[3] == num[3]
      if line[0] == num[0] && line[1] == num[1] && line[2] == num[2] && line[3] == " "
        puts line
      end
    end
  end

end

NumberFinder.new