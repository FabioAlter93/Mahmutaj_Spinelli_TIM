$(document).ready(ready);
function ready(){
    
    var idCat=1;
   
    $.ajax({
        method: "POST",
        crossDomain: true, 
        
        url: phpurl="includes/php/getAllCategorieSmart.php",
    
        async: true,
        data: {categorieProdotti:idCat},
        success: function(response) {
            var categorieProdotti=JSON.parse(response);
            var temp=[];
            var count=0;
            var i=0;
            
          var container = document.getElementById("categoria");
            
            var currrow = document.createElement("div");
            currrow.setAttribute("class","row");
            
            container.appendChild(currrow); 
            
            
            
          for(i=0;i<categorieProdotti.length;i++){
              console.log(categorieProdotti);
                    if(count % 3 == 0){
                        currrow = document.createElement("div");
                        currrow.setAttribute("class","row");
                        container.appendChild(currrow);
                    }
                
                var urlCategoria = "SmartPerCategorie.html?idCat=" +categorieProdotti[i].id;

                
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-primary btn-block');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode(categorieProdotti[i].nome);
                nomeTemp.appendChild(nome);
                
                
                var categoria = document.createElement("div");
                categoria.setAttribute("class", "col-sm-4 feature");
              
                var categoriaPanel = document.createElement("div");
                categoriaPanel.setAttribute("class", "panel");
                categoriaPanel.setAttribute("id", "panel-category");

                categoriaPanel.appendChild(nomeTemp);
                categoria.appendChild(categoriaPanel);
              
                currrow.appendChild(categoria);
              
              count++;
              
               
        }
             
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}