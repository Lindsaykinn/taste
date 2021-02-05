accepts_nested_attributes_for should be written out in the model as:
  def genres_attributes=(genres_attributes)
    genres_attributes.each do |genre_attributes| **possibly need |i, genre_attributes| so a hash within an ARRAY is returned versus a hash within a hash - we do not want that**c
    self.genres.build(genre_attributes)
  end

  To Do:

  -- add ratings to comments or remove ratings
  -- need to add option to add multiple categories to one recipe

