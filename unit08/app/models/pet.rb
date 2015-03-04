class Pet < ActiveRecord::Base
	enum pet_type: [ :dog, :cat ]
	validates :name, presence: true
	validates :description, length: { in: 10..40 }
end