require './lib/library.rb'
describe Library do
  it 'can return a list of all books' do
    #Arrange
    library = Library.new
    #Act
    library.list_books
    #Assert
    expect(library.list_books).to match ([
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
    ])
  end

  it 'can add a new book' do
    #Arrange
    library = Library.new
    book = {title: 'James New Book', author: 'James', subject: 'James'}
    #Act
    library.add_book(book)
    #Assert
    expect(library.list_books).to include (book)
  end

  it 'can find a specific book' do
    #Arrange
    library = Library.new
    book_title = "POODR"
    #Act
    library.find_book(book_title)
    #Assert
    expect(library.find_book(book_title)).to match ({:author => "Sandi Metz", :subject => "OOP", :title => "POODR"})
  end

  it 'can delete a book' do
    #Arrange
    library = Library.new
    book_title = "POODR"
    #Act
    library.remove_book(book_title)
    #Assert
    expect(library.list_books).not_to include ({:author => "Sandi Metz", :subject => "OOP", :title => "POODR"})
  end

  it 'can return a list of all books by subject' do
    #Arrange
    library = Library.new
    subject = "Ruby"
    #Act
    library.all_books_by_subject(subject)
    #Assert
    expect(library.all_books_by_subject(subject)).to include ({title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'})
  end
end
