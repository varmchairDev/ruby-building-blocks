def caesar_cipher(str,num)
    alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    last_index = alphabet.length-1
    ans = []
    letters = str.split("")
    letters.each do |w|
        if w != w.upcase && w.match(/[a-z]/)
            cip_index = alphabet.index(w)+num.to_i
            if cip_index > last_index
                ans.push(alphabet[cip_index-alphabet.length])
            else
                ans.push(alphabet[cip_index])
            end
        elsif w == w.upcase && w.match(/[A-Z]/)
            cip_index = alphabet.index(w.downcase)+num.to_i
            if cip_index > last_index
                ans.push(alphabet[cip_index-alphabet.length].upcase)
            else
                ans.push(alphabet[cip_index].upcase)
            end
        else
            ans.push(w)
        end
    end
    puts ans.join("")
end

puts "String input: "

cip_str = gets.chomp

puts "Integer input: "

cip_int = gets.chomp

caesar_cipher(cip_str,cip_int)