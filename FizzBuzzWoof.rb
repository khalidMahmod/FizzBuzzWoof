def fizz_buzz_woff(n)
  (1..n).each do |i|
    output = ""
    output += "Fizz" if i % 3 == 0
    output += "Buzz" if i % 5 == 0
    output += "Woff" if i % 7 == 0

    puts output.empty? ? i : output
  end 
end 

fizz_buzz_woff(35)
