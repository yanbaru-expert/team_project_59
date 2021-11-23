module ApplicationHelper
  def max_width
    if controller_name == "texts" && action_name == "show"
      "mw-md"
    # Devise 導入後にコメントアウトを解除
    # elsif devise_controller?
    #  "mw-sm"
    else
      "mw-xl"
    end
  end
end
