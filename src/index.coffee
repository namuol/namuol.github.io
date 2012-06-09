html ->
  head ->
    meta charset:'utf-8'
    link rel:'stylesheet', href:'style.css'
    script src:'http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js'
    script src:'dudlpad.min.js'
    title 'var namuol = \'Louis Acresti\';'
  body ->
    img id:'bg', style:'display:none'
    canvas width:1280, height:720, ''

    div id:'content', ->
      a href:'http://github.com/namuol', 'github.com/namuol'
      text ' - '
      a href:'http://twitter.com/louroboros', '@louroboros'
      text ' - '
      a href:'mailto:louis.acresti@gmail.com', 'louis.acresti@gmail.com'
      br ''
      br ''

      table id:'code', ->
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
            td -> a href:'selectimg', 'selectimg'
            td -> text 'hide a "secret image" in text which is revealed when the text is selected'
          tr ->
            td -> a href:'banal-duck', 'banal duck'
            td ->
              a href:'http://www.gwern.net/DNB%20FAQ', 'dual n-back'
              text ' in the browser'
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
      table id:'music', ->
        tbody ->
          tr ->
            td ->
      span id:'tinymsg', 'explorers are rewarded'

     
    coffeescript ->
      ###           ###
      #               #
      #  ,d88b.d88b,  #
      #  888coder888  #
      #  `Y8888888Y'  #
      #    `Y888Y'    #
      #      `Y'      #
      #               #
      ###           ###
      start = new Date
      colors = [
        '#043227'
        '#097168'
        '#ffcc88'
        '#f4a32e'
        '#fa482e'
      ]
      s = undefined
      
      $.ajax
        type: 'get'
        url: 'http://lmn2.us.to:34243/socket.io/socket.io.js'
        dataType: 'script'
        success: ->
          console.log 'loaded'
          if io?
            s = io.connect('http://lmn2.us.to:34243')
        error: ->
          console.log 'errord'

      container = $('body')[0]
      canvas = $('canvas')[0]
      bg = $('#bg')[0]
      width = 1280
      height = 720
      pad = DUDLPAD.create(canvas)
      pad.lineWidth 4
      drawing = false
      mouseX = undefined
      mouseY = undefined
      color = 0
      mousePos = (e) ->
        [ e.clientX, e.clientY ]

      $(container).mousedown (e) ->
        return if e.which != 1

        color = Math.floor((Math.random()*(colors.length)))
        pos = mousePos(e)
        pos[0]/=1.5
        pos[1]/=1.5
        mouseX = pos[0]
        mouseY = pos[1]
        drawing = true
        pad.start [ mouseX, mouseY ], colors[color]

      $(container).mousemove (e) ->
        if drawing
          pos = mousePos(e)
          pos[0]/=1.5
          pos[1]/=1.5
          pad.draw [ mouseX, mouseY, pos[0], pos[1] ], colors[color]
          if s?
            if s.socket and s.socket.open
              s.emit 'draw', {coords: [mouseX,mouseY,pos[0],pos[1]], color: color}
          mouseX = pos[0]
          mouseY = pos[1]

      $(container).mouseup (e) ->
        return if e.which != 1
        pos = mousePos(e)
        pad.end [ pos[0], pos[1] ]
        drawing = false

      el = $('canvas')[0]
      ctx = el.getContext '2d'
      ###
      setInterval ->
        ctx.fillStyle = 'rgba(255,255,255,0.05)'
        ctx.fillRect 0,0, el.width, el.height
      , 500
      ###
      
      if s?
        s.on 'draw', (data) ->
          return if not data.color?
          return if data.color < 0
          return if data.color >= colors.length

          pad.start [data.coords[0],data.coords[1]], colors[data.color]
          pad.draw data.coords, colors[data.color]
          pad.end [data.coords[2],data.coords[3]], colors[data.color]

      bg.onload = ->
        if ((new Date) - start) > 1000
          $(bg).fadeIn(4000)
        else
          $(bg).fadeIn(250)
      bg.src = 'http://lmn2.us.to:34243/bg.jpg'
