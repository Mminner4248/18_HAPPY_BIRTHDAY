def my_birthday(currentyear)
    return Proc.new {|n| currentyear - n}
end

date = my_birthday(2017)
date.call(1990).times do 
    puts "Happy Birthday"
end

puts "***********************"


def counting_years_block(block)
    time = my_birthday(block)
    time.call(2017)
    2017.upto(2019){|i| puts i, " "}
    puts "Happy Birthday"
end

counting_years_block(2020)