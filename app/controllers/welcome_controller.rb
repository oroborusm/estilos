class WelcomeController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]
	#before_action :authenticate_user!, except: [:show, :index]

	def index
		@posts = Post.all
	end
end
