class UserMailer < ActionMailer::Base
  default :from => "info.prepngo@gmail.com"
  def welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome to Prep 'n' Go")
  end
  
  def send_list()
    # @user = user
    attachments['test.txt'] = File.read('test.txt')
    mail(:to => "info.prepngo@gmail.com", :subject => "Your shopping list")
  end

end