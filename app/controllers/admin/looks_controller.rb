class Admin::LooksController < ApplicationController

	def index
		load_looks
	end	

	def show
		load_look
	end

	def new
		build_look
	end

	def create
		build_look
		save_look or render "new"
	end

	private

	def save_look
		if @look.save
			redirect_to admin_look_path(@look)
		end
	end

	def load_looks 
		@looks = look_scope.to_a
	end

	def load_look
		@look = look_scope.find(params[:id])
	end

	def build_look
		@look ||= look_scope.build
		@look.attributes = look_params
		@look.primary_image ||= Look::PrimaryImage.new
	end

	def look_params
		look_params = params[:look]
		look_params ? look_params.permit(:title, :body, :influencer, primary_image: [:attachment]) : {}
	end

	def look_scope
		Look.all
	end
end
