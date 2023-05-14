class Book < ApplicationRecord

    before_save { |book| book.popularity = calculate_popularity }
end
