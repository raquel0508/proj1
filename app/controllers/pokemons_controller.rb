class PokemonsController < ApplicationController

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
		@pokemon = Pokemon.new(user_params)
		if @pokemon.save
			@pokemon.health = 100
			@pokemon.level = 1
			@pokemon.trainer_id = current_trainer.id
			@pokemon.save
			redirect_to trainer_path(current_trainer.id)
		else 
			redirect_to pokemons_new_path
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
		 
	end

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@id = @pokemon.trainer_id
		if @pokemon.health == nil
			@pokemon.destroy
		else 
			@pokemon.health -= 10
			@pokemon.save
			if @pokemon.health <= 0
				@pokemon.destroy
			end
		end
		redirect_to trainer_path(@id)
	end

	private
	def user_params
		params.require(:pokemon).permit(:name)
	end

end
