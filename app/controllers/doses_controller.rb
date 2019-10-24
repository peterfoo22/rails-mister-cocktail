class DosesController < ApplicationController


  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.all
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @dose.description = params[:dose][:description]
    @dose.ingredient_id = params[:dose][:ingredient]
    @dose.cocktail = @cocktail

    if @dose.save

      redirect_to cocktail_path(@cocktail)

    else
      render 'new'
    end
  end

private
  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end


end
