require 'rails_helper'

RSpec.describe QueryParser do
  it "parses a query into a command and a param" do
    query = "j tor"
    command, param = QueryParser.call(query)

    expect([command, param]).to eq(['j', 'tor'])
  end

  it "raises an exception if the param has not been provided" do
    query = "j "
    expect {
      QueryParser.call(query)
    }.to raise_error(MissingParameterError)
  end
end
