class PokemonController < ApplicationController
	def capture
		@pokemons = Pokemon.all 
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemons = Pokemon.all 
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health.to_i - 10
		@pokemon.save
		if @pokemon.health.to_i <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(:id => @pokemon.trainer.id)
	end
end
