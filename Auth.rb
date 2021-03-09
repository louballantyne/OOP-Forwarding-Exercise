class Auth
  def authenticate(candidate_password, password)
    return true if candidate_password == password
    false
  end
end
