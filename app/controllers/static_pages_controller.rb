class StaticPagesController < ApplicationController
  def index
  	if signed_in?
      redirect_to dashboard_user_path(current_user)
    else
      @articles = Article.all
    end
  end

  def presentations
  end
  
  def labs
  end
  
  def contact
  end
  
  #============================
  
  def jarvis
    render "products/jarvis"
  end
  
  def cerebro
    render "products/cerebro"
  end
  
  #============================
  
  def about
  end
  
  def careers
  end
  
  def security
  end
  
  def testimonials
  end
  
  def design
  end
end