class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end

  def set_cocktail
    Cocktail.find(params[:id]) == nil ? @cocktail = Cocktail.find(params[:cocktail_id]) : @cocktail = Cocktail.find(params[:id])
    Dose.where(cocktail_id: params[:id]).empty? ? @doses = Dose.where(cocktail_id: params[:cocktail_id]) : @doses = Dose.where(cocktail_id: params[:id])
  end
end
