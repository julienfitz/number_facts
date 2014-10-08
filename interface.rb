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
      if line == num
        puts "#{line}"
        puts "I hope you've enjoyed learning more about your favorite number!"
      else
        puts "Sorry! No information was found for your number."
      end
    end
  end
end

NumberFinder.new