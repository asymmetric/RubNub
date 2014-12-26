require 'rails_helper'

RSpec.describe "commands/edit", :type => :view do
  before(:each) do
    @command = assign(:command, Command.create!(
      :name => "MyString",
      :url => "MyString",
      :description => "MyText",
      :uses => ""
    ))
  end

  it "renders the edit command form" do
    render

    assert_select "form[action=?][method=?]", command_path(@command), "post" do

      assert_select "input#command_name[name=?]", "command[name]"

      assert_select "input#command_url[name=?]", "command[url]"

      assert_select "textarea#command_description[name=?]", "command[description]"

      assert_select "input#command_uses[name=?]", "command[uses]"
    end
  end
end
