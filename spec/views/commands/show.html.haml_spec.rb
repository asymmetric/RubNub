require 'rails_helper'

RSpec.describe "commands/show", :type => :view do
  before(:each) do
    @command = assign(:command, Command.create!(
      :name => "Name",
      :url => "Url",
      :description => "MyText",
      :uses => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
