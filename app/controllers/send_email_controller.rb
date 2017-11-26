class SendEmailController < ApplicationController
    def show
        UserMailer.default :from => "info.prepngo@gmail.com"
        attachments['test.txt'] = File.read('test.txt')
        mail(:to => User.find(params[:user_id]).email, :subject => "Your shopping list")
        redirect_to '/lists/'+params[:list_id]
    end 
    def send_email_params
    	params.require(:send_email).permit(:user_id, :list_id)
    end
end
