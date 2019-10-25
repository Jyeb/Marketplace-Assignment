module ApplicationHelper
  def page_title(page_title = '')
    site_name = "Sitename"
    if page_title.empty? 
      @site_name
    else
      page_title + " | " + site_name
    end
  end
end
