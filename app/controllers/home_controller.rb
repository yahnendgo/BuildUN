class HomeController < ApplicationController
  def index

  end

  def learn
  	@skip_nav = true
  end

  def whyun
  	@skip_nav = true
  end  

  def build
  	@skip_nav = true
  end

  def inspiration
  	@skip_nav = true
  end
end
