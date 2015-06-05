def log_in_with(email, password)
  User.create!(email:email, password: password, confirmed_at: 1.minute.ago)
  visit new_user_session_path
  fill_in 'Email', with: email
  fill_in 'user_password', with: password
  click_button('Log in')
end
