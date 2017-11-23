class UserMailer < ActionMailer::Base
  default :from => "info.prepngo@gmail.com"
  # include :User
  def welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome to Prep 'n' Go")
  end
  
  def send_list(list)
    @list = list
    attachments['test.txt'] = File.read('test.txt')
    mail(:to => User.find(ListUser.find_by(:list_id => @list.id).user_id).email, :subject => "Your shopping list")
  end
  
end