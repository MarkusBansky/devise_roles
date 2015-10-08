require "devise_roles/version"

module DeviseRoles
  def self.available_for_user_role(user_role_name, current_user, user_redirect_path)
    if current_user.role.name != user_role_name
      redirect_to user_redirect_path, alert: "You should be #{user_role_name} to view that page!"
    end
  end


end
