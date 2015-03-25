class Pet < ActiveRecord::Base
	has_many :selected_pets
	before_destroy :ensure_not_selected
	enum pet_type: [ :dog, :cat ]
	validates :name, presence: true
	validates :description, length: { in: 10..40 }

	def is_selected
		self.update(Pet_Status: "Selected")
	end

	def not_selected
		self.update(Pet_Status: "Available")
	end

	private

	def ensure_not_selected
		if selected_pets.empty?
			return true
		else
			errors.add(:base, 'Pet has already been selected')
			return false
		end
	end
end