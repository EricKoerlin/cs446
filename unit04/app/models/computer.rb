class Computer < ActiveRecord::Base
validates :brand, presence: true, length: { minimum: 1 }
validates :price, presence: true
end
