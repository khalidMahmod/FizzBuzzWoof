# How to run:
# Run the following command in terminal:
# ruby FizzBuzzWoof.rb

module FizzBuzzWoof
  def self.main
    fbw = FizzBuzzWoof.new
    fbw.play
  end

  class FizzBuzzWoof
    def initialize
      @output = ''
      @replaced = false
    end

    def play
      for i in (1..100) do
        @replaced = false

        # Replace with Fuzz if the number is DIVISIBLE by 3
        replace_number_with_word('Fizz') if i % 3 == 0
        # Replace with Fuzz if the number CONTAINS 3
        i.to_s.chars.each{ |chr| replace_number_with_word('Fizz') if chr == '3' }

        # Replace with Buzz if the number is DIVISIBLE by 5
        replace_number_with_word('Buzz') if i % 5 == 0
        # Replace with Buzz if the number CONTAINS 5
        i.to_s.chars.each{ |chr| replace_number_with_word('Buzz') if chr == '5' }

        # Replace with Woff if the number is DIVISIBLE by 7
        replace_number_with_word('Woof') if i % 7 == 0
        # Replace with Woff if the number CONTAINS 7
        i.to_s.chars.each{ |chr| replace_number_with_word('Woof') if chr == '7' }

        @output += "#{i}" unless @replaced

        @output += " (#{i})" if @replaced
        @output += ', ' unless i == 100
      end
      puts @output
    end

    # Method that replaces a number with word Fizz/Buzz/Woof
    def replace_number_with_word(word)
      @output += ' ' if @replaced
      @output += word
      @replaced = true
    end
  end
end
# Call FizzBuzzWoof Moduel
FizzBuzzWoof.main
