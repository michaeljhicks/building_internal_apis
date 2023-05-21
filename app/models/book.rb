class Book < ApplicationRecord
  # model validations
  validates :title, :genre, :summary, :popularity, presence: true
  validates :number_sold, presence: true, numericality: true

  # model relationships
  belongs_to :author

  # call_back for v2 API adding popularity to DB
  before_save { |book| book.popularity = calculate_popularity }

  private 
  
  def calculate_popularity
    if number_sold > 5
      'high'
    else 
      'low'
    end
  end
end
