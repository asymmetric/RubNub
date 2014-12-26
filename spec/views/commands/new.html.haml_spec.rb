require 'rails_helper'

RSpec.describe "commands/new", :type => :view do
  before(:each) do
    assign(:command, Command.new(
      :name => "MyString",
      :url => "MyString",
      :description => "MyText",
      :uses => ""
    ))
  end

  it "renders new command form" do
    render

    assert_select "form[action=?][method=?]", commands_path, "post" do

      assert_select "input#command_name[name=?]", "command[name]"

      assert_select "input#command_url[name=?]", "command[url]"

      assert_select "textarea#command_description[name=?]", "command[description]"

      assert_select "input#command_uses[name=?]", "command[uses]"
    end
  end
end
