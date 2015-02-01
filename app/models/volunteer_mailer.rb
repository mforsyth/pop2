class VolunteerMailer < ActionMailer::Base
  FROM = '"Philly Orchards" <phil@phillyorchards.org>'

  def confirm(volunteer)
    @recipients = volunteer.email
    @from = FROM
    @subject = "Thanks for volunteering!"
    @sent_on = Time.now
    @body["volunteer"] = volunteer
  end

  def inform(volunteer)
    @recipients = ["andalucien@gmail.com", "phil@phillyorchards.org", "vitiello@design.upenn.edu"]
    @from = FROM
    @subject = "Fresh Volunteer!"
    @sent_on = Time.now
    @body["volunteer"] = volunteer
  end
end
