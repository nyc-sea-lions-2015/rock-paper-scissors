class Logic

  attr_reader :user1, :user2, :user_throw1, :user_throw2

  def initialize(user1, user2, user_throw1, user_throw2)
    @user1 = user1
    @user2 = user2
    @user_throw1 = user_throw1
    @user_throw2 = user_throw2
  end

  def run
    if (user_throw1 == "1" && user_throw2 == "3") || (user_throw1 == "3" && user_throw2 == "2") || (user_throw1 == "2" && user_throw2 == "1")
      user2
    elsif (user_throw1 == "3" && user_throw2 == "2") || (user_throw1 == "2" && user_throw2 == "1") || (user_throw1 == "1" && user_throw2 == "3")
      user1
    else
      nil
    end
  end

end