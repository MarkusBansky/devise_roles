# DeviseRoles::Gem

Gem that helps you to organaize your users with roles and manipulate them.

And you are on its HOMEPAGE.

This gem is currently in development, so if you find any issues please report.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'devise_roles'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devise_roles

## Usage

To use this gem features, you should create table **Roles** and add roles to it.

### Set up Role and User models

To do so, run:

    $ rails g model Role name:string
    $ rails g migration addRoleIdToUser role:references
    $ rake db:migrate

Then in your app's models:

```ruby
class User < ActiveRecord::Base
  belongs_to :role
end
```
for **User** model and also
```ruby
class Role < ActiveRecord::Base
  has_many :users
end
```
for **Role** model.

### Set up seeds.rb with roles and add to db

```ruby
['registered', 'banned', 'moderator', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end
```
These are required, you can also add your custom roles on your own.
Then you must add them to *db*

    $ rake db:seed

And this is all for setting up.

Now you can go to learn methods for this *gem*.

## DeviseRoles methods

#### Enable only for Role

If you want to enable some page for exact Role only, use this method
```ruby
    available_for_user_role(user_role_name, user_redirect_path)
```
Here is some example how to use it
```ruby
def some_controller_method_name
  # Implement it at the top
  # In this example, current view would be available for admins only
  available_for_user_role('admin', root_path)

  # Some other code ...
  # That would be run if user is not **admin**
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/devise_roles.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
