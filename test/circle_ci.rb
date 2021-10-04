require './lib/xml_tree_viewer'
  
xml = XmlTreeViewer.helper()
XmlTreeViewer.generate( xml, :short )

puts xml