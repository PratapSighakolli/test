msgstr = <<END_OF_MESSAGE
From: asikakolli@nisum.com
To: asikakolli@osius.com
Subject: test message
Date: Sat, 23 Jun 2015 16:26:43 +0900

This is a test message.
<b> This is HTML message. </b>
<h1> This is headline. </h1>
END_OF_MESSAGE

require 'net/smtp'

smtp_settings = Net::SMTP.new('smtp.gmail.com', 587);

smtp_settings.enable_starttls

smtp_settings.start('smtp.gmail.com', 'asikakolli@nisum.com', 'As$li#2017', :login) do |smtp|
  smtp.send_message msgstr, 'asikakolli@nisum.com', 'asikakolli@osius.com'
end