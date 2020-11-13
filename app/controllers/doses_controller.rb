class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = params[:cocktail_id]
    @dose.ingredient_id = params[:dose][:ingredient_id]
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @doses = Dose.where(cocktail_id: params[:cocktail_id])
      render '/cocktails/show'
    end
  end

  def destroy
    # if params[:id].nil?
      @dose = Dose.find(params[:id])
      @cocktail = Cocktail.find(params[:cocktail_id])
      @dose.destroy
      redirect_to cocktail_path(@cocktail)
    # else
    #   @cocktail = Cocktail.find(params[:id])
    #   @dose = Dose.find(params[:cocktail_id])
    #   @dose.destroy
    #   redirect_to cocktail_path(@cocktail)
    # end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
