# features/step_definitions/login.step.rb

Dado('que o usuario queira se logar') do
  Capybara.current_session.driver.browser.manage.window.resize_to(1920, 1080)
  @login_page = LoginPage.new
  @login_page.load
end

Quando('ele digitar as credenciais validas') do
  @login_page.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Então('deve acessa o site com sucesso') do
  @home_page = HomePage.new
  @home_page.checkLoginSuccessful
end
