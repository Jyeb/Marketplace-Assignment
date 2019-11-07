module ApplicationHelper
  def page_title(page_title = '')
    site_name = "Retailhive"
    if page_title.empty? 
      @site_name
    else
      page_title + " | " + site_name
    end
  end

  def category_helper(product)
    Category.find_by(id: product.category_ids).name
  end
end

