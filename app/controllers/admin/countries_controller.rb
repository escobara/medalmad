class Admin::CountriesController < AdminController
  
  def index 
  	@countries = Country.all
  end

  def new
  	@country = Country.new
  end

  def create
    @user = User.new(country_params)
    if @user.save
      redirect_to admin_countries_index
    else
      render 'new'
    end
  end

  def edit
  end

  private

 	def country_params
 		params.require(:country).permit(:name, :flag, :country_code)
 	end
end
