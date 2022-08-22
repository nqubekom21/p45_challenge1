def lotteryPowerball
    powerball = rand(1..20)
    array = Array.new(5){rand(0..50)}
    #array.push(powerball)
    puts "#{array.join(" ")} powerbal: #{powerball}"
end
    
puts "Enter the number of lines: "
input = gets.strip.chomp.to_i # number of lines

input.times {
    lotteryPowerball
}
