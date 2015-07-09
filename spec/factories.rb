FactoryGirl.define do

  factory(:user) do
    email('bob@msn.com')
    password('Password123')
    name('Bob')
  end

  factory(:bot) do
    name('SuperBot')
    description('very good bot')
  end
end
