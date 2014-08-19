class LooksController < ApplicationController
	def index
		load_looks
	end

	def show
		load_look
	end

	private

	def load_look
		@look = looks_scope.includes(:primary_image, product_groups: {products: :image}).find(params[:id])
	end

	def load_looks
		@looks = looks_scope.to_a
	end

	def looks_scope
		Look.all
	end
end
