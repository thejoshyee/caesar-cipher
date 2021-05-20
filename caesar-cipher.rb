def caesar_cipher(string, key, cipher ='')
    #Iterate over the string characters
    string.each_char do |c|
        #check if the character is uppercase
        if c.ord < 91 
            #char is uppercase
            string = 65
        else
            #char is lowercase
            string = 97
        end
        # check if Lowercase OR Uppercase and add rotation to cipher
        if c.ord.between?(65, 90) || c.ord.between?(97, 122)
            rotation = (((c.ord - string) + key) % 26) + string
            #turn ascii numbers to letters
            cipher += rotation.chr
        #if not a alphabet char then add to cipher
        else
            cipher += c       
        end
    end
    puts cipher 
end

caesar_cipher("Wow, this is SO COOL!!!", 15)
