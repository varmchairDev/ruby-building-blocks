def substrings(str,dictionary)
    match_found = {}
    dictionary = dictionary.split(",")
    str = str.downcase
    str = str.split(" ")
    dictionary.each do |d|
        count = 0
        str.each do |s|
            if s.match(/w/) && s.match(/#{d}/)
                count += 1
            end
        end
        if count > 0
            #match_found.merge!(d: count)
            match_found[d] = count
        end
    end
    puts match_found
end

puts "Input dictionary(seperate words with ',')"
dictionary_input = gets.chomp
puts "Input string"
str_input = gets.chomp

substrings(str_input,dictionary_input)