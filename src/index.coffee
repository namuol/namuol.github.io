html ->
  head ->
    meta charset:'utf-8'
    link rel:'stylesheet', href:'style.css'
    title 'Lou\'s fantastic code toys & experiments'
  body ->
    h1 ->
      a href:'http://github.com/namuol', 'Lou'
      text '\'s fantastic code toys & experiments'
    ul ->
      li ->
        a href:'muniverse', 'μniverse'
        text ' - epic (tiny) 2D space-exploration game '
        a href:'http://muniverse-game.tumblr.com/', '(devlog)'
      li ->
        a href:'earf-html5', 'earf'
        text ' - oldschool software-only terrain renderer'
      li ->
        a href:'http://fiddle.jshell.net/namuol/JsLC6/show/light/', 'show me everything'
        text ' - flickr API toy. the real star of the show is '
        a href:'http://masonry.desandro.com/', 'jquery masonry'
      li ->
        a href:'dudlpad', 'dudlpad'
        text ' - dependency-free library for drawing stuff on canvases'
      li ->
        a href:'tracktime', 'tracktime'
        text ' - a simple tool to track the time you spend'
