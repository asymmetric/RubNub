module NavigationHelpers
  def path_to(page_name)
    case page_name
    when 'home'
      root_path
    else
      send "#{page_name}_path"
    end
  end

  def action_on_resource(action, resource)
    actual = case action
             when "create"
               "new"
             else
               action
             end

    send "#{actual}_#{resource}_path"
  end

end

World(NavigationHelpers)
