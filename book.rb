class Book

    attr_accessor :author
    attr_reader :title, :word_count


    @@books = []

    def initialize(title, author, word_count)
        @title = title
        @author = author
        @word_count = word_count
        author.books << self #initializes a book into an author object.
        @@books << self
    end

    def self.all() #class getter for @@books
        @@books
    end

end
