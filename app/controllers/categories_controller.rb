class CategoriesController < ApplicationController
	def show
		load_looks
	end

	private
	def load_category
		@category ||= Category.find(params[:id])
	end

	def load_looks
		@looks ||= load_category.looks
	end
end
