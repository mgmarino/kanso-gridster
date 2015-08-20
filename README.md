kanso-gridster
==============

gridster provides a drag-and-drop framework for building e.g. dashboard-like
interfaces.

This is currently version 0.5.6.  The website is:

http://gridster.net/

Usage
-----

General usage:

```html
<div class="gridster">
    <ul>
        <li data-row="1" data-col="1" data-sizex="1" data-sizey="1"></li>
        <li data-row="2" data-col="1" data-sizex="1" data-sizey="1"></li>
        <li data-row="3" data-col="1" data-sizex="1" data-sizey="1"></li>
    </ul>
</div>
```

```javascript
jQuery = require("jquery");
// following exports a plugin to jQuery 
require("gridster");
$(function(){ //DOM Ready

    $(".gridster ul").gridster({
        widget_margins: [10, 10],
        widget_base_dimensions: [140, 140]
    });

});
```

More information concerning the API and examples for the plugin can be found on
the above webpage.  

