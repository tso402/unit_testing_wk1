class Library # Test to see this class exists
  attr_reader :books

  def initialize # Test to see that books array has these values after being created
    @books = [
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
    ]
  end

  =begin
  Arrange
  Need to create an instance of Library
  Act
  Create an instance of Library (Same as arrange so maybe this is a bad test)
  Assert
  Check that books array has these values after being created
  =end

  def list_books # Test that an array is returned containing the starting books
    books
  end

  =begin
  Arrange
  Need to create an instance of the Library
  Act
  Call the list_books method on the Library instance
  Assert
  Check that initial books array is an array of hashes with values of inital books
  =end

  def add_book(book) # Test that the 'book' has been added to the books array
    books.push(book)
  end

  =begin
  Arrange
  Need to create an instance of a Library
  Need to create a new book as a Hash
  Act
  Pass the new book hash to the add_book method on the Library instance
  Assert
  Check that the new book hash is included in the books array of the library instance
  =end

  def find_book(title) # Test that the requested book is returned
    books.select{ |book| book[:title] == title }.first
  end

  =begin
  Arrange
  Need to create an instance of a Library
  Set the book title
  Act
  Pass the book title to the find book method of the library instance
  Assert
  Check that the returned hash contains the supplied title
  =end

  def remove_book(title) # Test that the removed title is not included in the books array
    books.delete_if{ |book| book[:title] == title }
  end

  =begin
  Arrange
  Need to create an instance of a Library
  Set the book title
  Act
  Pass the book title to the remove_book method of the library instance
  Assert
  Check that the book title can not be found in the books array
  =end

  def all_books_by_subject(subject) # Test that returned values have subject 'subject'
    books.select{ |book| book[:subject] == subject }
  end

  =begin
  Arrange
  Need to create an instance of the Library
  Set a book subject
  Act
  Pass the book subject to the all_books_by_subject method of the Library instance
  Assert
  Check that returned Hashs contain only the stated subject
  =end
  
end
