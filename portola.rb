#!/usr/bin/ruby

def get_numbers
  numbers = {}
  puts "What are the names of the players of the game?"
  gets.split(' ').each do |name|
    puts "\n#{name}, please enter two lucky numbers (0 - 100)!"
    lucky_numbers = gets.split(' ')
    numbers[name] = lucky_numbers
  end
  numbers
end

def get_random_numbers
  [rand(101), rand(101)]
end

winners = []
numbers = get_numbers
print "\n\n\n\n"
get_random_numbers.each_with_index do |random, idx|
  print "Random number is: #{random}\n"
  diff = 10000000000
  winner = ""
  numbers.each do |name, numbers|
    curr_diff = random - numbers[idx].to_i
    print "#{name} lucky number is #{numbers[idx]} and diff is #{curr_diff}\n"
    if curr_diff < diff
      winner = name
      diff = curr_diff
    end
  end
  print "Winner: #{winner}\n\n\n"
  winners.append(winner)
end

print winners

