class InfluencersController < ApplicationController
	def index 
		load_influencers
	end

	def show
		load_influencer
	end

	private

	def load_influencers
		@influencers ||= influencer_scope.all
	end

	def load_influencer
		@influencer ||= influencer_scope.find(params[:id])
	end

	def influencer_scope
		Influencer
	end
end
