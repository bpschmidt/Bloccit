class WelcomeController < ApplicationController
  def index
    # render html: "<h1>My super simple website</h1>".html_safe
    render "index.html.erb" 
  end

  def about
  end
end
