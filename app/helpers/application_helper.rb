module ApplicationHelper

  def stylesheet_if_exists(stylesheet)
    stylesheet_path = File.join(Rails.public_path, "stylesheets", 
      "#{stylesheet}.css")
    if File.exist?(stylesheet_path)
      stylesheet_link_tag stylesheet
    end
  end
  
end
