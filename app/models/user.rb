class User < ApplicationRecord
    has_many :meanderings

    validates :username, uniqueness: true
end
