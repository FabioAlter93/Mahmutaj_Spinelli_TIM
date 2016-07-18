$(document).ready(ready);

function ready(){

    var idp=1; 
    var myParam = location.search.split('idCat=')[1];
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "http://hypermediaproject.altervista.org/includes/php/getAssistenzaCategoria.php?id="+myParam,
        
        async: true,
        data: {prodotti:idp},
        success: function(response) {
            var prodotti=JSON.parse(response);
            var i=0;

            console.log(prodotti);
            
            for(i=0;i<prodotti.length;i++) {
                
                 var urlProdotto ="AssistanceProdotti.html?idp=" + prodotti[i].id;
               

                   
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute("href", urlProdotto);
                var nome = document.createTextNode(prodotti[i].nome);
                nomeTemp.appendChild(nome);
                    
                var prodotto = document.createElement("div");
                    
                var prodottoPanel = document.createElement("div");
                prodottoPanel.setAttribute("class", "panel");
                prodottoPanel.setAttribute("id", "panel-product");
                    
                prodottoPanel.appendChild(nomeTemp);
                
                prodotto.appendChild(prodottoPanel);
              
                var container = document.getElementById("prodotto");
                
                container.appendChild(prodotto);
            }
             
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
    

}

