class RecipeController < ApplicationController
  class CountriesController < ApplicationController

    def index
      @recipies = Recipe.all
    end

    def new
      @recipe = Recipe.new
    end

    def show
      recipe_finder
    end

    def edit
      recipe_finder
    end

    def update
      recipe_finder.update(recipe_params)
      redirect_to(countries_path)
    end

    def create
      Recipe.create(recipe_params)
      redirect_to(countries_path)
    end

    def delete
      recipe_finder.destroy
      redirect_to(countries_path)
    end

    private
    # def recipe_params
    #   params.require(:recipe).permit(:name, :flag, :size, :population, :language, :travel_advice)
    # end

    def recipe_finder
      @recipe = Recipe.find(params[:id])
    end

  end
end