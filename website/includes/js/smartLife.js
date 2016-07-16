$(document).ready(ready);

function ready(){
    
    var idprodotti=1;
    var myParam = location.search.split('idp=')[1];
    
    $.ajax({
        method: "POST",       
        crossDomain: true,
        
        url: "includes/php/getSmartLife.php?id="+myParam,
        async: true,

        data: {prodotto:idprodotti},        
        success: function(response) {
        var myprodotto=JSON.parse(response);
        
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
        
        var attivTemp = document.createElement("p");
        var attivazione= document.createTextNode(myprodotto.attivazione);
        attivTemp.appendChild(attivazione);
        
        var containerProdottoImg = document.getElementById("immagine-prodotto");
        containerProdottoImg.appendChild(imgTemp);
           
        var containerProdottoNome = document.getElementById("prodotto-nome"); containerProdottoNome.appendChild(nomeTemp);
 
        var containerDescr = document.getElementById("descrizione");
        containerDescr.appendChild(descrTemp);
        
        var containerAttiv = document.getElementById("attivazione");
        containerAttiv.appendChild(attivTemp);
            
    },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
$.ajax({
		method: "POST",
		crossDomain: true,
        
		url: "includes/php/getSmartLifeRelatedDevice.php?id="+myParam,
        async: true,
        
		data: {prodotto: idprodotti},
		success: function (response) {
			var prodotti = JSON.parse(response);

			var counter = 0;
			for (i = 0; i < prodotti.length; i++) {
				var imgTemp = document.createElement("img");
				var urlImmagine = "Immagini/" + prodotti[i].foto;
				imgTemp.setAttribute('src', urlImmagine);
				imgTemp.setAttribute("class", "img-responsive");
				
                var urlDevice = "deviceProdotti.html?idclasse=1?idCat=" + prodotti[i].idCat + "?id=" + prodotti[i].id;
                
				var nomeTemp = document.createElement("a");
				nomeTemp.setAttribute("class", "btn btn-small btn-primary");
				nomeTemp.setAttribute("href", urlDevice);
				var nome = document.createTextNode(prodotti[i].nome);
				nomeTemp.appendChild(nome);
					
				var prodotto = document.createElement("div");
                prodotto.setAttribute("class", "col-sm-3");
                prodotto.setAttribute("id", "special-col");
				prodotto.appendChild(imgTemp);
				prodotto.appendChild(nomeTemp);

				var container = document.getElementById("prodotto-related");
				
                container.appendChild(prodotto);
                
			}
		},
		error: function (request, error) {
			console.log("Error");
		}
	});
}