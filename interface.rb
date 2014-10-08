class NumberFinder

  def initialize
    puts "Enter your favorite number: "
    number = gets.chomp
    get_num_fact("numbers.txt",number)
  end

  def get_num_fact(doc,num)
    line_num=0
    text=File.open(doc).read
    text.gsub!(/\r\n?/, "\n")
    text.each_line do |line|
      if line == num
        puts "#{line}"
      end
    end
  end
end

NumberFinder.new