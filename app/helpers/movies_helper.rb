module MoviesHelper
  
  def formatted_date(date)
    date.strftime("%b %d, %Y")
  end
  
  def query_title(title)
    "%#{title}%"
  end
    
  def query_director(director)
    "%#{director}%"
  end

  def query_range_runtime(statement)
    case statement
    when "Any"
      [0, 1000]
    when "Under 90 minutes"
      [0, 89]
    when "Between 90 and 120 minutes"
      [90, 120]
    when "Between 120 and 150 minutes"
      [121, 150]
    when "Over 150 minutes"
      [151, 500]
    end
  end

end
