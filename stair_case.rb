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

def combiNations(n,i)
   if(n == 0)
    noWays($arr,i)
   elsif(n > 0)    
    for k in 1..n+1
     if k <=2 or k == 5	
	$arr[i] = k
         combiNations(n-k,i+1)
     end
    end	
  end    
  
end
def noWays(arr,arr_length)
    print(",")
    for i in 0...arr_length
      print arr[i]
    end
end
def recursive
 puts "enter a number"
 n = gets.chomp().to_i
 ways = countNoOfWays(n.to_i)
 if (n == 1 or n == 2 or n ==5)
   print("number of ways:#{ways+1} " )
 else
  print("number of ways:#{ways} ")
 end
 puts "if you want to continue"
 puts  "please enter yes"
 yes = gets.chomp()
 if (yes == "yes")
   combiNations(n,0)
   recursive
 elsif (yes == "no")
    recursive
 else 
     puts "please enter yes or no"
     yes = gets.chomp() 
     if(yes == "yes")
      combiNations(n,0)
      recursive
     elsif (yes == "no")
       recursive
     end    
 end
end
recursive
