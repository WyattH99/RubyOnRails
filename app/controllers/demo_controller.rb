class DemoController < ApplicationController
  
  layout false

  def index
    # render('hello')
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]

    # redirect_to(:controller => 'demo', :action => 'index')

  end

  def about
    render('about_us')
  end

  def contact
    if ['us', 'ca'].include?(params[:country])
      @phone = '(US) CA-####'
    elsif params[:country] == 'uk'
      @phone = '(UK) ###-####'
    else
      @phone = '(GLO) BAL-####'
    end
    render('contact_us')
  end

end
