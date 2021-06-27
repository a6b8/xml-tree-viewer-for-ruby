def draw_xml( xml, mode, debug )
    def draw_hash_line_edge( l, type, offset )
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


    def draw_hash_line( name, mode, offset, key )
        lines = []
        if !mode.eql?( :silent )
            level = name[ 1, name.length ].to_i
            
            str = ''
            edge = draw_hash_line_edge( level, :edge, offset )
            str = "#{edge} #{key.name}"
            lines.push( str )

            case mode
            when :short
            when :detail
                empty = draw_hash_line_edge( level, :empty, offset )
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
    !mode.eql?( :silent ) ? lines += [ 'XML TREE VIEWER' ] : ''

    struct.element_children.each do | l1 |
        lines += draw_hash_line( 'l1', mode, offset, l1 )
        l1.element_children.each do | l2 |
            lines += draw_hash_line( 'l2', mode, offset, l2 )
            l2.element_children.each do | l3 |
                lines += draw_hash_line( 'l3', mode, offset, l3 )
                l3.element_children.each do | l4 |
                    lines += draw_hash_line( 'l4', mode, offset, l4 )
                    l4.element_children.each do | l5 |
                        lines += draw_hash_line( 'l5', mode, offset, l5 )
                        l5.element_children.each do | l6 |
                            lines += draw_hash_line( 'l6', mode, offset, l6 )
                            l6.element_children.each do | l7 |
                                lines += draw_hash_line( 'l7', mode, offset, l7 )
                                l7.element_children.each do | l8 |
                                    lines += draw_hash_line( 'l8', mode, offset, l8 )
                                    l8.element_children.each do | l9 |
                                        lines += draw_hash_line( 'l9', mode, offset, l9 )
                                        l9.element_children.each do | l10 |
                                            lines += draw_hash_line( 'l10', mode, offset, l10 )
                                            l10.element_children.each do | l11 |
                                                lines += draw_hash_line( 'l11', mode, offset, l11 )
                                                l11.element_children.each do | l12 |
                                                    lines += draw_hash_line( 'l12', mode, offset, l12 )
                                                    l12.element_children.each do | l13 |
                                                        lines += draw_hash_line( 'l13', mode, offset, l13 )
                                                        l13.element_children.each do | l14 |
                                                            lines += draw_hash_line( 'l14', mode, offset, l14 )
                                                            l14.element_children.each do | l15 |
                                                                lines += draw_hash_line( 'l15', mode, offset, l15 )
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


require 'nokogiri'
require 'active_support/core_ext/hash/indifferent_access'

str = <<-EOXML
<employees>
  <employee status="active">
    <fullname>Dean Martin</fullname>
  </employee>
  <employee status="inactive">
    <fullname>Jerry Lewis</fullname>
  </employee>
</employees>
EOXML

debug = true
draw_xml( str, :detail, debug)