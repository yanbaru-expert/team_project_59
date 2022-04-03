module ApplicationHelper
  def max_width
    if controller_name == "texts" && action_name == "show"
      "mw-md"
    # Devise 導入後にコメントアウトを解除
    elsif devise_controller?
      "mw-sm"
    else
      "mw-xl"
    end
  end

  def movie_title
    if params[:genre] == "php"
      "PHP 動画"
    else
      "Ruby/Rails 動画"
    end
  end
end
