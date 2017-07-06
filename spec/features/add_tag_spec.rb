require 'rails_helper'

describe "add new Tag" do

  before(:each) do
    User.destroy_all
    Image.destroy_all
    @user = FactoryGirl.create(:user)
    login_as(@user, :scope=>:user)
  end

  it "add tag to image" do
    @image = FactoryGirl.create(:image, :user_id => @user.id)
    new_tag = FactoryGirl.create(:tag)
    @image.tags.push(new_tag)
    visit user_image_path(@user,@image)
    expect(page).to have_content 'cat'
  end

end
