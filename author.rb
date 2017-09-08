class Author

    @@all = []

    attr_accessor :books
    attr_reader :total_words

    def initialize(books)
        @books = []
        @total_words = 0
        @@all << self
    end

    def self.all()
        @@all
    end

    def write_book(title, word_count)
        new_book = Book.new(title, self, word_count)
        @total_words += word_count
    end

    def self.most_words()
        highest = 0
        winner = nil
        Author.all.each do |author_o|
            highest = author_o.total_words if author_o.total_words > highest
            winner = author_o if author_o.total_words > highest
        end
        winner
    end
end
