# frozen_string_literal: true
require 'nokogiri'

require_relative "xml_tree_viewer/version"


module XmlTreeViewer
  class Error < StandardError; end
  def self.helper()
    result = <<-EOXML
<employees>
  <employee status="active">
    <fullname>John Doe</fullname>
  </employee>
  <employee status="inactive">
    <fullname>Max Mustermann</fullname>
  </employee>
</employees>
EOXML
    return result
  end


  def self.generate( xml, mode )

    if validate( xml, mode )
      self.draw_xml( xml, mode )
    end
    
    return true
  end


  private


  def self.validate( xml, mode )
    messages = {
      xml: [],
      mode: []
    }

    if xml.class.to_s.eql?( 'String' )
      doc = Nokogiri::XML( xml )
      if doc.errors.length == 0 
        
      else
        messages[:xml].push( 'XML is not valid')
      end
    else
      messages[:xml].push( 'Is not Type "String"' )
    end


    if mode.class.to_s.eql?( 'Symbol' )
      if [ :silent, :short, :detail].include?( mode )

      else
        messages[:mode].push( "\":#{mode}\" is not authorized, please use :silent, :short or :detail instead.")
      end
    else
      messages[:mode].push( 'Is not Type "Symbol"')
    end

    valid = messages.keys.map { | key | messages[ key ].length }.sum == 0

    if !valid
      puts 'Following errors occured:'
      messages.keys.each do | key |
        if messages[ key ].length != 0
          puts "  #{key[ 0, 1 ].upcase}#{key[ 1, key.length ]}"
          messages[ key ].each do | m |
            puts "  - #{m}"
          end
        end
      end
    end

    return valid
  end


  def self.is_url?( str )
    begin
      uri = URI.parse str
      uri.kind_of? URI::HTTP
    rescue URI::InvalidURIError
        false
    end
  end


  def self.draw_xml( xml, mode )
    def self.draw_hash_line_edge( l, type, offset )
        str = ''

        for i in 1..( ( l - 1 ) * offset )
            str += ' '
        end

        case type
        when :edge
            if l > 1
                str += "┗"
                str += "━"
                str += " "
            else
                str += '   '
            end
        when :empty
            str += '   '
        end

        return str
    end


    def self.draw_hash_line( name, mode, offset, key )
        lines = []
        if !mode.eql?( :silent )
            level = name[ 1, name.length ].to_i
            
            str = ''
            edge = self.draw_hash_line_edge( level, :edge, offset )
            str = "#{edge} #{key.name}"
            lines.push( str )

            case mode
            when :short
            when :detail
                empty = self.draw_hash_line_edge( level, :empty, offset )
                str = "#{empty} doc.css('#{key.css_path}')"
                lines.push( str )
            end
        end

        return lines
    end
        

    struct = Nokogiri::XML( xml )
    types =  [ Hash, ActiveSupport::HashWithIndifferentAccess ]
    offset = 4
    
    lines = []
    !mode.eql?( :silent ) ? lines += [ 'TREE OVERVIEW' ] : ''

    struct.element_children.each do | l1 |
        lines += self.draw_hash_line( 'l1', mode, offset, l1 )
        l1.element_children.each do | l2 |
            lines += self.draw_hash_line( 'l2', mode, offset, l2 )
            l2.element_children.each do | l3 |
                lines += self.draw_hash_line( 'l3', mode, offset, l3 )
                l3.element_children.each do | l4 |
                    lines += self.draw_hash_line( 'l4', mode, offset, l4 )
                    l4.element_children.each do | l5 |
                        lines += self.draw_hash_line( 'l5', mode, offset, l5 )
                        l5.element_children.each do | l6 |
                            lines += self.draw_hash_line( 'l6', mode, offset, l6 )
                            l6.element_children.each do | l7 |
                                lines += self.draw_hash_line( 'l7', mode, offset, l7 )
                                l7.element_children.each do | l8 |
                                    lines += self.draw_hash_line( 'l8', mode, offset, l8 )
                                    l8.element_children.each do | l9 |
                                        lines += self.draw_hash_line( 'l9', mode, offset, l9 )
                                        l9.element_children.each do | l10 |
                                            lines += self.draw_hash_line( 'l10', mode, offset, l10 )
                                            l10.element_children.each do | l11 |
                                                lines += self.draw_hash_line( 'l11', mode, offset, l11 )
                                                l11.element_children.each do | l12 |
                                                    lines += self.draw_hash_line( 'l12', mode, offset, l12 )
                                                    l12.element_children.each do | l13 |
                                                        lines += self.draw_hash_line( 'l13', mode, offset, l13 )
                                                        l13.element_children.each do | l14 |
                                                            lines += self.draw_hash_line( 'l14', mode, offset, l14 )
                                                            l14.element_children.each do | l15 |
                                                                lines += self.draw_hash_line( 'l15', mode, offset, l15 )
                                                                '...'
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if !mode.eql?( :silent )
        lines.each { | line | puts( line ) }
    end

    return true
  end
  
end
