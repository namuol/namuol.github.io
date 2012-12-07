html ->
  head ->
    meta charset:'utf-8'
    ###
    meta
      name:'viewport'
      content:'''width=device-width; 
              initial-scale=1;
              maximum-scale=1;
              minimum-scale=1; 
              user-scalable=no;'''
    ###
    link rel:'stylesheet', href:'style.css'
    script src:'http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js'
    script src:'dudlpad.min.js'
    link rel:'stylesheet', href:'bootstrap/css/bootstrap.css'
    link rel:'stylesheet', href:'bootstrap/css/bootstrap-responsive.css'
    title 'Buy me a Beer'
    text """
      <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-33247419-1']);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

      </script>
    """

  body class:'beer', ->
    div id:'content', ->
      a href:'/', 'home'
      text ' - '
      a href:'http://github.com/namuol', 'github.com/namuol'
      text ' - '
      a href:'http://twitter.com/louroboros', '@louroboros'
      text ' - '
      a href:'mailto:louis.acresti@gmail.com', 'louis.acresti@gmail.com'
      br ''
      br ''

      section ->
        p ->
          text 'By clicking that button down there, you encourage me to make more nice things. You also pay my hosting bills and maybe even help put decent beer in my fridge.'
          br ''
          br ''
          text 'It costs me about $0.001 of hosting fees each time someone plays <a href="http://www.flog-game.com">FLOG</a>, which means $1.00 covers 1000 plays.'
          br ''
          text 'Thus, I can keep the site ad-free as long as 1/1000 people drop a dollar or more into my digital hat.'
          br ''
          br ''
          text 'Cheers!'
          br ''
          text '&nbsp;&nbsp;&nbsp;&nbsp;-Lou'
        p ->
          form action:"https://checkout.google.com/api/checkout/v2/checkoutForm/Merchant/211159781209062", id:"BB_BuyButtonForm", method:"post", name:"BB_BuyButtonForm", target:"_top", ->
            text '''
              <input name="item_name_1" type="hidden" value="Thank you for the nice thing(s)"/>
              <input name="item_description_1" type="hidden" value=""/>
              <input name="item_quantity_1" type="hidden" value="1"/>
              <input name="item_currency_1" type="hidden" value="USD"/>
              <input name="shopping-cart.items.item-1.digital-content.description" type="hidden" value="Thank you!"/>
              <input name="shopping-cart.items.item-1.digital-content.key" type="hidden" value="YDMLdPzYzuOmcg78NJ5UWXJicq5hhSqdkXhN+Q+nhe4="/>
              <input name="shopping-cart.items.item-1.digital-content.key.is-encrypted" type="hidden" value="true"/>
              <input name="shopping-cart.items.item-1.digital-content.url" type="hidden" value="http://namuol.github.com/thanks.html"/>
              <input name="_charset_" type="hidden" value="utf-8"/>
            '''
            div class:'input-prepend input-append', ->
              span class:'add-on currency', 'USD $'
              input id:'buy-now-amt', name:"item_price_1", type:"text", value:"1.00"
              span id:'buy-now-wrap', class:'add-on', ->
                input alt:"", src:"https://checkout.google.com/buttons/buy.gif?merchant_id=211159781209062&amp;w=117&amp;h=48&amp;style=trans&amp;variant=text&amp;loc=en_US", type:"image"

