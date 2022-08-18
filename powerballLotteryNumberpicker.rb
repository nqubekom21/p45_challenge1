array = Array.new
puts "Enter the number of lines you want"
input = gets.strip.chomp.to_i
input.times do
    5.times do
        number = rand(1..50)
        while array.include?(number) == true
            number = rand(1..50)
        end
        array.push(number)
    end
    puts "#{array.join(' ')} bonus: #{rand(1..20)}"
    array.clear
end