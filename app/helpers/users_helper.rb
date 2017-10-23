module UsersHelper
  def current_user
    User.find(session[@current_user.id])
  end
end
