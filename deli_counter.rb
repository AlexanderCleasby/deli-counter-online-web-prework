# Write your code here.
class Deli
  @@ticket = 1

def line(deli)
  if (deli.length==0)
    puts "The line is currently empty."
  else

    msg = "The line is currently:"


    deli.each_with_index{ |customer,i| msg+=" #{i+1}. #{customer}" }
    puts msg
  end
end


def take_a_number(array)
  @@ticket+=1
  array.push(@@ticket)
  puts "Welcome, your ticket number is #{@@ticket} and you are #{array.length} in line."
  array
end
#def take_a_number(array,customer)
#  array.push(customer)
#  puts "Welcome, #{customer}. You are number #{array.length} in line."
#  array
#end

def now_serving(line)
  if (line.length==0)
    puts "There is nobody waiting to be served!"
    line
  else
    puts "Currently serving #{line[0]}."
    line.shift()
  end
end

end
new_deli = Deli.new
new_deli.take_a_number([])
