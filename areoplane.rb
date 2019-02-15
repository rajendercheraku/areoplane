input = [[3,2],[4,3],[2,3],[3,4]]
twoDimensionalArray = [[0], [0], [0], [0]]

j = 0

input.each do |i|

     twoDimensionalArray[j] = twoDimensionalArray[j]*i[1]

     j = j+1

     

    end

k = 0

input.each do |i|

      l = 0

      twoDimensionalArray[k].each do |n|

        twoDimensionalArray[k][l] =  [twoDimensionalArray[k][l]]*i[0]

	 l = l + 1

      end

      k = k+1

 end 

r = 0

b = 0

twoDimensionalArray.each do |i|

    if (r == 0)

       i.each do |i|

	   print twoDimensionalArray[b]
   
       end

    elsif (r == 1) 

       i
  
    elsif (r == 2)

       i

    else

       i	    

    end	

   r = r + 1    

end


