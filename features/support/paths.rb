module NavigationHelpers
  def path_to(page_name)
    case page_name
    when 'home'
      root_path
    else
      return send "#{page_name}_path"
    end
  end
end

World(NavigationHelpers)
