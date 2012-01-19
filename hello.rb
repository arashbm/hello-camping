require 'camping'

Camping.goes :Hello

module Hello::Controller
  class Index < R '/'
    def get
      render :hello
    end
  end
end

module Hello::Views
  def hello
    p "Hello, Camping!"
  end
end
