

require "markd"
require "./template"

# TODO: Write documentation for `Md2html`
module Md2html
    VERSION = "0.1.0"

    # Getting command-line argument
    if ARGV.size < 1
        puts "No Markdown file specified as argument"
    else 
        md = ARGV[0]
        begin
            # reading input file
            text = File.open(md, encoding: "UTF-8") do |file|
            file.gets_to_end
            end
            # Conveting Md to html
            html = Markd.to_html(text) 

            # Wrapping raw html in template for styling parts of text
            puts Template.template(html)
        rescue
            puts "File not found: #{md}"
        end
    end
end
    
