class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.order(:name)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @cocktaildoses = @cocktail.doses

  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to new_cocktail_path
    end
  end

  def new
    @cocktail = Cocktail.new
  end

private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
