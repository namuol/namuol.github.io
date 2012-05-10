html ->
  head ->
    meta charset:'utf-8'
    link rel:'stylesheet', href:'style.css'
    script src:'http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js'
    script src:'dudlpad.min.js'
    script src:'http://lmn2.us.to:34243/socket.io/socket.io.js'
    title 'var namuol = \'Louis Acresti\';'
  body ->
    div id:'content', ->
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
     
    coffeescript ->
      ###
      #               #
      #  ,d88b.d88b,  #
      #  888coder888  #
      #  `Y8888888Y'  #
      #    `Y888Y'    #
      #      `Y'      #
      #               #
      ###

      s = io.connect('http://lmn2.us.to:34243')
      container = $('body')[0]
      width = 1920
      height = 1080
      pad = DUDLPAD.create(container, width, height)
      drawing = false
      mouseX = undefined
      mouseY = undefined
      mousePos = (e) ->
        [ e.clientX, e.clientY ]

      $(container).mousedown (e) ->
        return if e.which != 1
        pos = mousePos(e)
        mouseX = pos[0]
        mouseY = pos[1]
        drawing = true
        pad.start [ mouseX, mouseY ]

      $(container).mousemove (e) ->
        if drawing
          pos = mousePos(e)
          pad.draw [ mouseX, mouseY, pos[0], pos[1] ]
          if s.socket and s.socket.open
            s.emit 'draw', {coords: [mouseX,mouseY,pos[0],pos[1]]}
          mouseX = pos[0]
          mouseY = pos[1]

      $(container).mouseup (e) ->
        return if e.which != 1
        pos = mousePos(e)
        pad.end [ pos[0], pos[1] ]
        drawing = false

      el = $('canvas')[0]
      ctx = el.getContext '2d'
      setInterval ->
        ctx.fillStyle = 'rgba(255,255,255,0.05)'
        ctx.fillRect 0,0, el.width, el.height
      , 500

      s.on 'draw', (data) ->
        pad.start [data.coords[0],data.coords[1]]
        pad.draw data.coords
        pad.start [data.coords[2],data.coords[3]]


