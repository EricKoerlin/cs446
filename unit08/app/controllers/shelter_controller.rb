class ShelterController < ApplicationController

  def index
    @pets = Pet.all.order(pet_type: :asc)
    #@pets = Pet.where(Pet_Status: nil?)
  end

end
