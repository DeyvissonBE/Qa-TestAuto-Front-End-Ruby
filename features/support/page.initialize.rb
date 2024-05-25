# C:/Users/Deyvi/Desktop/qatest/features/support/page.initialize.rb

# Corrigir a forma de carregar arquivos
Dir[File.join(File.dirname(__FILE__), 'C:/Users/Deyvi/Desktop/qatest/features/support/page.initialize.rb')].each { |file| require_relative file }

module Page
  def login
    @login ||= LoginPage.new
  end

  def home
    @home ||= HomePage.new
  end

  def recover
    @recover ||= RecoverPage.new
  end
end
