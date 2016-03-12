module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Ken's Restaurant"

    page_title.blank? ? base_title : "#{page_title} | #{base_title}"
  end

  def is_active(test_path)
    'active' if current_page?(test_path)
  end
end
