$(document).ready(function(){
    
    if ($('#prjrightnav').length > 0 && $(".post-content h1:not(#prjrightnav h1)").length > 0){
        console.log("Right menu accessed");
        var title = "Topic Menu";
        var menu = [];
        var list = "<ul class='nav flex-column'>";
        
        if ( $(".page-content h1").length ) {
          title = $('h1.post-title')[0].innerText;
          $("#prjrightnav h1").html(title);
        }
        
        $(".post-content h1:not(#prjrightnav h1), .post-content h2, .post-content h3, .post-content h4:not(.modal-title)").each(function(i){
        
          var title = $(this).text();
          var id = $(this).attr("id");
          var level = 0;
          switch ($(this).prop('tagName')){
            case "H1":
              level = 1;
              break;
            case "H2":
              level = 2;
              break;
            case "H3":
              level = 3;
              break;
            case "H4":
              level = 4;
              break;
            default:
              level = 0;
          }
          
          menu.push({
            title: title,
            id: id,
            level: level
          });
        
        });
        
        for (i=0; i < menu.length; i++){
           if (menu[i].level != 0){
             list += '<li class="level-' + menu[i].level + ' nav-item"><a class="nav-link" href="#' + menu[i].id + '">' + menu[i].title + '</a></li>';
           }
        };
        
        list += "</ul>";
        
        $(list).appendTo("#prjrightnav");
    } else if ($("#function-menu-wrapper").length > 0) {
        ko.bindingHandlers.typeahead = {
            init: function(element, valueAccessor, allBindingsAccessor, viewModel, bindingContext) {
            var $element = $(element);
            var allBindings = allBindingsAccessor();
            //var value = ko.utils.unwrapObservable(allBindings.value);
            var source = ko.utils.unwrapObservable(valueAccessor());
            var items = ko.utils.unwrapObservable(allBindings.items) || 4;

            var substringMatcher = function(array) {
                return function findMatches(q, cb) {
                var matches, substrRegex;
            
                // an array that will be populated with substring matches
                matches = [];
            
                // regex used to determine if a string contains the substring `q`
                substrRegex = new RegExp(q, 'i');
            
                // iterate through the pool of strings and for any string that
                // contains the substring `q`, add the name and id to the `matches` array
                $.each(array, function(i, item) {
                    if (substrRegex.test(item.name)) {
                    matches.push({'name':item.name, 'id': item.id});
                    }
                });
            
                cb(matches);
                };
            };
        
            $element
                .attr('autocomplete', 'off')
                .typeahead({
                    minLength: 1,
                    highlight: true, 
                    hint: false
                }, 
                {
                    name: 'functions',
                    source: substringMatcher(source),
                    display: 'name',
                    limit: 20
                })
                .bind('typeahead:select', function(ev, sug) {
                    console.log('Selection: ' + sug.name);
                    location.href=sug.id;
                    $element.val('');
                });
            }
        };

        var vm = (function(){
            var self = this;
            self.ftypes = ko.observableArray();
            self.functions = ko.observableArray();
            self.functionnames = ko.observableArray();
            self.selected = ko.observable();

            $('div.ftype-section').each(function(i){
                var name = $(this).find('h2').text().replace(' Functions', '');
                var type = name.split(" ")[0];
                var sectionid = "section-" + type;
                // Only create id if one was not created with markdown
                if (typeof $(this).id == "undefined"){
                    $(this).attr('id', sectionid);
                } else {
                    sectionid = $(this).id;
                }

                self.ftypes.push({'name':name, 'ftype':type, 'id':'#' + sectionid});
                
                $(this).find('h3').each(function(x){
                    var id="function-" + $(this).text();
                    if (typeof $(this).id == "undefined"){
                        $(this).attr('id', id);
                    } else {
                        id = $(this).id;
                    }
                    self.functions.push({'ftype':type, 'name':$(this).text(), 'id':'#' + id});
                    self.functionnames.push($(this).text());
                })
            })

            // Toggle visibility of function list in menu when section is clicked
            self.togglesubs = function(d, e) {
                e.preventDefault();
                if ($(e.target).parent().children('ul').hasClass('d-none')){
                    $('.submenu').addClass('d-none');
                    $(e.target).parent().children('ul').removeClass('d-none');
                } else {
                    $(e.target).parent().children('ul').addClass('d-none');
                }
            }

            // Toggle visibility of sections and change eyeball icon
            self.togglevis = function(d, e) {
                var eye = $(e.target);
                var section = eye.parent().children('a').attr('href');
                
                if (eye.hasClass('fa-eye')){
                    eye.removeClass('fa-eye').addClass('fa-eye-slash text-muted');
                    $(section).addClass('d-none');
                    eye.siblings('.submenu').children('li').children('a').addClass('nolink');
                } else {
                    eye.removeClass('fa-eye-slash text-muted').addClass('fa-eye');
                    $(section).removeClass('d-none');
                    eye.siblings('.submenu').children('li').children('a').removeClass('nolink');
                }
            }

            return vm;
        })();
        ko.applyBindings(vm);

        // process hash if applicable after page build
        if (location.hash != "" && $(location.hash).length > 0){
            $('html, body').animate({
                scrollTop: $(location.hash).offset().top
            }, 0);
        }
    }
});