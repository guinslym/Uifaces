require 'spec_helper'

describe UiFaces do
	content = UiFaces.face(false, 'random', 'bigger')

  it '::returns a link' do
    expect(content).to be_a String
  end
  it '::the link include "twitter"' do
  	expect(content.include?('twitter')).to eql( true)
  end
  it "::the image size should be by default 128" do
  	link = UiFaces.face(true, 'larrygerard')
    link = link.split("/")[-1].split(".")[0]
  	expect(link).to match("128")
  end
  it "::the image size in mini should eql 24" do
    link = UiFaces.face(true, 'larrygerard', 'mini')
    link = link.split("/")[-1].split(".")[0]
    expect(link).to match("24")
  end
  it ":: should returns a man images" do
    link = UiFaces::sex('male', 'epic')
    link = link.split("/")[-2]
    #puts link
    expect(UiFaces::MEN.include?link).to eql(true)
  end
  it ":: should returns a woman images" do
    link = UiFaces::sex('female', 'epic')
    link = link.split("/")[-2]
    #puts link
    expect(UiFaces::WOMEN.include?link).to eql(true)
  end
  it "::In case of SocketError take a random image" do

  end
  it "::In case of error 400 take a random image" do

  end

end