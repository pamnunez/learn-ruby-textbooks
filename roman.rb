def roman num
    if (num == 0) then return 0 end 
    result = ""


    thou = num / 1000
    num = num % 1000
    fiveh = num / 500
    num = num % 500
    hund = num / 100
    num = num % 100
    fift = num / 50
    num = num % 50
    ten = num / 10
    num = num % 10
    five = num / 5
    num = num % 5

    

    result + ("M"*thou) + ("D"*fiveh) + ("C"*hund) + ("L"*fift) +
        ("X"*ten) + ("V"*five) + ("I"*num)
    
end

puts roman 4596
puts roman 12
puts roman 1
puts roman 234


