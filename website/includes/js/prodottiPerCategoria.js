$(document).ready(ready);


function ready(){
    
    $( "#prodotto" ).empty();
    
    var idprodotti=1;
    var myParam = location.search.split('idcategoria=')[1];
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "includes/php/getProdottiCategoria.php?id="+myParam,
        async: true,
        
        data: {prodotti:idprodotti},
        success: function(response) {
            var prodotti=JSON.parse(response);

            var count=0;
            var i=0;
      
            
            for(i=0;i<prodotti.length;i++) {
                
                var urlProdotto = "deviceProdotti.html?idprodotti=" + prodotti[i].id;
                    
                var imgTemp = document.createElement("img");     
                var urlImmagine = "Immagini/" + prodotti[i].foto;
                imgTemp.setAttribute('src', urlImmagine);
                imgTemp.setAttribute("class", "img-responsive");
                   
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-primary btn-block');
                nomeTemp.setAttribute("href", urlProdotto);
                var nome = document.createTextNode(prodotti[i].nome);
                nomeTemp.appendChild(nome);
                    
                    
                var prodotto = document.createElement("div");
                prodotto.setAttribute("class", "col-sm-3 feature");
                    
                var prodottoPanel = document.createElement("div");
                prodottoPanel.setAttribute("class", "panel");
                prodottoPanel.setAttribute("id", "panel-product");
                    
                    
                prodottoPanel.appendChild(imgTemp);
                prodottoPanel.appendChild(descrTemp);
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
