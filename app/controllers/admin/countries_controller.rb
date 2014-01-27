class Admin::CountriesController < AdminController
  
  def index 
  	@countries = Country.all
  end

  def new
  	@country = Country.new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      flash[:notice] = "Country Added!"
      redirect_to admin_countries_path
    else
      render action: "new"
    end
  end

  def edit
  end

  def update
    if @country.update_attributes(country_params)
      flash[:notice] = "Congrats! You've updated!"
      redirect_to admin_countries_path and return
    end
    render :action => 'edit'
  end
  
  def show
    @country = Country.find(params[:id])
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    flash[:notice] = "You've deleted that country"
    redirect_to admin_countries_url
  end

  private

 	def country_params
 		params.require(:country).permit(:name, :flag, :code)
 	end
end
