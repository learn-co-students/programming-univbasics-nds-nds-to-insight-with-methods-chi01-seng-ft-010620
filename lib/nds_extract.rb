$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def gross_for_director(director_data)
  gross_for_director = 0 
  movies = director_data[:movies]
  index = 0 
  while index < movies.length do
    gross_for_director += movies[index][:worldwide_gross]
  index += 1 
  end
  gross_for_director
end


def directors_totals(nds)
  result = {}
  row_index = 0 
  while row_index < nds.length do
    director_name = nds[row_index][:name]
    result[director_name] = gross_for_director(nds[row_index])
    row_index += 1 
  end
  result
end
