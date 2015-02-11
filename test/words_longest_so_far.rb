words = ["tim", "tommy", "theresa", "topher", "toby"]

longest = words.reduce do |longest_so_far, current|
	puts "-----"
	puts "longest so far: #{longest_so_far}"
	puts "current: #{current}"
	if longest_so_far.length > current.length
		longest_so_far
	else
		current
	end
end

puts "-------"
puts longest