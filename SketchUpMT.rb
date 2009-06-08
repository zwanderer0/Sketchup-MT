   




   # Create an entry in the SketchUp Extension list that loads a script called
     # tuioconn.rb.
     require 'sketchup.rb'
     require 'extensions.rb'
	 
	 
	 $sketchupmt_toolbar=UI::Toolbar.new "Multitouch"  #j9


     sketchupmt_extension = SketchupExtension.new "TUIO Conn", "SketchUpMT/tuioconn.rb"
     sketchupmt_extension.version = '0.1'
     sketchupmt_extension.description = "Use Google SketchUp with touch input on Multitouch table"
     sketchupmt_extension.copyright = "NUIGroup Community, done as a part of GSoC 2009"
     Sketchup.register_extension sketchupmt_extension, true
