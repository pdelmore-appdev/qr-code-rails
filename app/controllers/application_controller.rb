class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "my_templates/homepage.html.erb" })
  end

def index


render template: "my_templates/index"
end


end
