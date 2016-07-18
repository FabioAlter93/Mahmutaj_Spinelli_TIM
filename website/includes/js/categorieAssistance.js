$(document).ready(ready);
function ready(){
    
    var idCat=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, 
        
        url: phpurl="http://hypermediaproject.altervista.org/includes/php/getAllCategorieAssistance.php",
    
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
                
                var urlCategoria = "AssistancePerCategorie.html?idCat=" +categorieProdotti[i].id;

              var imgTemp = document.createElement("img");
              var urlImmagine = "Immagini/" + categorieProdotti[i].foto;
              imgTemp.setAttribute('src', urlImmagine);
              imgTemp.setAttribute("class", "img-responsive");
                
                
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

              categoriaPanel.appendChild(imgTemp);
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