html ->
  head ->
    title 'Lou\'s fantastic code toys & experiments'
  body ->
    h1 ->
      a href:'http://github.com/namuol', 'Lou'
      text '\'s fantastic code toys & experiments'
    
    h2 'javascript'
    ul ->
      li ->
        a href:'tracktime', 'tracktime'
        text ' - a simple tool to track the time you spend'
      li ->
        a href:'dudlpad', 'dudlpad'
        text ' - dependency-free library for drawing stuff on canvases'
      li ->
        a href:'earf-html5', 'earf'
        text ' - oldschool software-only terrain renderer'
      li ->
        a href:'http://fiddle.jshell.net/namuol/JsLC6/show/light/', 'show me everything'
        text ' - flickr API toy. the real star of the show is '
        a href:'http://masonry.desandro.com/', 'jquery masonry'

    h2 '(there are no other languages)'
