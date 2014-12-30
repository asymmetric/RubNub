require 'rails_helper'

RSpec.describe KernelController, type: :controller do
  describe "GET man" do
    it "assigns the command to @command" do
      command = FactoryGirl.create(:command)
      get :man, { name: command.name}

      expect(assigns(:command)).to eq(command)
    end
  end

  describe "POST parse" do
    it "redirects to the parsed command's URL" do
      command_url = 'http://example.com/%s'
      param = 'vim'
      command = FactoryGirl.create(:command, url: command_url)
      query = "#{command.name} #{param}"

      post :parse, { query: query }

      expect(response).to redirect_to(command_url.sub("%s", param))
    end
  end
end
