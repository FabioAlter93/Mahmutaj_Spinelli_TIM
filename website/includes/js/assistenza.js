$(document).ready(ready);

function ready() {
    
    var idprodotti = 1;
    var myParam = location.search.split('idp=')[1];
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "includes/php/getAssistenza.php?id=" + myParam,
        async: true,
        
        data: {prodotto:idprodotti},
        success: function(response) {
        var myprodotto=JSON.parse(response);
              
        var nomeTemp = document.createElement("h2");
        var nome = document.createTextNode(myprodotto.nome);
        nomeTemp.appendChild(nome);
        
        var descrTemp = document.createElement("p");
        var descrizione = document.createTextNode(myprodotto.descrizione);
        descrTemp.appendChild(descrizione);
            
        var containerAssistenzaNome = document.getElementById("nome"); 
        containerAssistenzaNome.appendChild(nomeTemp);
            
        var containerDescr = document.getElementById("descrizione");
        containerDescr.appendChild(descrTemp);     
            
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

$.ajax({
		method: "POST",
		crossDomain: true,
        
		url: "includes/php/getDeviceOfAssistance.php?id="+myParam,
        
		data: {prodotto: idprodotti},
		success: function (response) {
			var prodotti = JSON.parse(response);
			
			var counter = 0;
			for (i = 0; i < prodotti.length; i++) {
                var imgTemp = document.createElement("img");
				var urlImmagine = "Immagini/" + prodotti[i].foto;
				imgTemp.setAttribute('src', urlImmagine);
				imgTemp.setAttribute("class", "img-responsive");
				
                var urlDevice = "deviceProdotti.html?idp=" + prodotti[i].id;
                
				var nomeTemp = document.createElement("a");
				nomeTemp.setAttribute("class", "btn btn-small btn-primary");
				nomeTemp.setAttribute("href", urlDevice);
				var nome = document.createTextNode(prodotti[i].nome);
				nomeTemp.appendChild(nome);
					
				var prodotto = document.createElement("div");
                prodotto.setAttribute("class", "col-sm-2");
                prodotto.setAttribute("id", "special-col");
				prodotto.appendChild(imgTemp);
				prodotto.appendChild(nomeTemp);

				var container = document.getElementById("prodotto-related");
				container.setAttribute("class", "row");
				container.appendChild(prodotto);
				
			}
		},
		error: function (request, error) {
			console.log("Error");
		}
	});

}