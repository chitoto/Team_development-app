class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_delete_mail(agenda)
    @agenda = agenda
    @user_email = agenda.team.users.pluck(:email)
    mail to: @user_email, subject: "#{@agenda.title}を削除しました！"
  end
end
