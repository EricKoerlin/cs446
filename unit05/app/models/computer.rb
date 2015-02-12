require_relative 'store'
class Computer < ActiveRecord::Base
  belongs_to :store
validates :brand, presence: true, length: { minimum: 1 }
validates :price, presence: true
validates :screen_size, numericality: {greater_than: 1}
  validates :cpu, numericality: true, inclusion: { in: [1,2,4,6,8]}
end
