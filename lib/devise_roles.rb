require "devise_roles/version"
require 'rails/all'

module DeviseRoles
  require 'devise_roles/engine' if defined?(Rails)

  def self.user_is(user_role_name, current_user)
    return current_user.role.name == user_role_name
  end

  def self.user_not(user_role_name, current_user)
    return current_user.role.name != user_role_name
  end

  def self.add_role_to_user(role_name, user)
    role = Role.find_or_create({:name => role_name})
    user.role = role
  end

  def self.create_role(name)
    Role.create!({:name => name})
  end

  def self.remove_user(email)

  end

  def self.make_admin(user_email)

  end

  def self.remove_admin(user_email)

  end

end
