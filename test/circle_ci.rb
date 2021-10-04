require './lib/xml_tree_viewer'
  
xml = XmlTreeViewer.helper()
XmlTreeViewer.generate( xml, :short )

if xml.match( /Max Mustermann/ ).length != 0
    puts "Test passed."
    exit 0
else
    puts "Test not passed."
    exit 1
end