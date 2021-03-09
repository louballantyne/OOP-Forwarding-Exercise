class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
    @secret_authentication= Auth.new
  end

  def authorise?(candidate_password)
    @secret_authentication.authenticate(candidate_password, @password)
  end

  def profile(candidate_password)
    return unless authorise?(candidate_password)
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end
