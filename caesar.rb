def caesar_cipher(string, amount)
    i = 0
    array = []
    string = string.downcase
    while i < string.length 
        temp = string[i].ord+amount
        if temp == amount+32
            #for spaces
            array << 32.chr
        elsif temp > 122
            #for looping back when past z
            array << (temp-26).chr
        elsif temp < amount+61
            #for special characters, of which has values lower than a. Preserves the character
            array << (temp-amount).chr
        else
            array << temp.chr
        end
        i += 1
    end
    return array.join.capitalize
end

    