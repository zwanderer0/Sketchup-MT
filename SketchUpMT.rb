   

=begin

yea

=end


  # Create an entry in the SketchUp Extension list that loads a script called
  # tuioconn.rb.
require 'sketchup.rb'
require 'extensions.rb'
	 
	 
	 $sketchupmt_toolbar=UI::Toolbar.new "Multitouch"  #j9
	 
	
	 
	s1=UI::Command.new("NUIGroup Site") { UI.openURL("http://www.nuigroup.com/")}
	s1.small_icon="SketchUpMT/buttonset/nuiicon.png"
	s1.large_icon="SketchUpMT/buttonset/nuiiconlarge.png"
	s1.menu_text="NUIGroup"
	s1.tooltip="Go to the NUIgroup website"
	$sketchupmt_toolbar.add_item(s1)
	
	s2=UI::Command.new("Multitouch Navigation") { UI.openURL("##CHANGE ACTION HERE/#{email}")} #IMPORTANT J908
	s2.small_icon="SketchUpMT/buttonset/orbiting.png"
	s2.large_icon="SketchUpMT/buttonset/mysmustardiconlarge.png"
	s2.menu_text="Orbit and Pan"
	s2.tooltip="Gestures in lib"
	$sketchupmt_toolbar.add_item(s2)
	
	$smustard_toolbar.show



     sketchupmt_extension = SketchupExtension.new "TUIO Conn", "SketchUpMT/tuioconn.rb"
     sketchupmt_extension.version = '0.1'
     sketchupmt_extension.description = "Use Google SketchUp with touch input on Multitouch table"
     sketchupmt_extension.copyright = "NUIGroup Community, done as a part of GSoC 2009"
     Sketchup.register_extension sketchupmt_extension, true
