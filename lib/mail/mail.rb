require 'mail'

# Mail.deliver do
#   from     'lessons@exceldrive.com.au'
#   to       'jozza24@gmail.com'
#   subject  'Here is the image you wanted'
#   body     'Hello, it Works'
#   # add_file '/full/path/to/somefile.png'
# end

mail = Mail.new do
  from    'lessons@exceldrive.com'
  to      'jozza24@gmail.com'
  subject 'This is a test email'
  body    'Hello, it works!'
end

mail.delivery_method :sendmail

mail.deliver!


class MailSend

  def mail (purchase)
    puts hey
  end

end
