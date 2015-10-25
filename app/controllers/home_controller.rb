class HomeController < ApplicationController
	def index
    @clubs = Club.all
  end
end
