---
title:  "How to Create SharePoint Popups for New Item Forms"
header:
  teaser: mm-software-feature.png
categories:
  - Tutorials
tags:
  - SharePoint
  - JavaScript
  - HTML
  - XHTML
  - Microsoft
twitterImage: "mm-software-feature.png"
ogImage:
    - url: "mm-software-feature.png"
excerpt: "How to add native popups in SharePoint using client-side javascript and
          Microsoft's own API."
---
By using modal popups instead of linking directly to the new item forms for a list,
you can save the end user the frustration of having to go back and figure out where
they were before they decided to click the link to add the item to the list, while
also giving a much more polished look to the site in general.

## Adding the button element

While you can apply this method to direct links, it looks nicer if you create a
button for the user to interact with, so put some place holder text where you want
the button to go and then open the site in [SharePoint Designer 2013](http://www.microsoft.com/en-us/download/details.aspx?id=35491).

Look for the placehoder text you created and replace it with the following:

```html
<input id="btnSubmitIssue" type="button" value="Submit an Issue" />
```

- `id`
    - The `id` of the button is going to be used later to reference this DOM item with javascript code.
      Make it whatever you want but make it descriptive to what it's function is.
- `type`
    - The `type` is going to remain as `button` because that's what we want to render.
- `value`
    - This text is going to be what is written on the button itself, and is the only thing the user will also be able to see.

## Adding the JavaScript

The javascript is where all the action really happens here, and you will need to add
an HTML Script Editor web part in order to get this working. It doesn't matter where
on the page it goes, just that it is there. Put this code inside of the script
editor web part:

```javascript
<script type="text/javascript">
    // Replace ‘btnSubmitIssue’ with whatever the ‘id’ of the button you placed is
    var btnSubmitIssue = document.getElementById('btnSubmitIssue');

    function submitIssue() {
        SP.UI.ModalDialog.showModalDialog({
            // Replace ‘ESB%20Process%Issue’ with the URL encoded name of any list
            url:   '../Lists/ESB%20Process%20Issue/NewForm.aspx',
            // Replace ‘Submit an Issue’ with whatever you want the title of the popup to be
            title: 'Submit an Issue'
        });
        return false;
    }
    btnSubmitIssue.onclick = submitIssue;
</script>
```

That code is pretty simple, and all you will need to do is replace the items noted
in the comments with the specific elements that you actually want on the popup. It
is possible to place other items in the url field, but this tutorial is focused
specifically on new item forms for lists. Feel free to experiment with the limits of
what SharePoint can place inside of there.