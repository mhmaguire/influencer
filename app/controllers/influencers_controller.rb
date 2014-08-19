class InfluencersController < ApplicationController
	def index 
		load_influencers
	end

	def show
		load_influencer
	end

	private

	def load_influencers
		@influencers ||= influencer_scope.includes(:headshot).alphabetize
	end

	def load_influencer
		@influencer ||= influencer_scope.includes(:looks).find(params[:id])
	end

	def influencer_scope
		Influencer.all
	end
end
