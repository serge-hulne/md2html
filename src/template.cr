

module Template
    VERSION = "0.1.0"
    extend self

    def template(html : String)
        
        style = <<-HTML
            <style>
            body {
              margin-left:15%;
              margin-right:15%;
            }
            pre {
                background-color:whitesmoke;
                width:100%;
                padding:10px;
                white-space: pre-wrap;       /* css-3 */
                white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */
                white-space: -pre-wrap;      /* Opera 4-6 */
                white-space: -o-pre-wrap;    /* Opera 7 */
                word-wrap: break-word;  
            }
            blockquote {
              background-color:whitesmoke;
              padding-left:10px;
              padding-right:10px;
              padding-top:1px;
              padding-bottom:1px;
              font-style:italic;
              font-size:small;
            }
            h1 {
              padding-top: 20px;
              padding-bottom: 15px;
              page-break-before: always;
            }
            h2 {
              padding-top: 20px;
              padding-bottom: 10px;
            }
          </style>
        HTML

      htmlCode = <<-HTML
          <!DOCTYPE html>
          <html lang="fr">
          <head>
              <meta charset="UTF-8">
              <meta http-equiv="X-UA-Compatible" content="IE=edge">
              <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <link rel="stylesheet" href="https://unpkg.com/purecss@2.1.0/build/pure-min.css" integrity="sha384-yHIFVG6ClnONEA5yB5DJXfW2/KC173DIQrYoZMEtBvGzmf0PKiGyNEqe9N6BNDBH" crossorigin="anonymous">
              <title>Document</title>
          </head>
          #{style}
          #{html}
          </body>
          </html>
        HTML

    return htmlCode
    end

end