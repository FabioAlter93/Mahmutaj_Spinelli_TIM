-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Lug 19, 2016 alle 15:26
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_hypermediaproject`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `categorieAssistenza`
--

CREATE TABLE IF NOT EXISTS `categorieAssistenza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `categorieAssistenza`
--

INSERT INTO `categorieAssistenza` (`id`, `nome`, `foto`) VALUES
(1, 'Gestione Linea e Servizi', 'gestionelinea.png'),
(2, 'Supporto Tecnico', 'supportotecnico.png'),
(3, 'Controllo Costi', 'controllocosti.png'),
(4, 'SmartLife', 'salute.png'),
(5, 'Highlights', 'promotions.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `categorieProdotti`
--

CREATE TABLE IF NOT EXISTS `categorieProdotti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `categorieProdotti`
--

INSERT INTO `categorieProdotti` (`id`, `nome`, `foto`) VALUES
(1, 'Smartphone', 'smartphone.png'),
(2, 'Tv & Smart Living', 'tvesmartliving.png'),
(3, 'Tablet & Computer', 'tablet.png'),
(4, 'Modem & Networking', 'modem.png'),
(5, 'Outlet', 'promotions.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `categorieSmartLife`
--

CREATE TABLE IF NOT EXISTS `categorieSmartLife` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `categorieSmartLife`
--

INSERT INTO `categorieSmartLife` (`id`, `nome`, `foto`) VALUES
(1, 'Tv & Entertaiment', 'tventertainment.png'),
(2, 'Salute e Benessere', 'salute.png'),
(3, 'Casa e Famiglia ', 'casa.png'),
(4, 'Servizi alla Persona', 'servizi.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE IF NOT EXISTS `prodotti` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin NOT NULL,
  `descrizione` mediumtext COLLATE utf8_bin NOT NULL,
  `caratteristiche` mediumtext COLLATE utf8_bin NOT NULL,
  `idCat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=23 ;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`id`, `nome`, `foto`, `descrizione`, `caratteristiche`, `idCat`) VALUES
