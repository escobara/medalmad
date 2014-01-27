class Admin::CountriesController < AdminController
  def index 
  	@countries = Country.all
  end

  def new
  	@country = Country.new
  end

  def create
    @country = Country.new(country_params)
    @country.save
    flash[:notice] = "Country successfully created"
    redirect_to admin_countries_path
  end

  def edit
  end

  def update
    @country.update(country_params)
  end
  
  def show
    @country = Country.find(params[:id])
  end

  def destroy
    @country.destroy
    redirect_to admin_countries_path  
  end

  private

 	def country_params
 		params.require(:country).permit(:name, :flag, :country_code)
 	end
end
