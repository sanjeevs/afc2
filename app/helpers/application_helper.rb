module ApplicationHelper
  def full_title(page_title)
    base_title = "AFC"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def sortable(column_name, title=nil)
   title ||= column_name.titleize
   direction = column_name == sort_column && sort_direction == "asc" ? "desc" : "asc"
   link_to title, sort: column_name, direction: direction
  end

end
