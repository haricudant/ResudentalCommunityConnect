require 'net/smtp'
require 'resolv-replace.rb'

class OrderItemObserver < ActiveRecord::Observer
    
    def after_update(record)
       
       puts "HI HOW ARE YOU"
        message = <<MESSAGE_END
                From: Private Person <manojitkannan@gmail.com>
                To: A Test User <manojkannan0@gmail.com>
                Subject: SMTP e-mail test
                This is a test e-mail message.
                
                <h1>Hii USER </H1>
                
MESSAGE_END
            smtps =  Net::SMTP.new('smtp.gmail.com',587)
           
            smtps.enable_starttls_auto if smtps.respond_to?(:enable_starttls_auto)
            smtps.debug_output = $stderr
            smtps.start('localhost','manojitkannan@gmail.com','htedqabnhxluoklh', :plain) do |smtp|
              smtp.send_message(message, 'manojitkannan@gmail.com', 'manojkannan0@gmail.com')
             smtp.finish
                     end
    end
end

