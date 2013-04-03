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
    script src:'http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js'
    script src:'dudlpad.min.js'
    link rel:'stylesheet', href:'bootstrap/css/bootstrap.css'
    link rel:'stylesheet', href:'bootstrap/css/bootstrap-responsive.css'
    link rel:'stylesheet', href:'style.css'
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
          ###
          text '''
<form method="POST"
    action="https://checkout.google.com/api/checkout/v2/checkoutForm/Merchant/211159781209062"
    accept-charset="utf-8">

  <input type="hidden" name="item_name_1" value="Thank You"/>
  <input type="hidden" name="item_description_1" value="You are awesome."/>
  <input type="hidden" name="item_currency_1" value="USD"/>
  <input type="hidden" name="item_quantity_1" value="1"/>

  <input type="hidden"
    name="shopping-cart.items.item-1.digital-content.display-disposition"
    value="OPTIMISTIC"/>
  <input type="hidden"
    name="shopping-cart.items.item-1.digital-content.description"
    value="&amp;lt;a href="http://namuol.github.com/thanks.html"&amp;gt;Thank You!&amp;lt;/a&amp;gt;."/>

  <input type="hidden" name="_charset_"/>
  <div class="input-prepend input-append">
    <span class='add-on currency'>USD $</span>
    <input id='buy-now-amt' type="text" name="item_price_1" value="1.00"/><span id='buy-now-wrap' class='add-on'><input type="image" name="Google Checkout"
        src="http://checkout.google.com/buttons/buy.gif?merchant_id=211159781209062&amp;w=117&amp;h=48&amp;style=trans&amp;variant=text&amp;loc=en_US"
        height="46" width="180"/></span>
  </div>
</form>
          '''

          text '''
<form method="POST"
    action="https://sandbox.google.com/checkout/api/checkout/v2/checkoutForm/Merchant/347935588011983"
    accept-charset="utf-8">

  <input type="hidden" name="item_name_1" value="Super Software 5000"/>
  <input type="hidden" name="item_description_1" value="Improves download speeds!"/>
  <input type="hidden" name="item_price_1" value="1.00"/>
  <input type="hidden" name="item_currency_1" value="USD"/>
  <input type="hidden" name="item_quantity_1" value="1"/>

  <input type="hidden"
    name="shopping-cart.items.item-1.digital-content.display-disposition"
    value="OPTIMISTIC"/>
  <input type="hidden"
    name="shopping-cart.items.item-1.digital-content.description"
    value="&amp;lt;a href="http://namuol.github.com/thanks.html"&amp;gt;Thank You!&amp;lt;/a&amp;gt;."/>

  <input type="hidden" name="_charset_"/>
  <input type="image" name="Google Checkout"
    src="http://sandbox.google.com/checkout/buttons/checkout.gif?merchant_id=347935588011983&w=180&h=46&style=white&variant=text&loc=en_US"
    height="46" width="180"/>
</form>
          '''
          ###
          action1 = "https://checkout.google.com/api/checkout/v2/checkoutForm/Merchant/211159781209062"
          action2 = "https://sandbox.google.com/checkout/api/checkout/v2/checkoutForm/Merchant/347935588011983"
          form action:action1, id:"BB_BuyButtonForm", method:"post", name:"BB_BuyButtonForm", target:"_top", ->
            text '''
              <input name="item_name_1" type="hidden" value="Thank you for the nice thing(s)"/>
              <input name="item_description_1" type="hidden" value=""/>
              <input name="item_quantity_1" type="hidden" value="1"/>
              <input name="item_currency_1" type="hidden" value="USD"/>
              <input type="hidden"
                name="shopping-cart.items.item-1.digital-content.display-disposition"
                value="OPTIMISTIC"/>
              <input type="hidden"
                name="shopping-cart.items.item-1.digital-content.description"
                value="<a href='http://namuol.github.com/thanks.html'>Thank You!</a>"/>
              <input name="_charset_" type="hidden" value="utf-8"/>
            '''
            div class:'input-prepend input-append', ->
              span class:'add-on currency', 'USD $'
              input id:'buy-now-amt', name:"item_price_1", type:"text", value:"1.00"
              span id:'buy-now-wrap', class:'add-on', ->
                input
                  alt:""
                  src:"https://checkout.google.com/buttons/buy.gif?merchant_id=347935588011983&amp;w=117&amp;h=48&amp;style=trans&amp;variant=text&amp;loc=en_US"
                  type:"image"
