class Email

  def initialize(subject, headers)
    @subject=subject
    @date=headers[:date]
    @from=headers[:from]
  end

   def subject
     @subject
   end
   
    def date
    @date
   end
   
   def from
    @from
   end

end

class Mailbox

	attr_reader :emails, :name

  def initialize(emails)
    @emails = emails
  end
  
end

class MailboxTextFormatter

end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)

puts formatter.format
