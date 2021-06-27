<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/Headline.svg" height="55px" name="headline" alt="# Headline">
</a>

Short Description Text 
<br>
<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/examples.svg" height="55px" name="examples" alt="Examples">
</a>
<br>
<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/table-of-contents.svg" height="55px" name="table-of-contents" alt="Table of Contents">
</a>
<br>
1. [Quickstart](#quickstart)<br>
2. [Parameters](#parameters)<br>
3. [Options](#options)<br>
4. [Contributing](#contributing)<br>
5. [Limitations](#limitations)<br>
6. [Credits](#credits)<br>
7. [License](#license)<br>
8. [Code of Conduct](#code-of-conduct)<br>
9. [Support my Work](#support-my-work)<br>

<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/quickstart.svg" height="55px" name="quickstart" alt="Quickstart">
</a>

```ruby

```
<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/local-path-builder-for-ruby/readme/headlines/setup.svg" height="55px" name="setup" alt="Setup">
</a>

Add this line to your application's Gemfile:

```ruby
gem 'test'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install test


On Rubygems: 
- Gem: https://rubygems.org/gems/test
- Profile: https://rubygems.org/profiles/a6b8

<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/methods.svg" height="55px" name="methods" alt="Methods">
</a>

### .example()
```ruby
    require 'local_path_builder'

    hash = Template.example( 
        headline, 
        console_mode,  
        options 
    )
```


**Input**
| **Type** | **Required** | **Description** | **Example** | **Description** |
|------:|:------|:------|:------|:------| 
| **headline** | ```String``` | Yes | "Test" | Define path structure |
| **console mode** | ```Symbol``` | Yes | ```:hash``` | Set test console output mode. Use ```:silent```, ```:hash```, ```:path``` or ```:both``` |
| **salt** | ```String``` | No | ```123``` | Use test salt to create unique filenames. |

**Return**<br>
Hash    
<br>
<br>
<br>
<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/options.svg" height="55px" name="options" alt="Options">
</a>
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
- Test
<br>
<br>
<br>

<a href="#table-of-contents">
<img src="https://raw.githubusercontent.com/a6b8/a6b8/main/docs/xml-tree-viewer-for-ruby/readme/headlines/credits.svg" height="55px" name="credits" alt="Credits">
</a>

- Test
<br>
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



# XmlTreeViewer

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/xml_tree_viewer`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'xml_tree_viewer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install xml_tree_viewer

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/xml_tree_viewer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/xml_tree_viewer/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the XmlTreeViewer project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/xml_tree_viewer/blob/master/CODE_OF_CONDUCT.md).
