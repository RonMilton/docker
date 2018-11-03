$(document).ready(function(){
    console.log("Left menu accessed");
    // If cookie exists, open that section of the menu and tag current active li
    var activelink = Cookies.get('leftnavli');
    if (typeof activelink != 'undefined'){
        var currentli = $('li').eq(activelink);
        currentli.parents('.collapse').addClass('show');
        currentli.parents('li').addClass('active-folder');
        currentli.parents().children('i').removeClass('far fa-folder').addClass('fas fa-folder-open');
        currentli.addClass('prjactiveleft');
        currentli.children('i').removeClass('far fa-file').addClass('fa fa-file-import');
    }

    // Listen for clicks except the item pointing to current page.
    $('#prjleftnav li a').click(function(e){
        var target = $(e.target);
        var icon = target.siblings('i');
        var li = target.parent();
        // If link is #, then anchor only opens collapsed submenu.
        if (target.attr('href') == '#'){
            e.preventDefault();
            if (icon.hasClass('fa-folder-open')){
                icon.removeClass('fa-folder-open').addClass('fa-folder');
            } else {
                icon.removeClass('fa-folder').addClass('fa-folder-open');
            }
            li.children('.collapse').first().collapse('toggle');
        } else {
            if (li.hasClass("prjactiveleft")) {
                // Ignore link clicked for current page.
                e.preventDefault();
            } else {
                // User navigating to a page
                Cookies.set('leftnavli', $('li').index(target.parent()));
            }
        }
    });
    
    // If user clicks link on top menu, clear cookie to avoid opening menu at what would seem a random li to user.
    $('.site-header a').click(function(){
        Cookies.remove('leftnavli');
    });
})

