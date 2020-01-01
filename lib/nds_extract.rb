$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data) 
  #loops through directors data to give the 
  #total gross from a director
i_movies = 0
total_gross = 0
  while i_movies < director_data[:movies].length do 
    total_gross +=  director_data[:movies][i_movies][:worldwide_gross]
    i_movies += 1
  end 
  total_gross
end


def directors_totals(nds)
   my_hash = {}
  i_directors = 0
  
  while i_directors < nds.length do 
    total_gross = 0
    i_movies = 0
    #if directors_name was an array and it saved each name as it looped
    #Would that make it searchable
    directors_name = nds[i_directors][:name]
  
    #make directors_name searchable
     total_gross += gross_for_director(nds[i_directors])
    my_hash[directors_name] = total_gross
    i_directors += 1 
    
  end

  my_hash
end
