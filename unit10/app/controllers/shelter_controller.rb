class ShelterController < ApplicationController
  include CurrentCart
  before_action only: [:create]


  def index
    @pets = Pet.all.order(pet_type: :asc)
    #set_cart
    #@pets = Pet.where(Pet_Status == "Available")
  end

end
