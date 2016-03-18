class PokemonController < ApplicationController

	def index
		@pokemons = Pokemon.all
	end

	def show
		@pokemon = Pokemon.find(params[:id])
	end 

	def new 
		@pokemon = Pokemon.new
	end

	def create 
		@pokemon = Pokemon.new
		if @pokemon.save
			@pokemon.name = :name 
			@pokemon.health = 100
			@pokemon.level = 1
			@pokemon.trainer_id = current_trainer.id
		end
		redirect_to trainer_path(current_trainer.id) 
	end

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		@id = @pokemon.trainer_id
		@pokemon.save
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(@id)
	end

	private
	def user_params
		params.require(:pokemon).permit(:name)
	end

end
