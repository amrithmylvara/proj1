class PokemonsController < ApplicationController
	def capture
		poke = params[:id]
		@pokemon = Pokemon.find(poke)
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to "home#index"
	end

	def damage
		poke = params[:id]
		@pokemon = Pokemon.find(poke)
		@trainer = Trainer.find(@pokemon.trainer_id)
		@pokemon.health -= 10
		@pokemon.save
		if @pokemon.health <= 0 then 
			@pokemon.destroy
		end
		redirect_to @trainer
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new pokemon_params
		@pokemon.trainer_id = current_trainer.id
		@pokemon.level = 1
		@pokemon.health = 100
		if @pokemon.save
			@trainer = current_trainer
			redirect_to @trainer
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render 'new'
		end
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end