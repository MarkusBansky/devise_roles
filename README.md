# DeviseRoles::Gem
[![Gem Version](https://badge.fury.io/rb/devise_roles.svg)](https://badge.fury.io/rb/devise_roles)
[![Build Status](https://travis-ci.org/MarkusBansky/devise_roles.svg?branch=master)](https://travis-ci.org/MarkusBansky/devise_roles)
[![Code Climate](https://codeclimate.com/github/MarkusBansky/devise_roles/badges/gpa.svg)](https://codeclimate.com/github/MarkusBansky/devise_roles)
[![Test Coverage](https://codeclimate.com/github/MarkusBansky/devise_roles/badges/coverage.svg)](https://codeclimate.com/github/MarkusBansky/devise_roles/coverage)

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

Also you need to require it in your Application.
You can create and initializer and add next line to it, or just write at top of your controllers
```ruby
require 'devise_roles'
```

## Pre set up

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

## DeviseRoles Usage

Here is a list of available methods.

#### user_is
Use this to check if user has the role you need.
Here is some example how to use it
```ruby
if DeviseRoles.user_is('admin', current_user)
  # Everything is ok!
end
```

#### user_not
Also there is an opposite method.
Here is one more example
```ruby
if DeviseRoles.user_not('admin', current_user)
  # User is NOT **admin** !!!
end
```

#### add_role_to_user
If you want quickly add specific role to user, like in the example
```ruby
DeviseRoles.add_role_to_user(Role.where(:name => 'banned')[0], current_user)
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
