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

Also you need to include it in your Application

In your **application.rb** add This
```ruby
    require 'encryption/encryption'
```
and inside Application block
```ruby
config.autoload_paths += %W(#{config.root}/lib)
```

## Usage

To use this gem features, you should create table **Roles** and add roles to it.

Generate User model if you haven't yet:

    $ rails generate devise User

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

## Devise Roles methods

#### Enable only for Role

If you want to enable some page for exact Role only, use this method
```ruby
    DeviseRoles.available_for_user_role(user_role_name, user_redirect_path)
```
Here is some example how to use it
```ruby
def some_controller_method_name
  # Implement it at the top
  # In this example, current view would be available for admins only
  DeviseRoles.available_for_user_role('admin', root_path)

  # Some other code ...
  # That would be run if user is not **admin**
end
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
