# UiFaces

This gem uses UIfaces.com ( https://www.uifaces.com/ ) to **fake user pictures** on your app. You would like to use real user images for your app. This gem might be right you need. All the images comes from the 'authorized' section from uifaces and all images are real Twitter users images or avatar that previously agreeded to share their images.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ui_faces'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ui_faces

## Usage
	
#####FIND A RANDOM USER
```ruby
link = UiFaces.face
puts link
=> https://s3.amazonaws.com/uifaces/faces/twitter/guinslym/128.jpg
```
#####FIND A SPECIFIC USER
```ruby
link = UiFaces.face(true, 'larrygerard')
puts link
=> https://s3.amazonaws.com/uifaces/faces/twitter/larrygerard/128.jpg
```

#####FIND A USER BY GENRE
```ruby
link = UiFaces.sex('woman')
woman = UiFaces.woman
man = UiFaces.man
```

#####RETRIEVE A HASH with different pictures size
```ruby
link = UiFaces.faces
puts link
=> {
:bigger=>"https://s3.amazonaws.com/uifaces/faces/twitter/guiiipontes/73.jpg", 
:normal=>"https://s3.amazonaws.com/uifaces/faces/twitter/guiiipontes/48.jpg", 
:epic=>"https://s3.amazonaws.com/uifaces/faces/twitter/guiiipontes/128.jpg", 
:mini=>"https://s3.amazonaws.com/uifaces/faces/twitter/guiiipontes/24.jpg"
}
```

#####RUBY ON RAILS(seed.rb)
```ruby
#I'm using the gem 'ffaker' for the name
10.times do 
	Employee.find_or_create(
	:name  => Faker::Name.name.to_s,
	:image => UiFaces.face
	)
end

#app/view/employees/show.html
<%= image_tag @employee.image, class: "yourclass" %>
```

[![guinslym](https://s3.amazonaws.com/uifaces/faces/twitter/guinslym/128.jpg)](http://uifaces.com/guinslym)


## Contributing

1. Star it :)
2. Fork it ( https://github.com/guinslym/ui_faces/fork )
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Test it
5. Commit your changes (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create a new Pull Request
