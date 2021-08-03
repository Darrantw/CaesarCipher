
def caesar_cipher(string, number)
  # write a block using a loop over the string that uses conditionals to check whether the character is upper
  # or lower case (and ignore everything else) and shift it by the given number. if string {|i| i.between?(65, 90)||(97, 122)} string.i += number, string.i = i.chr
  
  array = string.split('')
  p array
  
  array1 = array.map { |c| c.ord}
  p array1
     if (number > 26)
      number = number % 26
     end

    #for i in array1
    array2 = array1.map do |i|  
      if (i.between?(65,90)) 
        i += number 
        if (i > 90)
          i -= 26
        end
      elsif (i.between?(97, 122))
          i += number
        if (i > 122)
          i -= 26  
        end
        else
          i = i
      end
        i = i.chr
      
    end
    caesar_string = array2.join('')
  

  p caesar_string

     # if (n.between?(65, 90)) || (n.between(97, 122))
        
    
  

=begin
  array.each {
    |c| 
      if c.ord.between()
  }
  string1 = array.join('')
  puts string1
=end
end

caesar_cipher('HeLlo, wO1?!@23rld.', 115)