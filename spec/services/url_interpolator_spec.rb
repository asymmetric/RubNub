require 'rails_helper'

RSpec.describe URLInterpolator do
  it "substitutes placeholders with params" do
    url = 'http://example.com/%s'
    param = 'vim'

    result = URLInterpolator.call(url, param)
    
    expect(result).to eq('http://example.com/vim')
  end
end
