class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      flash[:alert] = "Your cocktail is not valid: it must have a unique name and a picture!"
      redirect_to :back
    end
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end
end


