class LooksController < ApplicationController
	def index
		load_looks
	end

	def show
		load_look
	end

	private

	def load_look
		@look = looks_scope.find(params[:id])
	end

	def load_looks
		@looks = looks_scope.all
	end

	def looks_scope
		Look
	end
end
