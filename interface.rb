require 'pry'

class NumberFinder

  def initialize
    puts "Enter your favorite number: "
    number = gets.chomp
    get_num_fact("numbers.txt",number)
    puts "Do you want to get information on another number? (Y/N)"
    choice = gets.chomp
    if choice.upcase == 'Y' || choice.upcase == 'YES'
      NumberFinder.new
    else
      puts "Have a nice day! Goodbye."
    end
  end

  def get_num_fact(doc,num)
    File.readlines(doc).each do |line|
      match_num(line,num)
    end
  end

  def match_num(line, num)
    line_array = line.split(" ")
    line_array.each_with_index do |char, ind|
      if ind == 0 && char == num
        puts line
        puts "I hope you enjoyed learning more about your favorite number!"
      end
    end
  end

end

NumberFinder.new