class PokemonsController < ApplicationController
	def new
	end

	def create
		@potential_pokemon = Pokemon.new(
	      :name=> params[:name],
	      :health => 100, 
	      :level => 1,
	      :trainer => current_trainer)

	    if @potential_pokemon.save
	    	redirect_to trainer_path(:id => current_trainer.id)
	    else 
	    	redirect_to pokemons_new_path
	    	flash[:error] = @potential_pokemon.errors.full_messages.to_sentence
	    end

	end
end
