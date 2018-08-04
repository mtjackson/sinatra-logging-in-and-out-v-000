class Helpers
  def self.current_user(session)
    current_user = User.find_by(user_id: session["id"])
    current_user
  end

  def is_logged_in?(session)
    !!self.current_user.user_id
  end
end
