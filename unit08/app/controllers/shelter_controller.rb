class ShelterController < ApplicationController

  def index
    @pets = Pet.all.order(pet_type: :asc)
  end

end
