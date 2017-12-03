require 'colorize'
puts """
      Th3 M4d_Sc13nT15t is here to stay...

  We trust you have received teh usual lecture
      from the local System Administrator. 

 It usually boils down to these three things:
		#1) Respect the privacy of others.
		#2) Think before you type.
		#3) With great poewr comes great responsibility.""".white
puts """
          SMTP Enumeration Scanner
""".red
puts """
	 1st Try {set RPORT 25; 2nd RPORT 465}""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow

target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow

port = gets.chomp

exec("msfconsole -x 'use scanner/smtp/smtp_enum' -x 'setg RHOSTS #{target}'  -x 'setg RPORT #{port}' -x'set USER_FILE /home/parrot/Desktop/MyExploits/Users.txt' -x 'run'")

