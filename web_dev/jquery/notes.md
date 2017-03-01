# jQuery Plan of Action
## Dan McKeon

### Plan:

1. Determine the capabilities of jQuery
2. Choose one specific capability to focus on
3. Find HTML/CSS file from past work that would be conducive to this functionality (or create a new one)
4. Research how to implement...

### Resources:

1. Google "jQuery [intended use] Tutorial"
2. jQuery Documentation
3. Google specific questions that come up during the process

### Testing:

* Frequent testing required
* Since this is a new technology for me, I should make sure very basic functionality is operational before trying to implement complex code


I think it is the best approach to focus on one specific function because I learn best by doing and that is the method to get me "doing" as quickly as possible. I also sometimes have trouble choosing between many different options, so this plan will force me to choose one specific thing.

### Research notes from Learn jQuery in 15 Minutes YouTube Video by Travis Neilson

**Basic Syntax**

* $() is same as jquery()
* $(this) refers to whatever the function is called on
* alert is great for debugging
    * alert($(code))

**Loading document before JS runs:**

* To ensure document is loaded before Javascript runs (IMPORTANT), use one of these two commands that are identical:
    * $(document).ready(function() {
    *   //code
    * });
    * $(function(){
    *   //code
    * });

**Intermediate Syntax**

* Selectors
    * HTML element you are selecting goes inside $([html element here])
        * ex: $(‘p’).css(‘border’, ‘4px solid red’)
        * Or just paragraphs that are of class lead: $(‘p.lead’)…
* Animations
    * First element of class box to hide over a span of 500ms
        * $(‘.box:first’).hide(500)
    * Hide over 500ms and then show over course of 800ms
        * $(‘.box:first’).hide(500).show(800)
    * With 300ms delay in middle
        * $(‘.box:first’).hide(500).delay(300).show(800)
    * Can also use animate method
        * $(‘.box:first’).animate({height: ‘200px’}, 300);
* Index Filters
    * To choose third p element
        * $(‘p:eq(2)’)…
    * To choose first p element
        * $(‘p:first’)…
* Relationship Filters
    * Choose elements by relationship to other elements
* Attribute Filters
    * Choose elements by class, id, string that matches one of these, etc.
* Attr Method
    * Can set and retrieve attributes
    * When I hit save, alert will pop up with class of first p element
        * alert($(‘p:first’).attr(‘class’));
    * Sets first p class to ‘not-lead’
        * alert($(‘p:first’).attr(‘class’, ‘not-lead’)
* Image Swap
    * Swaps out img for img2
        * $(‘img’).attr(‘src’. ‘img2.jpg’);
    * Fade image out and then swaps in another image that fades in
        * $(‘img’).fadeOut(500, function(){
        *   $(this).attr(‘src’, ‘img2.jpg’).fadeIn(500);
        * });
* Class Methods
    * Will pop up alert to show if last p has class lead
        * alert($(‘p:last’).hasClass(‘lead’);
    * Removes class lead and adds class blue
        * $(‘p:first’).addClass(‘blue’).removeClass(‘lead’);
    * Toggle class for all p elements
        * $(‘p’).toggleClass(‘blue’)
* Content Methods
    * Change text of first p
        * $(‘p:first’).text(‘Hey you guuuuyssss!’);
    * Can also use html method if you want it to read html
* DOM Traversal
    * Can use parents(), children(), siblings() calls to specify relationship to particular elements
* Event binding
    * Toggle class on click (identical):
        * $(‘h2’).click(function(){
        *   $(this).toggleClass(‘blue’);
        * });
        * $(‘h2’).bind(‘click’, function(){
        *   $(this).toggleClass(‘blue’);
        * });
    * On keypress
        * .keypress()
    * On hover
        * .hover()