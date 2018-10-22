$(document).ready(function(){
  // Check if child tree is available
  if ($('.prjchildtree').length > 0){
      $('.prjchildtree').each(function(index){
        console.log('Child tree accessed');
        var topheading = $(this).prevUntil("hr").last()[0].nodeName;
        var items;
        if (topheading.length > 0){
            var list = "<ul>"
            switch (topheading){
                case "H1":
                items = $(this).nextUntil("h1").filter('h2');
                break;
                case "H2":
                items = $(this).nextUntil("h2").filter('h3');
                break;
                case "H3":
                items = $(this).nextUntil("h3").filter('h4');
                break;
                case "H4":
                items = $(this).nextUntil("h4").filter('h5');
                break;
                case "H5":
                items = $(this).nextUntil("h5").filter('h6');
                break;
                default:
                items = $(this).siblings("h1");
            }
            $(items).each(function(i){
                list += "<li><a href='#" + items[i].id +"'>" + items[i].innerHTML + "</a></li>";
            })
            list += "</ul>"
            $(this).append(list);
        } else {
            debugger;
        } 
      })
    
  }

})