require 'pry'

class NumberFinder

  def initialize
    puts "Enter your favorite number: "
    number = gets.chomp
    #binding.pry
    get_num_fact("numbers",number)
  end

  def get_num_fact(doc,num)
    File.readlines(doc).each do |line|
      if line == num
        puts "#{line}"
        puts "I hope you've enjoyed learning more about your favorite number!"
      end
    end
  end
end

NumberFinder.new