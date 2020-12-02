class TeamMailer < ApplicationMailer
  default from: 'from@example.com'

  def team_owner_mail(team)
    @team_name = team.name
    @owner_email = team.owner.email
    mail to: @owner_email, subject: "#{@team_name}のオーナーになりました！"
  end
end
