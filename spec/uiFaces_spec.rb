require 'spec_helper'

describe UiFaces do
	content = UiFaces.face(false, 'random', 'bigger')

  it '::returns a link' do
    expect(content).to be_a String
  end
  it '::the link include "twitter"' do
  	expect(content.include?('twitter')).to eq( true)
  end
  it "::the image size should be by default 128" do
  	link = UiFaces.face(true, 'larrygerard', 'unknow_format')
  	expect(link.include?("128")).to eq(true)
  end

end