$arr = [ ] 
def fib(n)
 if n <= 1
  return n
 end
 return fib(n-1) + fib(n-2)
end

def countNoOfWays (s)
  return fib(s+1)
end

def function(n,i)
   if(n == 0)
    printArray($arr,i)
   elsif(n > 0)    
    for k in 1..n+1
     if k <=2 or k == 5	
	$arr[i] = k
         function(n-k,i+1)
     end
    end	
  end    
  
end
def printArray(arr,arr_length)
    print(",")
    for i in 0...arr_length
      print arr[i]
    end
end

puts "enter a number"

n = gets.chomp().to_i

ways = countNoOfWays(n.to_i)

if (n == 1 or n == 2 or n ==5)
   print("number of ways:#{ways+1} " )
 else
  print("number of ways:#{ways} ")
end
function(n,0)
