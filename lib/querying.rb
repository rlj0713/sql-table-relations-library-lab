def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  INNER Join series
  ON books.series_id = series.id
  WHERE series.id == 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY motto
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
  AS count
  FROM characters
  GROUP BY characters.species
  ORDER BY count DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series
  INNER JOIN authors
  ON series.author_id = authors.id
  INNER JOIN subgenres
  ON subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters  ## Go back and fix this**
  "SELECT series.title
  FROM books
  JOIN series
  ON series_id = series.id
  ORDER BY series.id
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.title)
  AS frequency
  FROM character_books
  JOIN characters
  ON character_id = characters.id
  JOIN books
  ON book_id = books.id
  GROUP BY characters.name
  ORDER BY frequency DESC, characters.name;"
end
