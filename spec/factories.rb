FactoryGirl.define do

  factory(:user) do
    username('test')
    email('test@test.com')
    password(123456)
    password_confirmation(123456)
  end

  factory(:image) do
    image_path_file_name("cat.jpg")
    image_path_content_type("image/jpeg")
    user_id(1)
  end

  factory(:tag) do
    name("cat")
  end

end
