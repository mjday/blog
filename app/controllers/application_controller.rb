class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

  def hello
    render html: "hello, world!"
  end
end


# What I need to do once the app is ready:

# change application.html back to it's original name
# fix the gem file with all updated gems, update one by one to see what breaks
