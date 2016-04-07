class VisitorsController < ApplicationController

  def new
    Rails.logger.debug 'DEBUG: entering new method'
    @owner = Owner.new
    Rails.logger.debug 'DEBUG: Owner name is ' + @owner.name
    Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'will appear in bold blue'
    

    flash[:notice] = 'Welcome!'    
    # for dumping the debug to the view in development
    if Rails.env.development?
      @debug = 'DEBUG: entering new method'
      @debug = @debug + "\n"+'DEBUG: Owner name is ' + @owner.name
      flash[:notice] = "#{flash[:notice]} - DEVELOPMENT"
    end

    flash[:alert] = 'My birthday is soon.'
  end

end