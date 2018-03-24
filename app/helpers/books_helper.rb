module BooksHelper
    def bookfinder_url(author, title)
        "https://www.bookfinder.com/?author=#{author}&title=#{title}"
    end
end
