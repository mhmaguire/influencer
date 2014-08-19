class Admin::InfluencersController < ApplicationController

	def index
		load_influencers
	end

	def show
		load_influencer
	end

	def new
		build_influencer
	end

	def edit
		load_influencer
		build_influencer
	end

	def create
		build_influencer
		save_influencer or render "new"
	end

	def update
		load_influencer
		build_influencer
		save_influencer or render "edit"
	end

	private

	def inf_scope
		Influencer
	end	

	def build_influencer
		@influencer ||= inf_scope.new
		@influencer.attributes = influencer_params
		@influencer.headshot ||= Headshot.new
	end

	def load_influencers
		@influencers ||= inf_scope.all
	end

	def load_influencer
		@influencer ||= inf_scope.find(params[:id])
	end

	def save_influencer
		if @influencer.save
			redirect_to [:admin, @influencer]
		end
	end

	def influencer_params
		inf_params = params[:influencer]
		inf_params ? inf_params.permit(:name, headshot_attributes: [:attachment]) : {}
	end
end
