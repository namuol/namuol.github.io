html ->
  head ->
    meta charset:'utf-8'
    link rel:'stylesheet', href:'style.css'
    title ''
  body ->
    table ->
      tbody ->
        tr ->
          td -> a href:'muniverse', 'μniverse'
          td ->
            text 'epic (tiny) 2D space-exploration game '
            a href:'http://muniverse-game.tumblr.com/', '(devlog)'
        tr ->
          td -> a href:'earf-html5', 'earf'
          td -> text 'oldschool software-only terrain renderer'
        tr ->
          td -> a href:'http://fiddle.jshell.net/namuol/JsLC6/show/trght/', 'show me everything'
          td ->
            text 'flickr API toy. the real star of the show is '
            a href:'http://masonry.desandro.com/', 'jquery masonry'
        tr ->
          td -> a href:'dudlpad', 'dudlpad'
          td ->
            text 'dependency-free library for doodling on a '
            span class:'code', '&lt;canvas&gt;'
        tr ->
          td -> a href:'tracktime', 'tracktime'
          td -> text 'a simple tool to track the time you spend'

    a href:'http://github.com/namuol', 'github.com/namuol'
    text ' - '
    a href:'http://twitter.com/louroboros', '@louroboros'
    text ' - '
    a href:'mailto:louis.acresti@gmail.com', 'louis.acresti@gmail.com'

