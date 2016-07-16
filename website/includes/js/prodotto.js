$(document).ready(ready);

function ready(){
    
    var idprodotti=1;  
    var myParam = location.search.split('idp=')[1];
    
    $.ajax({
        method: "POST",          
        crossDomain: true, 
        
        url: "includes/php/getProdotto.php?id="+myParam,
        async: true,

        data: {prodotto:idprodotti},        
        success: function(response) {
        var myprodotto=JSON.parse(response);
        
        console.log(myprodotto);
        
        var imgTemp = document.createElement("img");
        var urlImg = "Immagini/" + myprodotto.foto;
        imgTemp.setAttribute('src', urlImg);
        imgTemp.setAttribute("class", "img-responsive");
        
        var nomeTemp = document.createElement("h2");
        var nome = document.createTextNode(myprodotto.nome);
        nomeTemp.appendChild(nome);
    
        var descrTemp = document.createElement("p");
        var descrizione = document.createTextNode(myprodotto.descrizione);
        descrTemp.appendChild(descrizione);
        
        var caratTemp = document.createElement("p");
        var caratteristiche= document.createTextNode(myprodotto.caratteristiche);
        caratTemp.appendChild(caratteristiche);
        
        var containerProdottoImg = document.getElementById("immagine-prodotto");
        containerProdottoImg.appendChild(imgTemp);
           
        var containerProdottoNome = document.getElementById("prodotto-nome"); containerProdottoNome.appendChild(nomeTemp);
 
        var containerDescr = document.getElementById("descrizione");
        containerDescr.appendChild(descrTemp);
        
        var containerCarat = document.getElementById("caratteristiche");
        containerCarat.appendChild(caratTemp);
            
    },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

  $.ajax({
		method: "POST",
		crossDomain: true,
        
		url: "includes/php/getProdottoRelatedSmartLife.php?id="+myParam,
        
		data: {prodotto: idprodotti},
		success: function (response) {
        var prodotti = JSON.parse(response);
            
        var counter = 0;
        var currrow = document.createElement("div");
        currrow.setAttribute("class","row");
            
        var container = document.getElementById("prodotto-related");
        container.appendChild(currrow);

			for (i = 0; i < prodotti.length; i++) {
                
            var imgTemp = document.createElement("img");
            var urlImmagine = "Immagini/" + prodotti[i].foto;
            imgTemp.setAttribute('src', urlImmagine);
            imgTemp.setAttribute("class", "img-responsive");
                
            var urlDevice = "smartLifeProdotti.html?idp=" + prodotti[i].id;
                
            var nomeTemp = document.createElement("a");
            nomeTemp.setAttribute("class", "btn btn-small btn-primary");
            nomeTemp.setAttribute("href", urlDevice);
            var nome = document.createTextNode(prodotti[i].nome);
            nomeTemp.appendChild(nome);
					
            var smartlife = document.createElement("div");
            smartlife.setAttribute("class", "col-sm-4 feature");
            smartlife.appendChild(imgTemp);
            smartlife.appendChild(nomeTemp);
            currrow.appendChild(smartlife);

			}
		},
		error: function (request, error) {
			console.log("Error");
		}
	});

$.ajax({
		method: "POST",
		crossDomain: true,
        
		url: "includes/php/getProdottoRelatedAssistance.php?id="+myParam,
        
		data: {prodotto: idprodotti},
		success: function (response) {
			var prodotti = JSON.parse(response);
			
            var counter = 0;
            var currrow = document.createElement("div");
            currrow.setAttribute("class","row");
            
            var container = document.getElementById("assistance-related");
            container.appendChild(currrow);

			for (i = 0; i < prodotti.length; i++) {
                
                
				var urlDevice = "assistanceProdotti.html?idp=" + prodotti[i].id;
                
				var nomeTemp = document.createElement("a");
				nomeTemp.setAttribute("href", urlDevice);
				var nome = document.createTextNode(prodotti[i].nome);
				nomeTemp.appendChild(nome);
					
				var prodotto = document.createElement("div");
                prodotto.setAttribute("class", "col-sm-3 feature");

                var prodottoPanel = document.createElement("div");
                prodottoPanel.setAttribute("class", "panel");
                prodottoPanel.setAttribute("id", "panel-product");
                
                prodottoPanel.appendChild(nomeTemp);
                prodotto.appendChild(prodottoPanel);
				currrow.appendChild(prodotto);

                counter++;
				
			}
		},
		error: function (request, error) {
			console.log("Error");
		}
	});
}