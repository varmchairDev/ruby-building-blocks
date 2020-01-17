require 'sinatra'

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
    return ans.join("")
end

get '/' do
    word = params['word-to-encode']
    num = params['number']
    result = ""
    show_result = false

    if word.nil? == false && word != ''
        caesar_cipher(word,num.to_i)
        show_result = true
    end

    erb :index, :locals => { :result => result, :show_result => show_result }
end

