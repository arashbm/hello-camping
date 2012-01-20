require 'camping'

Camping.goes :Hello

module Hello::Controllers
  class Index < R '/'
    def get
      @time=Time.now
      day=@time.day
      @ordinalized_day= if (11..13).include? day
	"#{day}th"
      else
	case day % 10
	  when 1; "#{day}st"
          when 2; "#{day}nd"
          when 3; "#{day}rd"
          else    "#{day}th"
	end
      end

      render :hello
    end
  end
end

module Hello::Views
  def layout
    html do
      head do
	title { "Arash goes camping!" }
      end
      body { self << yield }
    end
  end
  def hello
    p "It's #{@time.strftime("%l %p")}, #{@time.strftime("%B")} the #{@ordinalized_day}, and Arash is camping!!"
  end
end
