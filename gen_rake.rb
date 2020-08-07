
movie_array = [
  { :id => 1},
  { :id => 2},
  { :id => 3},
  { :id => 4},
  { :id => 5},
  { :id => 6},
  { :id => 7},
  { :id => 8},
]

file_path = "lib/tasks"

file_contents = <<~HEREDOC

  task({ :sample_data => :environment}) do
    movie_array = #{movie_array}
    Movie.insert_all!(movie_array)
  end
HEREDOC

File.write("#{file_path}/sample.rake", "#{file_contents}")
