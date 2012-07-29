class CategoriesController < ApplicationController
	def index
		@category="hallo world"
	end

	def new
	  @category= Category.new
	end

	def show
	end

	def edit
	end

	def create
	end

	def update
	end

	def destroy
	end
end
