module CommandSupport
  def fill_command_form
    fill_in 'Name', with: 'test'
    fill_in 'Url', with: 'http://example.com'
    fill_in 'Description', with: 'This is a test command'
  end

  def fill_all_except(param_name)
    fill_command_form

    fill_in param_name.capitalize, with: nil
  end
end

World(CommandSupport)
