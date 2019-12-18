require 'directors_database'
require 'pp'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
pp nds 
result = {}
row_index = 0 
while row_index < nds.length do 
d_names = nds[row_index]
result[d_names[:name]] = gross_for_director(d_names)
row_index += 1
end
result 
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
gross = 0 
movie_index = 0 
while movie_index < director_data[:movies].length do
gross += director_data[:movies][movie_index][:worldwide_gross]
movie_index +=1 
end
gross
end








# hash_index = 0 
# while hash_index < director_data[:movies] do 
#   each_hash = director_data[hash_index]
# m_value_index = 0 
# while m_value_index < movies_value.length do 
# gross = 0 
# gross += each_hash[m_value_index][:worldwide_gross]
# m_value_index +=1 
# end
# each_hash +=1 
# end
# gross
# end




 #director_data : :movies=>[{:release_year=>1975, :studio=>"Universal", :title=>"Jaws", :worldwide_gross=>260000000}, ...studio=>"Buena Vista", :title=>"Lincoln", :worldwide_gross=>182207973}], :name=>"Stephen Spielberg"}









# d_data_index = 0
# while d_data_index < director_data[:movies][d_data_index].length do 
# movies_data = director_data[:movies]
# d_data_index += 1 
# end
# hash_index = 0 
# while hash_index < director_data[:movies].length do
#   gross += [:movies][hash_index][:worldwide_gross]
# hash_index += 1 
# end
# gross






 
 
 
 
 
