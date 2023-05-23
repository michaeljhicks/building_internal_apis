class Author < ApplicationRecord
    # model validations
    validates :first_name, :last_name, presence: true
end
