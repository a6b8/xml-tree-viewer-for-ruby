<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/Headline.svg" height="55px" name="XML Tree Viewer" alt="# Xml Tree Viewer">
</a>

A .xml string will do up to a easy readable tree strcuture for terminal output.

<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/examples.svg" height="55px" name="examples" alt="Examples">
</a>


### Detail
**Code**
```ruby
    require 'xml_tree_viewer'
    xml = XmlTreeViewer.helper()
    XmlTreeViewer.generate( xml, :detail )
```
**Output**
```txt
TREE OVERVIEW
    employees
    doc.css('employees')
    ┗━  employee
        doc.css('employees > employee:nth-of-type(1)')
        ┗━  fullname
            doc.css('employees > employee:nth-of-type(1) > fullname')
    ┗━  employee
        doc.css('employees > employee:nth-of-type(2)')
        ┗━  fullname
            doc.css('employees > employee:nth-of-type(2) > fullname')
```


### Short 
**Code**
```ruby
    require 'xml_tree_viewer'
    xml = XmlTreeViewer.helper()
    XmlTreeViewer.generate( xml, :short )
```

**Output**
```txt
TREE OVERVIEW
    employees
    ┗━  employee
        ┗━  fullname
    ┗━  employee
        ┗━  fullname
```
<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/table-of-contents.svg" height="55px" name="table-of-contents" alt="Table of Contents">
</a>
<br>

1. [Quickstart](#quickstart)<br>
2. [Parameters](#parameters)<br>
3. [Contributing](#contributing)<br>
4. [Limitations](#limitations)<br>
5. [Credits](#credits)<br>
6. [License](#license)<br>
7. [Code of Conduct](#code-of-conduct)<br>
8. [Support my Work](#support-my-work)<br>

<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/quickstart.svg" height="55px" name="quickstart" alt="Quickstart">
</a>

```ruby
require '../lib/xml_tree_viewer'

xml = XmlTreeViewer.helper()
XmlTreeViewer.generate( xml, :detail )
```
<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/local-path-builder-for-ruby/readme/headlines/setup.svg" height="55px" name="setup" alt="Setup">
</a>

Add this line to your application's Gemfile:

```ruby
gem 'xml_tree_viewer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install xml_tree_viewer


On Rubygems: 
- Gem: https://rubygems.org/gems/xml_tree_viewer
- Profile: https://rubygems.org/profiles/a6b8

<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/methods.svg" height="55px" name="methods" alt="Methods">
</a>

### .helper()
Output a sample xml string
```ruby
    xml = XmlTreeViewer.helper()
```

### .generate()
Generate xml tree from string input
```ruby
    XmlTreeViewer.generate( 
        xml, 
        mode 
    )
```


**Input**
| **Type** | **Required** | **Description** | **Example** | **Description** |
|------:|:------|:------|:------|:------| 
| **xml** | ```String``` | Yes | "Test" | Define path structure |
| **mode** | ```Symbol``` | Yes | ```:detail``` | Set console mode. Use ```:detail```, ```:short``` or ```:silent``` |

**Return**<br>
Boolean
  
<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/contributing.svg" height="55px" name="contributing" alt="Contributing">
</a>

Bug reports and pull requests are welcome on GitHub at https://github.com/a6b8/xml-tree-viewer-for-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/a6b8/xml-tree-viewer-for-ruby/blob/master/CODE_OF_CONDUCT.md).
<br>
<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/limitations.svg" height="55px" name="limitations" alt="Limitations">
</a>
- Tested for Rss and Atom Feeds.
<br>
<br>

<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/credits.svg" height="55px" name="credits" alt="Credits">
</a>

This gem depend on following gems:

- nokogiri<br>
https://rubygems.org/gems/nokogiri

- active_support<br>
https://rubygems.org/gems/activesupport

<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/license.svg" height="55px" name="license" alt="License">
</a>

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
<br>
<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/code-of-conduct.svg" height="55px" name="code-of-conduct" alt="Code of Conduct">
</a>
    
Everyone interacting in the xml-tree-viewer-for-ruby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/a6b8/xml-tree-viewer-for-ruby/blob/master/CODE_OF_CONDUCT.md).
<br>
<br>
<br>
<a href="#table-of-contents">
<img href="#table-of-contents" src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/support-my-work.svg" height="55px" name="support-my-work" alt="Support my Work">
</a>
    
Donate by [https://www.paypal.com](https://www.paypal.com/donate?hosted_button_id=XKYLQ9FBGC4RG)