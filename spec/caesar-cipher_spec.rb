require "./lib/caesar-cipher"

describe "caesar_cipher" do
    
    it "check main mechanic of ceasar_cipher" do
        expect((caesar_cipher("case",3))).to eql("fdvh")
    end

    it "upcase or downcase letter must not be altered" do 
        expect((caesar_cipher("CaSe",3))).to eql("FdVh")
    end

    it "When letter num exceed alphabet length return beginning." do
        expect((caesar_cipher("yolo",5))).to eql("dtqt")
    end
end