require 'pry'

class NumberFinder

  def initialize
    puts "Enter your favorite number: "
    number = gets.chomp
    #binding.pry
    get_num_fact("numbers.txt",number)
  end

  def get_num_fact(doc,num)
    numbers = ["1","2","3","4","5","6","7","8","9","0"]
    if numbers.include?(num)
      File.readlines(doc).each do |line|
        match_num(line,num)
      end
    else
      puts "Sorry! You may only use a single-digit number at this time. Try again!"
      NumberFinder.new
    end
  end

  def match_num(line, num)
    line.split("").each_with_index do |char, ind|
      if ind > 3
        next
      elsif char == num[ind] && line[ind+1] == " "
        puts line
        puts "I hope you enjoyed learning more about your favorite number!"
      end
    end
  end

end

NumberFinder.new