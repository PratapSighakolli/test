msgstr = <<END_OF_MESSAGE
From: abc@gmail.com
To: xyz@gmail.com
Subject: test message
Date: Sat, 23 Jun 2015 16:26:43 +0900

This is a test message.
<b> This is HTML message. </b>
<h1> This is headline. </h1>
END_OF_MESSAGE

require 'net/smtp'

smtp_settings = Net::SMTP.new('smtp.gmail.com', 587);

smtp_settings.enable_starttls

smtp_settings.start('smtp.gmail.com', 'abc@gmail.com', 'XXXXXX', :login) do |smtp|
  smtp.send_message msgstr, 'abc@gmail.com', 'xyz@gmail.com'
end