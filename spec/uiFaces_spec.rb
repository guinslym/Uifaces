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
  it "::should returns a man images" do
    link = UiFaces::sex('male', 'epic')
    link = link.split("/")[-2]
    #puts link
    expect(UiFaces::MEN.include?link).to eql(true)
  end
  it "::should returns a woman images" do
    link = UiFaces::sex('female', 'epic')
    link = link.split("/")[-2]
    #puts link
    expect(UiFaces::WOMEN.include?link).to eql(true)
  end
  it "::In case of SocketError take a random image" do
    #need to turn off the network connection to pass
    link = UiFaces.face(true, 'larrygerard')
    link = link.split("/")[-2]
    expect(UiFaces::USERNAME.include?link).to eql(true)
  end
  it "::In case of error 400 take a random image" do
    #need to simulate a 400 error
    link = UiFaces.face(true, 'larrygerard')
    link = link.split("/")[-2]
    expect(UiFaces::USERNAME.include?link).to eql(true)
  end
  it "::Expecting an Hash containing exactly this pattern" do
    link = UiFaces.faces(true, 'larrygerard')
    expect(link).to match(
      :bigger => an_instance_of(String),
      :normal => a_string_starting_with("h"),
      :epic => a_string_ending_with(".jpg"),
      :mini => an_instance_of(String)
      )
  end
  it "::User shouldn't be able to access private methods" do
    subject { UiFaces.local_random }
    it { is_expected.to be_secret }
  end

end