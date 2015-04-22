class CarBrandsController < ApplicationController

	before_action :set_car_brand, only: [:edit, :update, :destroy]

	def index
		@car_brands = CarBrand.all
	end

	def new
		@car_brand = CarBrand.new
	end

	def create
		@car_brand = CarBrand.new car_brand_params
		if @car_brand.save
			redirect_to car_brands_url
		else
			render :new
		end	
	end

	def edit
		
	end

	def update
		if @car_brand.update car_brand_params
			redirect_to car_brands_url
		else
			render :edit
		end
	end

	def destroy
		@car_brand.destroy
		redirect_to car_brands_url
	end

	private

	def car_brand_params
		params[:car_brand].permit :name, :logo
	end

	def set_car_brand
		@car_brand = CarBrand.find params[:id]
	end
end
