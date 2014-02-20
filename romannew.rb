def roman num
    if (num == 0) then return 0 end 
    result = ""


    thou = num / 1000
    num = num % 1000
    nineh = num / 900
    num = num % 900
    fiveh = num / 500
    num = num % 500
    fourh = num / 400
    num = num % 400
    hund = num / 100
    num = num % 100
    ninet = num / 90
    num = num % 90
    fift = num / 50
    num = num % 50
    fort = num / 40
    num = num % 40
    ten = num / 10
    num = num % 10
    nine = num / 9
    num = num % 9
    five = num / 5
    num = num % 5
    four = num / 4
    num = num % 4

    result + ("M"*thou) + ("CM"*nineh) + ("D"*fiveh) + ("CD"*fourh) + ("C"*hund) +
        ("XC"*ninet) + ("L"*fift) + ("XL"*fort) + ("X"*ten) + ("IX"*nine) + 
        ("V"*five) + ("IV"*four) + ("I"*num)

end

puts "4596 = " + (roman 4596)
puts "12 = " + (roman 12)
puts "1 = " + (roman 1)
puts "234 = " + (roman 234)
puts "3949 = " + (roman 3949)

