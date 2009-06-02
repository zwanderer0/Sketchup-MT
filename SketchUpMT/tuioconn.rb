$pf = Sketchup.find_support_file("Plugins")


def start
  $out = File.open(File.join($pf, "tuio.out"), "w")
  SKSocket.connect("localhost", 3000)
  SKSocket.add_socket_listener do |s|
    $out.print "#{Time.now.to_i}: "
    $out.puts s
    $out.flush
    if s == "Connection established"
    end
  end
end

def stop
  SKSocket.disconnect
  $out.flush
  $out.close
  $out = nil
end
