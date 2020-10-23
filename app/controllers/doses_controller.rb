class DosesController < ApplicationController
# def index
  # @cocktails = Cocktail.all
# end

# def new
  # @cocktail = Cocktail.new
# end

# def show
# end

 def create
  @cocktail = Cocktail.find(params[:cocktail_id])
  @dose = Dose.new(dose_params)
 end

# def edit
# end

# def update
 # @cocktail.update(cocktail_params)
 # redirect_to cocktail_path(@cocktail)
#end

# def destroy
  # @cocktail.destroy
  # redirect_to cocktails_path
# end


end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
