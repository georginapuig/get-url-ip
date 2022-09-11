require 'socket'

puts 'Type a web address (example: google.com)'

begin
  url = gets.chomp
  ip = IPSocket.getaddress(url)
rescue SocketError
  puts "#{url} is not a valid url. Try again."
else
  puts "Name: #{url}"
  puts "Address: #{ip}"
end
