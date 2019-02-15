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

print twoDimensionalArray
