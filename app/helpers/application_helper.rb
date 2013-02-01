module ApplicationHelper
  
  # Returns full title on per-page basis
  
  # Method definition, available in all views
  def full_title(page_title)
    
    # Variable assignment
    base_title = "RoR Sample App"
    
    # Boolean test
    if page_title.empty?
      
      # Implicit return
      base_title
      
    else
      
      # String interpolation
      "#{base_title} | #{page_title}"
    end
  end
end
