require 'spec_helper'

describe UiFaces do
  it 'return a link' do
    content = UiFaces('random', 'bigger', false)
    expect(content).to be_a String
  end
end