(1, 'Iphone 6S', 'iphone6s.jpg', 'Display Retina HD da 4,7" con 3D Touch. Alluminio serie 7000 e vetro più resistente. Chip A9 con architettura a 64 bit di livello desktop. Nuova fotocamera iSight da 12MP con Live Photos. Touch ID. Connessioni Wi-Fi e 4G LTE più veloci.1 Batteria a lunga durata.2 E ancora, iOS 9 e iCloud. Il tutto in un elegante guscio unibody.\r\nPREZZO iPHONE:     789,90 € (in un''unica soluzione)\r\noppure\r\n21,94 €/mese per 36 mesi senza interessi', 'Display: Display Retina HD da 4,7" (diagonale) con risoluzione di 1334x750 pixel\r\n3D Touch\r\n \r\nProcessore: Chip A9 con coprocessore di movimento M9 integrato\r\n \r\nFotocamera: Fotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos\r\n \r\nRegistrazione video: Registrazione video 4K a 30 fps, moviola (1080p) a 120 fps\r\n \r\nVideocamera: Videocamera FaceTime HD con Retina Flash (foto da 5MP)\r\n \r\nSensori: Touch ID di seconda generazione\r\n \r\nConnettivita: 4G LTE Advanced1 e Wi-Fi 802.11a/b/g/n/ac con tecnologia MIMO\r\n \r\nSistema Operativo: iOS 9 e iCloud\r\n \r\nColori: argento, oro, grigio siderale, oro rosa', 1),
(2, 'Sony Xperia Z3', 'sony.jpg', ' \nNuovo "topclass" di Sony, piu sottile del suo predecessore nonostante lo schermo di 5,2" full HD, il sistema operativo nativo è Android 4.4 e un super processore Quad Core Snapdragon 801 di ultima generazione. Migliora la resistenza all''acqua e alla polvere grazie alla certificazione che raggiunge il livello IP68*.\n ', 'Sistema Operativo Android 4.4\n \nConnettivita:\n4G/HSDPA 42/UMTS/EDGE/GPRS - Wi-Fi - Bluetooth - Micro USB - NFC - Ricevitore GPS Integrato\n \nDisplay: 5.2" 16 Milioni colori Touch\n \nFotocamera: 20.7 Megapixel/Flash\n \nMemoria: 16GB + Slot Memory Card Micro SD fino a 128GB\n \nProcessore:  Snapdragon™ 800 QuadCore 2.5 GHz\n \nDimensioni: 146x72x7,4 mm\n \nPeso: 153 grammi\n \nAutonomia: Stand-by fino a 890 ore - Conversazione fino a 960 min.\n \nIn dotazione:\nCaricabatteria standard - Auricolare stereo - Cavo Dati Micro - USB Manuale d''uso\n ', 1),
(3, 'Samsung Galaxy S7', 'samsungs7.jpg', 'Il nuovissimo S7 Edge conferma quanto di buono visto nella precedente generazione ma aggiunge alcune caratteristiche perse nel corso degli anni ma per le quali il pubblico ha sempre avuto un occhio di riguardo. Ecco quindi il ritorno dell''impermeabilità e dell''espandibilità della memoria, il tutto in un design che riprende le apprezzate linee della serie 6, rendendole ulteriormente gradevoli.', 'Sistema Operativo: Android 6.0\n \nProcessore: OctaCore (QuadCore 2.3 Ghz + QuadCore 1.6 Ghz)\nTecnologia: 4G cat.9/HSDPA42UMTS/EDGE/GPRS \n \nConnettivita: Wi-Fi - Bluetooth - Micro USB - NFC\n \nGPS: Integrato\n \nDisplay: 5.5” 16 Milioni colori Touch\n \nFotocamera: 12 Mpixel/Flash\n \nMemoria Interna: 32GB\n \nIn dotazione:\nCaricabatteria - Cavo Dati MicroUSB - Auricolare stereo - Guida di riferimento rapido\n \nDimensioni: 150,9x72,6x7,7 mm\n \nPeso:157 gr.\n \nAutonomia: Stand-by fino a TBD ore - Conversazione fino a TBD min', 1),
(4, 'Huawei P9', 'huaweip9.jpg', 'Huawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d’arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed è disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.\n\n\n\n\nCon una resa cromatica del 96%, il sensazionale display IPS Full HD da 5,2" porta alla scoperta di un mondo ricco di colori intensi e ancora più naturali.\n \n\nLa collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosità e nitidezza per foto e video sensazionali.\n\n\n\nHuawei P9 è in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantità di luce, combinando al meglio la qualità del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.', 'Sistema Operativo Android 6.0\nProcessore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)\nDisplay IPS Full HD da 5.2’’\nDoppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl\nTecnologia\nAbilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz\n\nConnettivita\n4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC\n\nGPS\nGPS Integrato\n\nDisplay\nDisplay IPS Full HD da 5.2’’\n\nFotocamera\nPrincipale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4\n\nMemoria Interna\n32GB\n\nProcessore\nProcessore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)\n\nIn dotazione\nSmartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida\n\nDimensioni\n145 x 70,9 x 6,95 mm\n\nPeso\n144 grammi\n\nAutonomia\nStand-by fino a 566 ore - Conversazione fino a 1980 min', 1),
(5, 'LG Nexus 5X 32GB ', 'lgnexus.jpg', 'IL MIGLIOR NEXUS MAI CREATO\nNexus 5X cattura tutto lo spirito della famiglia Nexus, offrendo performance di alto livello in un dispositivo compatto e leggero pronto ad accompagnarti durante tutta la giornata. Con il display da 5.2'''' e il processore Hexa-Core Qualcomm Snapdragon 808 processor avrai il massimo dell''esperienza visiva.\n ', 'SistemaOperativo: Android™ 6.0 Marshmallow\n \nDisplay: Touchscreen IPS 5.2'''' con tecnologia in-Cell Touch. 1080x1920 pixel, 16M colori. 423 PPI\n \nFotocamera: Retro: 12.3 Megapixel con apertura f/2.0, Laser Autofocus, Dual Flash LEDFronte: 5 Megapixel con apertura f/2.0\n \nMemoria: 16GB di cui circa 10.4GB a disposizione per l''utente OPPURE 32GB di cui circa 24.6GB a disposizione per l''utente\nRAM: 2GB\n \nProcessore: CPU 64-bit Hexa-Core 1.8GHz Qualcomm® Snapdragon\n \nGPS: Si, A-GPS, GLONASS\n \nConnettivita: Wi-Fi 802.11 a/b/g/n/ac Dual Band; Miracast. Bluetooth 4.2\n \nDimensioni:147 x 72.6 x 7.9mm      Peso: 136 gr.\n \nBatteria: Li-ion 2700mAh non rimovibile. -Autonomia in standby (ore): fino a 100 \n \nSensori: Impronte digitali per sbloccare lo smartphone e per i pagamenti, Accelerometro, Sensore di prossimità, Giroscopio, Bussola digitale, Sensore di luminosità, Barometro, Android Context Hub, Sensor Hub', 1),
(6, 'Microsoft Lumia 640', 'lumia.jpg', 'Microsoft rinnova l''offerta di smartphone Lumia con un modello che si colloca formalmente nel segmento dei dispositivi di fascia medio-bassa. Lumia 640 è posizionato più ridosso del Lumia 735 e meno in prossimità del Lumia 630, contrariamente a quanto il nome possa suggerire. Lumia 640 contribuisce, quindi, a potenziare un''offerta Lumia che diventa sempre più ricca di proposte adatte agli utenti che non vogliono superare la soglia dei 200 euro nell''acquisto dello smartphone.\n ', 'Sistema Operativo: Windows Phone 8.1\n \nProcessore: Snapdragon™ 400 QuadCore 1.2 Ghz\n \nConnettivita: 4G cat.4/HSDPA42/UMTS/EDGE/GPRS\n \nDisplay: 5” 16 Milioni colori Touch\n \nFotocamera: 8 Mpixel/Flash\n \nMemoria: 8GB - Slot Memory Card Micro SD fino a 128GB\n \nIn dotazione:\nCaricabatteria - Manuale d’uso rapido\n \nDimensioni: 141,3x72,2x8,8 mm\n \nPeso:145 grammi\n \nAutonomia: Stand-by fino a 864 ore - Conversazione fino a 1050 min', 1),
(7, 'Apple iPad Pro 9.7"', 'ipadpro.jpg', 'iPad Pro 9,7” è un concentrato mai visto di portatilità e prestazioni. È spesso solo 6,1 millimetri e pesa meno di 500 grammi, ma ha il display Retina più luminoso ed evoluto di sempre: con i suoi sensori True Tone si adegua alla luce ambientale, così gli occhi non si affaticano. In più hai il potente chip A9X a 64 bit di livello desktop, audio a quattro altoparlanti, fotocamera iSight e videocamera FaceTime HD, sensore di impronte digitali Touch ID, connessioni ultraveloci su Wi-Fi e 4G LTE e fino a 10 ore di autonomia.2 Advanced,1 ancora di più? Aggiungi l’ultraprecisa Apple Pencil e la Smart Keyboard, e iPad Pro ti diventerà ancora più indispensabile\r\n ', 'Sistema Operativo iOS 9\r\n \r\nDisplay: Retina Display 9,7” (diagonale) con True Tone e rivestimento antiriflesso\r\n \r\nSensori: Impronte digitali Touch ID\r\n \r\nProcessore: Chip A9X di terza generazione con architettura a 64 bit di livello desktop\r\n \r\nFotocamera: iSight da 12MP con video a 4K\r\n \r\nConnettivita'' :\r\n4G LTE Advanced1, Wi-Fi 802.11ac con tecnologia MIMO\r\n \r\nBatteria: Fino a 10 ore di autonomia', 3),
(8, 'Acer ICONIA W4 821', 'acericonia.jpg', 'La prova dell''Acer Iconia W4, il tablet di Acer con schermo da 8 pollici e sistema operativo Windows 8.1 che ha preso il posto dell''Iconia W3. Il processore è più veloce, lo schermo migliore e la fotocamera principale è da 5 megapixel invece che 2. Rispetto al modello precedente resta fisso lo schermo da 8 pollici, ma invece della tecnologia LCD vecchio stile è impiegata quella IPS che rende le immagini visibilmente più brillanti e i caratteri più definiti.', 'Connettivita:	HSDPA 21.2/HSUPA 5,76/,Wi-Fi Direct 802.11 a/b/g/n, Bluetooth 4.0 - Chiamata voce\n \nDisplay: 8" (1280x800) IPS\n \nPicture:\n5 Mpx A/F + 2 Mpx frontale, JPG, PNG, GIF, BMP\n \nMemoria:  32GB, 2GB RAM\n \nProcessore:   Intel Atom Quad-Core 1.8GHz\n \nSistemaOperativo:   Windows 8.1 + Office Home & Students 2013\n \nApplicazioni:\nOffice Home & Students 2013, E-mail, GPS/A-GPS, SMS/MMS Invio e ricezione\n \nIn dotazione:  Caricabatteria - Guida di riferimento rapido\n \nDimensioni:   218.9 x 134.9 x 10.75 mm\n \nPeso:   420 grammi\n \nAutonomia:\n4960 mAh / durata 8h', 3),
(9, 'Samsung Galaxy TabS2', 'galaxytab4.jpg', 'Samsung Galaxy Tab S2 9.7 è un tablet Android di buon livello, fortemente votato all''imaging, in grado di soddisfare anche l''utente più esigente. Sorprende il display Touchscreen da 9.7 pollici che pone questo Samsung al vertice della categoria. Sul versante delle funzionalità a questo Samsung Galaxy Tab S2 9.7 non manca davvero nulla. Samsung Galaxy Tab S2 9.7 è un prodotto completo e tra i più sottili sul mercato. ', 'Connettivita:\nLTE cat.6/HSDPA 42.2/HSUPA 5.76/, Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 4.1, micro USB\n \nDisplay:  Display 9.7” TFT, 2048x1536 QXGA (4:3)\n \nDimensioni:  237,3x169,0x5,6 mm\n \nPeso:  392 gr\n \nAutonomia:  Stand-by fino a 250h, 30 ore in chiamata\n \nFotocamera:  Front: 2.1 MP - Back: 8 MP\n \nMemoria:\nInterna 32GB (espandibile fino a 128GB)\n3GB di Ram\n \nProcessore: Octa-core,1.9 GHz, 1.3 GHz\n \nSistemaOperativo: AndroidTM 5.0.2 (Lollipop)\n \nIn confezione\nCarica batteria, Cavo dati Usb, Manuale d’uso', 3),
(10, 'Huawei Mediapad T110', 'mediapad.jpg', 'MediaPad T1 10 di Huawei: una tavoletta di fascia media con un prezzo invitante in funzione della scheda tecnica che può vantare. In questo caso non si parla di prestazioni al top della categoria, quanto di un affidabile tablet con un hardware noto e sperimentato in grado di svolgere con semplicità i compiti della vita di tutti i giorni. Se era questo lo scopo che si era prefissa Huawei nel progettare questo Mediapad T1, allora il compito è pienamente riuscito.', 'Connettivita:\nLTE, HSDPA+ 42.2Mbps/HSUPA 5.76/, Wi-Fi 802.11b/g/n, Bluetooth 3.0\n \nDisplay: 9.6" (1280x800) IPS 16M di colori\n \nVideo/Picture: 2 Fotocamera da 5 Mpx e VGA \n \nMemoria: 8GB (espandibile fino a 64GB)\n \nProcessore: Quad-core 1.2GHz\n \nSistemaOperativo: AndroidTM 4.4 KitKat\n \nIn dotazione: Caricabatteria - Manuale d’uso\n \nDimensioni: 248,5 x 150 x8,3 mm\n \nPeso: 433 grammi\n \nAutonomia:  Stand-by fino a 300h', 3),
(11, 'Modem ADSL Wi-Fi', 'modemtim.jpg', 'Navigazione veloce e senza fili\r\n \r\nCon il Modem ADSL Wi-Fi navighi ad alta velocità e senza fili, utilizzando l''interfaccia Wi-Fi o attraverso le 4 porte Ethernet.\r\n \r\nNavigazione più veloce grazie alla tecnologia senza fili Wi-Fi e migliore copertura della rete Wi-Fi della tua abitazione.\r\nProtezione: la cifratura WPA e WPA2 impedisce l’accesso ai non autorizzati alla rete Wi-Fi. Disponibili anche funzionalità avanzate come il filtro degli indirizzi MAC ed il firewall integrato.\r\nTutta la famiglia connessa: collega tutti i PC, smartphone e tablet al nuovo modem ADSL Wi-Fi e inoltre condividi Hard Disk e stampanti collegati alla porta USB del modem.\r\nInstallazione no problem: il modem si configura automaticamente sulla tua linea ADSL, senza installare software.\r\nRisparmia sulla bolletta elettrica: il nuovo modem, rispetto ad un prodotto Telecom Italia di generazione precedente con le stesse funzionalità, consente di risparmiare fino al 40% di energia elettrica su un utilizzo medio annuo.\r\nIl Modem Wi-Fi opera solo su linea ADSL di Telecom Italia ed è compatibile con i principali sistemi operativi (Windows 7, Vista, XP - MacOS 10.3).', 'Navigazione senza fili più veloce\r\n \r\nConnessione di vari dispositivi\r\n \r\nTecnologia: ADSL/ADSL2+; velocità fino a 20 Mbps down/1 Mbps up\r\n \r\nWi-Fi: Wi-Fi 802.11 b/g/n; velocità di trasferimento fino a 300Mbps\r\n \r\nInterfacce:\r\nInterfacce USB alta velocità (480 Mbit/s) ad alta potenza (500 mA), 1 porta connettore tipo A Interfaccia Wi-FiStandard IEEE 802.11nInterfaccia radio 2.4Ghz, 2 antenne, velocità di trasmissione teorica 300 Mbps\r\n \r\nProtezione Wireless: WPA, WPA-PSK, WEP - Supporto Wi-Fi Protected Setup - Controllo di accesso\r\n \r\nFunzioni avanzate:\r\nFunzionalità di routing avanzate (DHCP server, NAT, NAPT, Virtual Server) - Firewall - Condivisione Hard Disk e Stampante USB\r\n \r\nAssistenza tecnica: 2 anni di garanzia sul prodotto\r\n \r\nContenuto della confezione :Guida di installazione; CD autoinstallante (compatibile con Windows 7, Vista, XP- MacOS 10.3); 1 filtro ADSL 2+; 1 cavo Telefonico; 1 cavo Ethernet', 4),
(12, 'Chiavetta TIM 42.2', 'chiavetta.jpg', 'La Chiavetta TIM 42.2 è un modem usb dalle prestazioni superiori, con tecnologia HSPA+, dotata di Slot Memory Card per Micro SD, supporta navigazione fino a 42.2 Mbps in ricezione ed è compatibile con, VISTA, Windows 7, Windows 8.1, Mac OS X', 'Tecnologia:  HSPA+/HSDPA/HSUPA/UMTS/EDGE/GPRS\n \nFrequenze:\nDC-HSPA+/HSPA+/HSUPA/HSDPA/UMTS UMTS900/2100MHz EGPRS/GSM 850/900/1800/1900MHz\n \nDimensioni:  25x86x9 mm\n \nPeso:  22 grammi\n \nRequisiti di sistema:\nWindows XP(32 bit), Vista (32/64 bit), Windows7 (32/64-bit), Windows 8.1 (32/64 bit) Modalità Desktop, 10.6.x,10.7.x, 10.8.x, 10.9.x\n \nIn dotazione:\nGuida Rapida - TIM Card con 5€ (IVA incl.) di traffico prepagato a titolo promozionale. Il costo di attivazione della TIM Card, pari a 5€ non viene applicato. La TIM Card non è inclusa nel package TIM Business. Il prodotto non può essere venduto separatamente dalla TIM Card', 4),
(13, 'Modem TIM 4G WI-FI', 'modem4g.jpg', 'L''innovativa tecnologia LTE (Long Term Evolution) consente di raggiungere fino a 70 Mbps in ricezione e 50 Mbps in trasmissione. Il Modem wifi TIM 4G LTE consente anche il collegamento Wi-Fi fino a 10 dispositivi. Il supporto memoria MicroSD Card fino a 32GB rende possibile condividere file tra gli utenti collegati.', '1 Modem 4G WI-FI\n1 mese di INTERNET 4G LTE\nTecnologia\n4G - DC-HSDPA - HSPA+ - HSDPA - HSUPA - EDGE/GPRS\n \nFrequenze\n4G: 800/1800/2600 Mhz, download fino a 70Mbps, upload fino a 50Mbps\nDC-HSDPA: 900/2100 Mhz, download fino a 42.2Mbps\nHSPA+: 900/2100 Mhz, download fino a 21.1 Mbps\nHSDPA: 900/2100 Mhz, download fino a 14.4 Mbps\nHSUPA: 900/2100 Mhz, upload fino a 5.76 Mbps\nEDGE/GPRS: 850/900/1800/1900 Mhz\n \nContenuto della Confezione\nModem 4G Wi-Fi - TIM Card con 5 euro di traffico prepagato incluso - Alimentatore da rete - Cavo USB - Guida rapida\n \nRequisiti di Sistema\nLa compatibilità è totale per tutti i dispositivi certificati Wi-Fi (802.11b/g/n).', 4),
(14, 'Modem Fibra', 'modemfibra.jpg', 'Con il Modem Fibra la Casa è Digitale!\n Il Modem Fibra è il centro digitale della Casa che ti permette di navigare ad altissime prestazioni grazie alla doppia banda Wi-Fi (a 2.4 Ghz e a 5 Ghz.) o in alternativa sfruttando le 4 porte Gigabit Ethernet offrendoti il vantaggio di condividere e visualizzare in modo semplice ed immediato contenuti Multimediali (Foto, Musica, Video) su Smart TV, Tablet, PC e Smartphone di ultima generazione sfruttando la tecnologia DLNA e collegando un Hard Disk o una chiavetta USB al modem.\nCollega i tuoi telefoni di casa direttamente al modem e naviga con tutti i PC, Tablet e Smartphone anche senza fili.\nSfrutta al massimo le performance della tua linea ADSL grazie alla doppia banda Wi-Fi N di ultima generazione.', 'Collegamento a PC, tablet, telefoni;\n \nNavigazione senza fili;\n \nBanda Wi-Fi a 2.4 Ghz e 5 Ghz\n \nRequisiti di sistema per la gestione dell’interfaccia modem da PC\nPrincipali browser inseriti di default sui sistemi operativi Windows 8, Windows 7, Vista, XP - MacOS 10.3 Wi-Fi: 802.11 b/g/n a 2.4 Ghz e 5 Ghz simultanee\n \nInterfacce:\n1 porta ADSL/VDSL - 1 porta WAN 4 porte Gigabit Ethernet - 1 Interfaccia Dect integrata - 1 porta PSTN 2 porte FXS per collegamento di telefoni - 2 porte USB per collegamento dischi e stampanti\n \nFunzioni avanzate:  Condivisione foto, musica e video, Hard Disk e stampanti\n \nRequisiti tecnici: Linea ADSL Flat o Fibra Ottica di Telecom Italia\n \nAssistenza tecnica:  2 anni di garanzia sul prodotto\n \nContenuto della confezione:\nModem Fibra, filtro DSL con 2 cavi telefonici già collegati, cavo Ethernet con connettori gialli, alimentatore\n  \n ', 4),
(15, 'D-Link SmartHome', 'smarthome.jpg', 'Con lo Smart Home HD Starter Kit potrai impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.\r\nNel Kit sono inclusi:\r\n- Un Monitor HD (DCS-935L) \r\n- Un Wi-Fi Motion Sensor (DCH-S150)\r\n- Una smart plug (DSP-W215) \r\n \r\nTramite l''App mydlink Home per smartphone e tablet hai a disposizione il controllo di tutti i dispositivi così da semplificarti la gestione della casa rendendola più sicura e intelligente.', 'SPECIFICHE SMART PLUG:\r\n• Telecomando intelligente\r\n• Notifiche push\r\n• Statistiche sul consumo energetico\r\n• Pianificazione energia\r\n• Protezione dal surriscaldamento\r\n \r\nSPECIFICHE Monitor HD DCS-935L:\r\n• Sensore CMOS progressivo 1/4” Megapixel\r\n• Distanza di illuminazione IR 5 metri\r\n• Illuminazione minima: 0 lux con LED IR attivi\r\n• Modulo filtro infrarossi (ICR) rimovibile integrato\r\n• Zoom digitale 4X\r\n• Obiettivo: lunghezza fissa 2,38 mm\r\n• Apertura: F2,4\r\n• Angolo di visione:\r\n• (H) 78,44°\r\n• (V) 47,9°\r\n• (D) 85,98°\r\n• Distanza minima oggetto: 434 mm\r\n• Microfono integrato\r\n \r\nSPECIFICHE SENSORE DI MOVIMENTO Wi-Fi DCH-S150\r\nInterfaccia dispositivo: • 802.11b/g/n wireless con cifratura WPA/WPA2 \r\n			 • Pulsante WPS/Pulsante di reset\r\nLED : Stato/WPS\r\nSensore PIR :  Portata del rilevamento 8 metri (100° orizzontale/80° verticale)\r\nAntenne:  Una antenna interna', 2),
(16, 'Apple Watch Sport 38', 'applewatch.jpg', 'Ogni collezione di Apple Watch è realizzata con leghe speciali, studiate per unire estetica e robustezza. La cassa di Apple Watch Sport e? in alluminio anodizzato color argento, grigio siderale, oro oppure oro rosa, mentre nei modelli Apple Watch e? in acciaio inossidabile colore naturale o nero siderale. La cassa e? disponibile in due misure: 38 mm e 42 mm. Abbiamo anche creato una gamma di cinturini intercambiabili in materiali esclusivi. Apple Watch usa tecnologie rivoluzionarie come la Digital Crown, il Taptic Engine e il Force Touch. E grazie a una batteria che dura fino a 18 ore, puoi usarlo tutto il giorno', 'Tecnologia	Cardiofrequenzimetro\n Accelerometro\n Giroscopio\n Sensore di luce\nConnettivita	Wi-Fi (802.11b/g/n a 2,4GHz)\n Bluetooth 4.0\nDisplay	Vetro Ion-X\n Display Retina con Force Touch\nMarca	Apple\n', 2),
(17, 'TIMTag', 'timtag.jpg', 'TIMTag è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. Segui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\n \n Con TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un'' App dedicata intuitiva e semplice da utilizzare! Tutto a soli 129!\n \n Con lapp TIMTag puoi:\n - Localizzare e seguire i tuoi amici a quattro zampe tramite le funzioni Dove è ora e Seguimi\n - Condividere con i tuoi cari le funzioni di localizzazione di TIMTag\n - Impostare allarmi di Movimento e uscita da un area di sicurezza in modo da ricevere direttamente sul tuo smartphone notifiche quando il tuo amico a quattro zampe si muove o esce da una determinata area da te definita\n - Visualizzare il percorso per raggiungere i tuoi amici a quattro zampe tramite la funzione Trovami\n - Gestire in maniera dinamica e intelligente la durata della batteria allinterno dellApp', 'Lopzione TIMTag in promo, include il traffico sia dati che SMSs dal Tracker GPS verso la piattaforma di servizio (max 50MB e 100SMS ogni 30 giorni) e lutilizzo dellApp TIMTag. Il Bundle dati e SMS previsto è calibrato per soddisfare le esigenze di un utilizzo continuativo del dispositivo.\n Il costo del Tracker GPS, della TIM Card e del servizio per i primi 12 mesi è di soli 129! \n \n Inoltre TIM ricorda:\n - L''offerta può essere attivata solo sulla TIM Card contenuta all''interno della confezione di TIMTag.\n - E possibile usufruire dellofferta se si ha credito sulla TIM Card.\n - Alla scadenza, salvo disdetta, TIMTag resterà attiva a 5 ogni mese con addebito su credito residuo della TIM Card. \n - È possibile avere informazioni sul servizio e sullo stato dellutenza contattando il Servizio Clienti 119.', 2),
(18, 'Samsung Smart TV', 'smarttv.jpg', 'È finita l''epoca del TV Tradizionale, con cui puoi solo guardare i canali TV. \nCon Samsung Smart TV hai un mondo di vantaggi in più.\nl nuovo Smart TV Samsung è così facile da usare che non avrai nemmeno bisogno di fermarti a riflettere. La nuova interfaccia è incredibilmente intuitiva e ti propone una vasta offerta d''intrattenimento e tante applicazioni di innegabile utilità, come il briefing quotidiano personalizzato e la possibilità di condividere i contenuti tra schermo e dispositivi mobili con un semplice click.\nSamsung Smart TV è il fulcro del tuo intrattenimento e il compagno ideale per la tua vita di tutti i giorni.', 'DIMENSIONI\nLarghezza: 112,9 cm\nProfondità: 25,5 cm\nAltezza: 68,9 cm\nPeso: 14,4kg\n \nSCHERMO\nDimensione: 50''''\nFormato schermo   16:9\nFrequenza:   900 Hertz\n \nSINTONIZZATORE TV\nAuto tuning\nSistema di ricezione: DVB-T2\n \nCARATTERISTICHE VIDEO:  \nUltra HD 4K\n \nCONNESSIONI:\nIngresso/Uscita AVHDMI, Component, Composite (AV), USB, Wifi\n \nCARATTERISTICHE AGGIUNTIVE: \nSoundbar HW-J250 inclusa', 2),
(19, 'Iphone 6S', 'iphone6s.jpg', 'Display Retina HD da 4,7" con 3D Touch. Alluminio serie 7000 e vetro più resistente. Chip A9 con architettura a 64 bit di livello desktop. Nuova fotocamera iSight da 12MP con Live Photos. Touch ID. Connessioni Wi-Fi e 4G LTE più veloci.1 Batteria a lunga durata.2 E ancora, iOS 9 e iCloud. Il tutto in un elegante guscio unibody.\r\nPREZZO iPHONE:     789,90 € (in un''unica soluzione)\r\noppure\r\n21,94 €/mese per 36 mesi senza interessi', 'Display: Display Retina HD da 4,7" (diagonale) con risoluzione di 1334x750 pixel\r\n3D Touch\r\n \r\nProcessore: Chip A9 con coprocessore di movimento M9 integrato\r\n \r\nFotocamera: Fotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos\r\n \r\nRegistrazione video: Registrazione video 4K a 30 fps, moviola (1080p) a 120 fps\r\n \r\nVideocamera: Videocamera FaceTime HD con Retina Flash (foto da 5MP)\r\n \r\nSensori: Touch ID di seconda generazione\r\n \r\nConnettivita: 4G LTE Advanced1 e Wi-Fi 802.11a/b/g/n/ac con tecnologia MIMO\r\n \r\nSistema Operativo: iOS 9 e iCloud\r\n \r\nColori: argento, oro, grigio siderale, oro rosa', 5),
(20, 'Samsung Galaxy TabS2', 'galaxytab4.jpg', 'Samsung Galaxy Tab S2 9.7 è un tablet Android di buon livello, fortemente votato all''imaging, in grado di soddisfare anche l''utente più esigente. Sorprende il display Touchscreen da 9.7 pollici che pone questo Samsung al vertice della categoria. Sul versante delle funzionalità a questo Samsung Galaxy Tab S2 9.7 non manca davvero nulla. Samsung Galaxy Tab S2 9.7 è un prodotto completo e tra i più sottili sul mercato. ', 'Connettivita:\r\nLTE cat.6/HSDPA 42.2/HSUPA 5.76/, Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 4.1, micro USB\r\n \r\nDisplay:  Display 9.7” TFT, 2048x1536 QXGA (4:3)\r\n \r\nDimensioni:  237,3x169,0x5,6 mm\r\n \r\nPeso:  392 gr\r\n \r\nAutonomia:  Stand-by fino a 250h, 30 ore in chiamata\r\n \r\nFotocamera:  Front: 2.1 MP - Back: 8 MP\r\n \r\nMemoria:\r\nInterna 32GB (espandibile fino a 128GB)\r\n3GB di Ram\r\n \r\nProcessore: Octa-core,1.9 GHz, 1.3 GHz\r\n \r\nSistemaOperativo: AndroidTM 5.0.2 (Lollipop)\r\n \r\nIn confezione\r\nCarica batteria, Cavo dati Usb, Manuale d’uso', 5),
(21, 'D-Link SmartHome', 'smarthome.jpg', 'Con lo Smart Home HD Starter Kit potrai impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.\r\nNel Kit sono inclusi:\r\n- Un Monitor HD (DCS-935L) \r\n- Un Wi-Fi Motion Sensor (DCH-S150)\r\n- Una smart plug (DSP-W215) \r\n \r\nTramite l''App mydlink Home per smartphone e tablet hai a disposizione il controllo di tutti i dispositivi così da semplificarti la gestione della casa rendendola più sicura e intelligente.', 'SPECIFICHE SMART PLUG:\r\n• Telecomando intelligente\r\n• Notifiche push\r\n• Statistiche sul consumo energetico\r\n• Pianificazione energia\r\n• Protezione dal surriscaldamento\r\n \r\nSPECIFICHE Monitor HD DCS-935L:\r\n• Sensore CMOS progressivo 1/4” Megapixel\r\n• Distanza di illuminazione IR 5 metri\r\n• Illuminazione minima: 0 lux con LED IR attivi\r\n• Modulo filtro infrarossi (ICR) rimovibile integrato\r\n• Zoom digitale 4X\r\n• Obiettivo: lunghezza fissa 2,38 mm\r\n• Apertura: F2,4\r\n• Angolo di visione:\r\n• (H) 78,44°\r\n• (V) 47,9°\r\n• (D) 85,98°\r\n• Distanza minima oggetto: 434 mm\r\n• Microfono integrato\r\n \r\nSPECIFICHE SENSORE DI MOVIMENTO Wi-Fi DCH-S150\r\nInterfaccia dispositivo: • 802.11b/g/n wireless con cifratura WPA/WPA2 \r\n			 • Pulsante WPS/Pulsante di reset\r\nLED : Stato/WPS\r\nSensore PIR :  Portata del rilevamento 8 metri (100° orizzontale/80° verticale)\r\nAntenne:  Una antenna interna', 5),
(22, 'Chiavetta TIM 42.2', 'chiavetta.jpg', 'La Chiavetta TIM 42.2 è un modem usb dalle prestazioni superiori, con tecnologia HSPA+, dotata di Slot Memory Card per Micro SD, supporta navigazione fino a 42.2 Mbps in ricezione ed è compatibile con, VISTA, Windows 7, Windows 8.1, Mac OS X', 'Tecnologia:  HSPA+/HSDPA/HSUPA/UMTS/EDGE/GPRS\r\n \r\nFrequenze:\r\nDC-HSPA+/HSPA+/HSUPA/HSDPA/UMTS UMTS900/2100MHz EGPRS/GSM 850/900/1800/1900MHz\r\n \r\nDimensioni:  25x86x9 mm\r\n \r\nPeso:  22 grammi\r\n \r\nRequisiti di sistema:\r\nWindows XP(32 bit), Vista (32/64 bit), Windows7 (32/64-bit), Windows 8.1 (32/64 bit) Modalità Desktop, 10.6.x,10.7.x, 10.8.x, 10.9.x\r\n \r\nIn dotazione:\r\nGuida Rapida - TIM Card con 5€ (IVA incl.) di traffico prepagato a titolo promozionale. Il costo di attivazione della TIM Card, pari a 5€ non viene applicato. La TIM Card non è inclusa nel package TIM Business. Il prodotto non può essere venduto separatamente dalla TIM Card', 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodottoServizioAss`
--

CREATE TABLE IF NOT EXISTS `prodottoServizioAss` (
  `idProdotto` int(11) NOT NULL,
  `idServizioAss` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `prodottoServizioAss`
--

INSERT INTO `prodottoServizioAss` (`idProdotto`, `idServizioAss`) VALUES
(1, 1),
(7, 2),
(11, 3),
(15, 4),
(3, 5),
(8, 6),
(16, 7),
(12, 3),
(1, 5),
(8, 2),
(6, 3),
(9, 4),
(12, 5),
(4, 6),
(2, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodottoServizioSmart`
--

CREATE TABLE IF NOT EXISTS `prodottoServizioSmart` (
  `idProdotto` int(10) NOT NULL,
  `idServizioSmart` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `prodottoServizioSmart`
--

INSERT INTO `prodottoServizioSmart` (`idProdotto`, `idServizioSmart`) VALUES
(1, 1),
(7, 11),
(11, 8),
(15, 5),
(1, 2),
(2, 4),
(3, 1),
(4, 3),
(5, 5),
(6, 8),
(7, 9),
(8, 10),
(9, 6),
(10, 11),
(11, 13),
(12, 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `serviziAssistenza`
--

CREATE TABLE IF NOT EXISTS `serviziAssistenza` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `descrizione` mediumtext COLLATE utf8_bin NOT NULL,
  `highlights` tinyint(1) NOT NULL DEFAULT '0',
  `idCat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dump dei dati per la tabella `serviziAssistenza`
--

INSERT INTO `serviziAssistenza` (`id`, `nome`, `descrizione`, `highlights`, `idCat`) VALUES
(1, 'Attivazione linea di casa', 'Richiedere l’attivazione di una linea telefonica di casa è molto semplice, puoi: richiederla online, chiamare il Servizio Clienti linea fissa 187, o recarti presso un Negozio TIM.', 1, 1),
(2, 'Trasloco', 'Il trasloco è un operazione che ti consente di spostare la tua linea telefonica presso una nuova abitazione, nella stessa città o in una città diversa. Puoi gestirla direttamente online basta registrarsi all’Area Clienti.', 0, 1),
(3, 'Ricarica Veloce', 'Il servizio Ricarica Veloce dal sito tim.it ti permette di ricaricare il tuo telefonino senza bisogno di registrarti:\\r\\nè sufficiente inserire i tuoi dati e in 3 click la tua linea è ricaricata!\\r\\n\\r\\nI tagli di ricarica partono da un minimo di 6€ ad un massimo di 150€.\\r\\n\\r\\nTi verranno richieste alcune semplici informazioni quali:\\r\\n\\r\\nil numero TIM da ricaricare.\\r\\nun indirizzo mail al quale inviarti la notifica di operazione effettuata.\\r\\ni dati della tua carta di credito o di PayPal.\\r\\nSono accettate le principali carte di credito emesse in Italia aderenti ai circuiti Visa, Mastercard (tra cui CartaSì, Postepay, Clarima e Bankamericard Deutsche Credit Card), American Express, Diners e carta Aura.\\r\\n\\r\\nN.B. Ti ricordiamo che se scegli la ricarica da 6€ avrai a disposizione 5€ di credito e 500 MMS da inviare verso tutti entro 30 giorni.', 0, 1),
(4, 'Come leggere la fattura', 'Passa a Conto Online e risparmi fino a 2 euro/mese per i costi di ricezione della fattura cartacea ', 1, 2),
(5, 'Verifica credito residuo', 'Il credito residuo disponibile, le offerte e lo stato dei bonus attivi sulla tua linea ricaricabile, sono consultabili attraverso le seguenti modalità:\\r\\n\\r\\nDirettamente dal tuo Smartphone, accedendo all’app MyTIM Mobile, attualmente disponibile in download gratuito nelle versioni per iPhone e per smartphone con sistema operativo Android.\\r\\nIn presenza di due o più bonus è prioritario quello con scadenza più immediata.\\r\\n\\r\\nTi ricordiamo che il bonus in euro non può essere utilizzato per le chiamate internazionali, per le chiamate verso numerazioni non geografiche (in Italia e all’estero) e per il traffico roaming (ad eccezione del traffico roaming dati).', 1, 3),
(6, 'Prima Installazione', 'Se hai attivato l''''offerta TIM SMART FIBRA con opzione autoinstallante, segui le indicazioni riportate nelle guide e nel video per il primo collegamento del modem Fibra di TIM e dei telefoni.\\r\\nLa confezione di Fibra autoinstallante contiene\\r\\n\\r\\nla scatola del modem Fibra con relativo alimentatore, filtro e i cavi di collegamento\\r\\nla scatola contenente i due cordless\\r\\nla guida specifica per Fibra autoinstallante.', 0, 2),
(7, 'Cos’è TIMmusic', 'TIMmusic è la piattaforma di musica digitale di Telecomitalia dedicata a tutti i clienti che hanno uno smartphone/tablet TIM o una linea ADSL o Fibra  residenziale Telecom Italia o una chiavetta Internet TIM.\\r\\n\\r\\nCon TIMmusic puoi ascoltare milioni di brani in streaming senza limiti di tempo sul tuo smartphone e tablet o sul PC (clienti ADSL e Fibra Residenziale Telecom Italia o con chiavetta Internet TIM). Puoi  creare tue playlist personali o ascoltare quelle suggerite da dj e artisti famosi e condividere tutto sui principali social network. Il catalogo è sempre aggiornato con tutte le ultime uscite discografiche, spesso anche in anteprima esclusiva. E , se sei su mobile, non consumi GB perchè il traffico dati per l’ascolto di musica è incluso nel costo dell’abbonamento.', 1, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `serviziSmart`
--

CREATE TABLE IF NOT EXISTS `serviziSmart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin NOT NULL,
  `descrizione` mediumtext COLLATE utf8_bin NOT NULL,
  `attivazione` mediumtext COLLATE utf8_bin NOT NULL,
  `idCat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=15 ;

--
-- Dump dei dati per la tabella `serviziSmart`
--

INSERT INTO `serviziSmart` (`id`, `nome`, `foto`, `descrizione`, `attivazione`, `idCat`) VALUES
(1, 'Tim Music', 'tim-music.jpg', 'Con TIMmusic puoi ascoltare musica in streaming senza limiti di tempo scegliendo da un vastissimo catalogo di milioni di brani musicali nazionali e internazionali di ogni genere, sempre aggiornato con le ultime uscite discografiche.\nTIMmusic ti consente anche di creare e salvare le tue playlist personali o di ascoltare quelle suggerite da Dj e artisti famosi in esclusiva per te. Inoltre puoi scegliere tra tante playlist proposte per genere e per tema o create dinamicamente dalla piattaforma in base alla musica che stai ascoltando.\nTIMmusic è la piattaforma per la musica digitale di TIM dedicata a tutti i clienti che hanno una linea ADSL Residenziale o Fibra TIM e uno smartphone TIM.\nIl servizio offre la possibilità di condividere i tuoi gusti musicali con amici e altri utenti anche attraverso i social network. \nTIMmusic è un contenitore di ricordi ed emozioni, ideale per rivivere i momenti speciali che hanno avuto come protagonista la musica.', 'Con l''''abbonamento TIMmusic ascolti in streaming illimitato, ad alta qualità e senza pubblicità, a 7,99€/mese IVA inclusa.\nEd ora, se sei un cliente ADSL e Fibra residenziale Flat TIM che aderisce all’offerta per la prima volta, puoi fruire del primo mese di abbonamento al prezzo scontato di 1,99€ i.i. Dopo i primi 30 giorni il servizio rimane attivo a 7,99€/mese.\nIl servizio TIMmusica è fruibile anche da Smartphone e Tablet Android, iPhone/iPad e Windows®Phone ed è riservato ai clienti TIM.\nScarica gratis l’App dallo store del tuo smartphone/tablet* e prova subito TIMmusic gratis per 48H!\nDopo le 48H di prova gratuita potrai decidere di continuare ad ascoltare tutta la musica che vuoi abbonandoti a TIMmusic a 7.99 € /mese, con il 1° mese scontato a 1,99€!\nE in più non consumi GB! Infatti il traffico dati per lo streaming è incluso su rete 3G/4G!\nCOME ABBONARSI?\nPuoi abbonarti chiamando il 119.', 1),
(2, 'Tim Reading', 'tim-reading.jpg', 'Porta sempre con te su Smartphone e Tablet i tuoi eBook preferiti, segui tutte le tue passioni scegliendo tra i magazine più amati e sfoglia il tuo quotidiano dalle prime ore del mattino. Su TIMreading trovi ciò che ami leggere, dove e quando vuoi.\n \n Tim Reading quotidiani di qualsiasi tipo, magazine e una vasta gamma di ebook, per non farti mai mancare qualcosa da leggere.\n', 'Su TIMreading puoi acquistare eBook, quotidiani e magazine con queste modalità:\n \n -tutti i contenuti (eBook, quotidiani e Magazine) sono acquistabili da PC e Tablet accedendo al sito www.timreading.it e navigando nel catalogo\n -gli eBook sono acquistabili anche da Smartphone tramite il sito mobile m.timreading.it. In questo caso, per completare l''acquisto, devi aver precedentemente configurato lo strumento di pagamento sul tuo profilo\n -gli eBook e Magazine sono acquistabili anche tramite l App TIMreading per Smartphone e Tablet Android, nella sezione SHOP (l''App per Smartphone consente l''acquisto dei soli eBook). In questo caso, per completare l''acquisto, devi aver precedentemente configurato lo strumento di pagamento sul tuo profilo.', 1),
(3, 'Tim Games', 'timgames.jpg', 'Entra nel fantastico mondo dei giochi  con TIMgames e  scopri le ultime novità, i giochi preferiti dagli altri, i consigli della redazione, le promozioni e le offerte disponibili. Per curiosare gratuitamente, scarica l’app sul tuo telefonino ed entra con un click.\nSparatutto, Sport estremi, i migliori Classici e molto altro ancora…\nCon TIMgames hai a disposizione più di 1.500 giochi per divertirti dove e quando vuoi. Un catalogo sempre aggiornato a tua completa disposizione!\n \nScarica l’app TIMgames, oppure vai sul sito mobile www.timgames.it e scegli tutti i giochi che vuoi nella formula che preferisci:\n- On Demand,  a partire da solo 0,49 cent (IVA inclusa);\n- In abbonamento, attivando l’offerta I Love Games Promo, a solo 1€ a settimana per il primo mese, potrai scaricare tutti i giochi che vuoi senza limiti.\n \nDivertiti con i giochi del momento all’interno della sezione novità, oppure seleziona le migliori occasioni a prezzi vantaggiosissimi nella sezione Promozioni.\nIl servizio è riservato ai clienti TIM maggiorenni.\nScopri Timgames dedicato ai tuoi devices!', 'Prova Gratis\n \n \n \nCon TIMgames puoi scaricare e provare senza alcun costo i giochi proposti nella sezione Prova Gratis. Dopo aver provato gratuitamente il gioco un messaggio ti avvertirà che il periodo gratuito è terminato e potrai scegliere se acquistare i gioco  nella modalità che preferisci tra: noleggio per 2 giorni o acquisto illimitato al prezzo indicato.\n \n \n \nDownload Giochi\n \n \n \nPuoi acquistare i giochi tra quelli proposti per il tuo telefonino al prezzo indicato per ciascun prodotto. Per visualizzare gli ultimi giochi acquistasti visita la sezione MyTIMgames. Da questa sezione potrai anche riscaricare gratuitamente una volta sullo stesso telefono i giochi acquistati.\n \n \n \nLa registrazione al servizio e l''acquisto di beni digitali è riservata a clienti TIM maggiorenni.\n \n \n \nCosti di fruizione del servizio\n \n \n \nI costi di navigazione all’interno del servizio TIMgames e i costi  di download dei contenuti sono gratuitamente inclusi nel servizio in caso di accesso da rete TIM 3G/4G. Alcuni giochi potrebbero necessitare di una connessione per completarne l''installazione o durante l''utilizzo, si consiglia la connessione tramite Wi-Fi. In caso di connessione mobile i costi seguono il profilo tariffario del cliente.\n \n \n ', 1),
(4, 'Tim Vision', 'tim-vision.png', 'TIMvision è la TV sempre on demand di TIM che non ti abbandona mai, senza pubblicità e anche da più dispositivi  contemporaneamente. \nVedi i tuoi programmi preferiti direttamente su Web e TV anche su Smartphone e Tablet senza consumare GB.\nL’abbonamento TIMvision ti offre un ricco catalogo da cui scegliere i contenuti che preferisci, in Cinema, Serie, Junior, Programmi TV, Musica e Documentari a soli 5€ al mese anzichè 10 euro al mese.\n \nCon l’offerta serie TV tutti gli episodi delle migliori serie da vedere tutte d’un fiato; dalle anteprime esclusive come American Crime, Flesh and Bone o la seconda stagione di The Royals. E poi scopri tutte le stagioni di Black Sails, Dexter, 24, Californication e tante altre.\n \nScopri Timvision per i tuoi device!', 'ABBONAMENTO TIMvision\n \nL’abbonamento TIMvision è riservato ai Clienti connessi con Rete mobile, maggiorenni, dura 30 giorni dalla data di attivazione e si rinnova automaticamente ogni 30 giorni, salvo disattivazione. Il costo è di soli 5€/mese, valido per attivazioni entro il 30/06/2016\n \nL'' abbonamento ti permette di guardare tutti i titoli della sezione cinema con le anteprime più attese ed i classici che ami rivedere, un ricchissimo catalogo di serie TV da vedere tutte di fila e un''imperdibile scelta di cartoni animati e serie per bambini. Goditi la visione quando e dove vuoi: anche su Smart TV e Web, utilizzando le credenziali scelte al momento della registrazione.', 1),
(5, 'Samsung Galaxy GearS', 'galaxygear.jpg', 'Un elegante display Super AMOLED curvo per una vestibilità ottimale, schermate personalizzabili e cinturini intercambiabili per esprimere al meglio il proprio stile!\r\nCaratteristiche:\r\n- Orologio Multifunzione Intelligente\r\n- Display 2” curved SuperAMOLED\r\n- Processore DualCore 1GHz\r\n- Certificazione IP67', 'Connettivita:\r\nHSDPA 21Mbps/UMTS/EDGE/GPRS - Wi-Fi - Bluetooth - **Micro USB\r\n \r\nFrequenze:\r\n2G: 900/1800 - 3G: 900/2100\r\n \r\nDisplay:  Touch da 2”\r\n \r\nFormato SIM:  Nano\r\n \r\nMemoria interna:  4GB*\r\n \r\nAltro:\r\nNotifiche, Chiamate, SMS, S Health,Lettore musicale, Meteo, Navigatore, Comandi vocali, Running\r\nDownload ulteriori applicazioni tramite il Samsung Gear Apps\r\n \r\nIn dotazione:\r\n** Supporto per la carica Micro USB - Carica batteria - Guida di riferimento rapido\r\n \r\nDimensioni:  39,9 x 58,1 x 12,5 mm		Peso:  84 gr.\r\n \r\nBatteria: 300mAh\r\n \r\nNote\r\n(*) Memoria interna: Parte della memoria interna indicata è utilizzata dal sistema operativo e dalle applicazioni preinstallate', 2),
(6, 'Sony Smartband FE', 'smartband.jpg', 'Sensori\n Easy Pairing NFC, Accelerometro e Giroscopio\n \n Compatibilità\n Dispositivi Android 4.4\n \n Servizi e applicazioni\n Lifeblog, il tuo diario multimediale personale\n \n Connettivita\n Bluetooth 4.0 Low Energy\n \n Dimensioni braccialetto\n 250 mm\n \n Dimensioni modulo\n 40,7 x 15,3 x 7,8 mm\n \n Peso\n 27 gr.\n \n Batteria\n 35mAh\n', 'Tecnologia	Easy Pairing NFC, Accelerometro e Giroscopio e Lifeblog, il tuo\nConnettivita	Bluetooth 4.0 Low Energy\nDimensioni	braccialetto: 250 mm \n m\nPeso	27 gr.\nMarca	Sony\nVoto	3\nPopolarita	7', 2),
(7, 'Polar Loop  h7 HR', 'polarloop.jpg', '', '', 2),
(8, 'Tim Tag', 'tim-tag.png', 'TIMTag è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. Segui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\r\n \r\nCon TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un'' App dedicata intuitiva e semplice da utilizzare! Tutto a soli 129€!\r\n \r\nCon l’app TIMTag puoi:\r\n- Localizzare e seguire i tuoi amici a quattro zampe tramite le funzioni “Dove è ora” e “Seguimi”\r\n- Condividere con i tuoi cari le funzioni di localizzazione di TIMTag\r\n- Impostare allarmi di “Movimento” e uscita da un area di sicurezza in modo da ricevere direttamente sul tuo smartphone notifiche quando il tuo amico a quattro zampe si muove o esce da una determinata area da te definita\r\n- Visualizzare il percorso per raggiungere i tuoi amici a quattro zampe tramite la funzione “Trovami”\r\n- Gestire in maniera dinamica e intelligente la durata della batteria all’interno dell’App', 'L’opzione TIMTag in promo, include il traffico sia dati che SMSs dal Tracker GPS verso la piattaforma di servizio (max 50MB e 100SMS ogni 30 giorni) e l’utilizzo dell’App TIMTag. Il Bundle dati e SMS previsto è calibrato per soddisfare le esigenze di un utilizzo continuativo del dispositivo.\r\nIl costo del Tracker GPS, della TIM Card e del servizio per i primi 12 mesi è di soli 129€! \r\n \r\nInoltre TIM ricorda:\r\n- L''offerta può essere attivata solo sulla TIM Card contenuta all''interno della confezione di TIMTag.\r\n- E’ possibile usufruire dell’offerta se si ha credito sulla TIM Card.\r\n- Alla scadenza, salvo disdetta, TIMTag resterà attiva a 5€ ogni mese con addebito su credito residuo della TIM Card. \r\n- È possibile avere informazioni sul servizio e sullo stato dell’utenza contattando il Servizio Clienti 119.', 3),
(9, 'Tim Home Connect', 'big-tim-home.png', 'TIM Home Connect è lofferta pensata per essere utilizzata nei dispositivi di domotica presenti nella casa, la cui gestione prevede l''uso di una SIM,\n dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai più avanzati sistemi di monitoraggio.\n \n Con Tim Home Connect infatti hai a disposizione minuti, MB e SMS da utilizzare per connettere e gestire il tuo antifurto, la tua caldaia o altri sistemi di domotica.\n \n L''offerta prevede ogni 30 giorni:\n \n 20 minuti di chiamate\n 100 MB di traffico Internet\n 100 SMS verso tutti\n \n Scegli la soluzione ideale per te\n \n TIM Home Connect 24\n ?24 mesi senza pensieri! A partire dal 25° mese lofferta continuerà ad essere fruibile ad un costo di 3 al mese.\n \n 36\n \n \n \n \n \n TIM Home Connect 12\n 12 mesi senza pensieri! A partire dal 13° mese lofferta continuerà ad essere fruibile ad un costo di 3 al mese.', 'Se sei già in possesso di una TIM Card, direttamente online cliccando sul tasto ATTIVA\n \n >Presso i Negozi TIM\n \n \n N.B: Tutti i prezzi sono IVA inclusa.\n L''offerta è valida per clienti ricaricabili.\n La possibilità di utilizzare i servizi radiomobili inclusi nellofferta dipende dalle caratteristiche tecniche del dispositivo di domotica a cui si associa la TIM Card.', 3),
(10, 'Life 360', 'life360.png', 'Life 360\nAttraverso la tecnologia di localizzazione GPS più moderna, l''app ti permette di vedere su una mappa privata la posizione dei membri del gruppo, ricevere un avviso quando una persona di un gruppo raggiunge una destinazione, rintracciare un telefono smarrito o rubato.', '', 3),
(11, 'Trasporti', 'big-trasporti.png', '\n Compra un biglietto via SMS e pagalo direttamente con il tuo credito telefonico:\n \n -SCEGLI LA CITTA\n \n Entra nella Vetrina dei servizi e scopri se il servizio è già attivo nella tua città\n \n -ACQUISTA IL BIGLIETTO\n \n Seleziona la tipologia di biglietto e acquistalo direttamente con il tuo credito telefonico\n \n -VISUALIZZA IL BIGLIETTO\n \n Trovi subito il biglietto valido nella sezione Trasporti del tuo TIM Wallet', 'Apri TIM Wallet e accedi alla Vetrina Servizi. \n Se la città che ti interessa é abilitata, clicca e acquista il biglietto. \n Paghi direttamente con il tuo credito telefonico (se sei un Cliente Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento). \n \n Attenzione: ti verranno addebitati il costo del biglietto piu? il costo dellSMS di richiesta (19,90 cent IVA inclusa). \n \n Ricevi un SMS, il biglietto è valido da quel momento senza necessità di ulteriori convalide. \n Puoi trovare il biglietto elettronico direttamente nel TIM Wallet nel tuo portafogli, puoi rinnovarlo quando scade. In caso di controllo, mostra lSMS di conferma che hai ricevuto.\n \n A Milano puoi utilizzare anche la modalità QRCode. Dopo aver acquistato il biglietto della metropolitana e ricevuto lSMS, ricevi anche il QRCode che permette di aprire i tornelli della metropolitana. E sufficiente visualizzare il QRCode e accostare il display dello smartphone allapposito lettore.', 4),
(12, 'Pagamenti', 'big-pagamenti.png', 'TIM WALLET è:\n \n -SICURO\n \n I dati della tua carta di credito o prepagata sono memorizzati in modo confidenziale e protetto sulla TIM Card\n \n -SEMPLICE E VELOCE\n \n Basta un tocco per scegliere la carta con cui effettuare i tuoi acquisti\n \n -COMODO\n \n Lasci il portafoglio a casa e utilizzi lo smartphone per avere a disposizione le tue carte.\n ', '\n Per attivare il servizio: \n \n 1-Ritira la TIM Card NFC:\n \n Per utilizzare in pieno tutti i servizi offerti da TIM Wallet ti suggeriamo di utilizzare una TIM Card NFC.	Richiedi il cambio carta in un Negozio TIM, oppure diventa un cliente TIM acquistandone una nuova! Ricorda, il servizio di pagamenti è disponibile solo per le TIM Card NFC.\n \n 2-SMARTPHONE NFC\n \n Scopri tutti gli smartphone che sono abilitati allutilizzo dei servizi di pagamento. Controlla la lista dei terminali compatibili, certificati per garantire i requisiti di sicurezza di banche e circuiti di pagamento.\n \n 3-TIM Wallet Attivo\n \n Ricordati di scaricare lapp TIM Wallet e di attivarlo accedendo almeno una volta al servizio.', 4),
(13, 'Fidelity Card', 'fidelitycard.png', 'Con TIM Wallet puoi virtualizzare le tue carte fedeltà e portarle sempre con te. \n Accedi alla Vetrina Servizi e in pochi passaggi puoi acquisire tutte le tue carte fedeltà. \n Inquadra la carta nel riquadro e attendi che venga riconosciuta. \n Il riconoscimento della tessera é automatico, tuttavia se la tessera non viene riconosciuta tra le carte presenti puoi comunque aggiungerla utilizzando la fotocamera del tuo smartphone: seleziona il tipo di codice riportato sulla tessera (codice a barre, QRCode o codice numerico) e inquadralo. Se il codice non viene riconosciuto automaticamente, può essere inserito anche manualmente. \n In breve puoi vedere la tessera nel portafogli. \n Puoi mostrarla nei punti vendita abilitati direttamente dal tuo smartphone: se clicchi sull''immagine della carta in automatico ruota e ti mostra il codice a barre (attenzione: non tutti i punti vendita hanno i lettori di codice a barre abilitati!)', '\n 3semplici passi:\n \n -INQUADRA LA TESSERA\n \n Utilizza la fotocamera per aggiungere una carta\n \n -RICONOSCIMENTO AUTOMATICO\n \n La tessera viene riconosciuta in automatico e la trovi nel tuo TIM Wallet\n \n -UTILIZZA LE CARTE\n \n Apri il wallet e mostra le carte fedeltà nei punti vendita', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
