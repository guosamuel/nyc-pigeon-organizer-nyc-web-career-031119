require "pry"

def nyc_pigeon_organizer(data)
	pigeon_names = []
	pigeon_list = {}

	data.each do |i, j|
		j.each do |a, b|
			pigeon_names.push(b)
		end
	end

	unique_pigeon_names = pigeon_names.flatten.uniq
	
	unique_pigeon_names.each do |name|
		data.each do |c, d|
			d.each do |e, f|
				if f.include?(name)
				  if e.is_a? Symbol 
<<<<<<< HEAD
				    if !pigeon_list[name]
				      # binding.pry
					    pigeon_list[name] = {c => [e.id2name]}
					  else
					    if pigeon_list[name][c]
					      pigeon_list[name][c].push(e.id2name)
					    else
					      pigeon_list[name].merge!({c => [e.id2name]})
					    end
					  end
					else
					 # pigeon_list[name][c].push(e)
=======
				    if pigeon_list.empty?
					    pigeon_list[name] = {c => [e.id2name]}
					  else
					    binding.pry
					    pigeon_list[name].merge!({c => [e.id2name]})
					  end
					else
>>>>>>> 5603fac04f3f3175ed80d3448536bf2be980ef37
					  pigeon_list[name].merge!({c => [e]})
					end
				end
			end
		end
	end
	
  
# 	pigeon_list.each do |pigeon_name, attribute|
# 		data[:color].each do |color, bleh|
# 				if bleh.include?(pigeon_name) && attribute[:color][0] != color.id2name
# 					attribute[:color].push(color.id2name)
# 				end
# 		end
# 	end

	pigeon_list
end