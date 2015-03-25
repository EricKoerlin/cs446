require 'test_helper'

class PetTest < ActiveSupport::TestCase
	test "empty pet" do
		pet = Pet.new
		assert !pet.save, 'Saved an empty pet'
	end
	
	test "no name pet" do
		pet = Pet.new(description: pets(:one).description, age: pets(:one).age)
		assert !pet.save, 'Saved a nameless pet'
	end
	
	test "long invalid description" do
		assert !Pet.new(description: pets(:two).description, age: pets(:two).age, name: pets(:two).name).valid?, 'description is too long'
	end
	
	test "long valid description" do
		assert Pet.new(description: pets(:three).description, age: pets(:three).age, name: pets(:three).name).valid?, 'description is not the proper length'
	end
	
		test "short valid description" do
		assert Pet.new(description: pets(:four).description, age: pets(:four).age, name: pets(:four).name).valid?, 'description is not the proper length'
	end
	
		test "short invalid description" do
		assert !Pet.new(description: pets(:five).description, age: pets(:five).age, name: pets(:five).name).valid?, 'description is too short'
	end
end
