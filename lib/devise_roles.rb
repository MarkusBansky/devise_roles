require "devise_roles/version"
require 'rails/all'

module DeviseRoles

  def self.user_is(user_role_name, current_user)
    return current_user.role.name == user_role_name
  end

  def self.user_not(user_role_name, current_user)
    return current_user.role.name != user_role_name
  end

end
