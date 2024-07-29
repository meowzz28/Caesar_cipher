

def caesar_cipher(message, shift)
    result = ''
    message.each_char do |m|
    deduction = case m.ord
    when 65..90 then 60
    when 97..122 then 87
    else 
        result += m
        next
    end
    result += ((((m.ord - deduction) + shift) % 26) + deduction).chr

    end
    puts result
end

caesar_cipher("What is this String?", 5)

     
