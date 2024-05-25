class LoginPage < SitePrism::Page
  set_url ''
  element :login_button, :xpath, '//*[@id="main-content"]/section[1]/div/div/a'
  element :emailField, :id, "session_key"
  element :passwordField, :id, "session_password"
  element :loginButton, :xpath, '//*[@id="main-content"]/section[1]/div/div/form/div[2]/button'

  def userLogin(email, password)
    emailField.set (email)
    passwordField.set (password)
    loginButton.click
  end
end
