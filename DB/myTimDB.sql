-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Creato il: Lug 16, 2016 alle 16:41
-- Versione del server: 10.1.13-MariaDB
-- Versione PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myTimDB`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `categorieAssistenza`
--

CREATE TABLE `categorieAssistenza` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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

CREATE TABLE `categorieProdotti` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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

CREATE TABLE `categorieSmartLife` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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

CREATE TABLE `prodotti` (
  `id` int(10) NOT NULL,
  `nome` varchar(20) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin NOT NULL,
  `descrizione` mediumtext COLLATE utf8_bin NOT NULL,
  `caratteristiche` mediumtext COLLATE utf8_bin NOT NULL,
  `idCat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`id`, `nome`, `foto`, `descrizione`, `caratteristiche`, `idCat`) VALUES
(1, 'Iphone 6S', 'iphone6s.jpg', 'Display Retina HD da 4,7" con 3D Touch. Alluminio serie 7000 e vetro più resistente. Chip A9 con architettura a 64 bit di livello desktop. Nuova fotocamera iSight da 12MP con Live Photos. Touch ID. Connessioni Wi-Fi e 4G LTE più veloci.1 Batteria a lunga durata.2 E ancora, iOS 9 e iCloud. Il tutto in un elegante guscio unibody.\r\nPREZZO iPHONE:     789,90 € (in un''unica soluzione)\r\noppure\r\n21,94 €/mese per 36 mesi senza interessi', 'Display: Display Retina HD da 4,7" (diagonale) con risoluzione di 1334x750 pixel\r\n3D Touch\r\n \r\nProcessore: Chip A9 con coprocessore di movimento M9 integrato\r\n \r\nFotocamera: Fotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos\r\n \r\nRegistrazione video: Registrazione video 4K a 30 fps, moviola (1080p) a 120 fps\r\n \r\nVideocamera: Videocamera FaceTime HD con Retina Flash (foto da 5MP)\r\n \r\nSensori: Touch ID di seconda generazione\r\n \r\nConnettivita: 4G LTE Advanced1 e Wi-Fi 802.11a/b/g/n/ac con tecnologia MIMO\r\n \r\nSistema Operativo: iOS 9 e iCloud\r\n \r\nColori: argento, oro, grigio siderale, oro rosa', 1),
(2, 'Sony Xperia Z3', 'sony.jpg', '', '', 1),
(3, 'Samsung Galaxy S7', 'samsungs7.jpg', '', '', 1),
(4, 'Huawei P9', 'huaweip9.jpg', '', '', 1),
(5, 'LG Nexus 5X 32GB ', '', '', '', 1),
(6, 'Microsoft Lumia 640', '', '', '', 1),
(7, 'Apple iPad Pro 9.7"', 'ipadpro.jpg', 'iPad Pro 9,7” è un concentrato mai visto di portatilità e prestazioni. È spesso solo 6,1 millimetri e pesa meno di 500 grammi, ma ha il display Retina più luminoso ed evoluto di sempre: con i suoi sensori True Tone si adegua alla luce ambientale, così gli occhi non si affaticano. In più hai il potente chip A9X a 64 bit di livello desktop, audio a quattro altoparlanti, fotocamera iSight e videocamera FaceTime HD, sensore di impronte digitali Touch ID, connessioni ultraveloci su Wi-Fi e 4G LTE e fino a 10 ore di autonomia.2 Advanced,1 ancora di più? Aggiungi l’ultraprecisa Apple Pencil e la Smart Keyboard, e iPad Pro ti diventerà ancora più indispensabile\r\n ', 'Sistema Operativo iOS 9\r\n \r\nDisplay: Retina Display 9,7” (diagonale) con True Tone e rivestimento antiriflesso\r\n \r\nSensori: Impronte digitali Touch ID\r\n \r\nProcessore: Chip A9X di terza generazione con architettura a 64 bit di livello desktop\r\n \r\nFotocamera: iSight da 12MP con video a 4K\r\n \r\nConnettivita'' :\r\n4G LTE Advanced1, Wi-Fi 802.11ac con tecnologia MIMO\r\n \r\nBatteria: Fino a 10 ore di autonomia', 3),
(8, 'Acer ICONIA W4 821', '', '', '', 3),
(9, 'Samsung Galaxy TabS2', '', '', '', 3),
(10, 'Huawei Mediapad T110', '', '', '', 3),
(11, 'Modem ADSL Wi-Fi', 'modemtim.jpg', 'Navigazione veloce e senza fili\r\n \r\nCon il Modem ADSL Wi-Fi navighi ad alta velocità e senza fili, utilizzando l''interfaccia Wi-Fi o attraverso le 4 porte Ethernet.\r\n \r\nNavigazione più veloce grazie alla tecnologia senza fili Wi-Fi e migliore copertura della rete Wi-Fi della tua abitazione.\r\nProtezione: la cifratura WPA e WPA2 impedisce l’accesso ai non autorizzati alla rete Wi-Fi. Disponibili anche funzionalità avanzate come il filtro degli indirizzi MAC ed il firewall integrato.\r\nTutta la famiglia connessa: collega tutti i PC, smartphone e tablet al nuovo modem ADSL Wi-Fi e inoltre condividi Hard Disk e stampanti collegati alla porta USB del modem.\r\nInstallazione no problem: il modem si configura automaticamente sulla tua linea ADSL, senza installare software.\r\nRisparmia sulla bolletta elettrica: il nuovo modem, rispetto ad un prodotto Telecom Italia di generazione precedente con le stesse funzionalità, consente di risparmiare fino al 40% di energia elettrica su un utilizzo medio annuo.\r\nIl Modem Wi-Fi opera solo su linea ADSL di Telecom Italia ed è compatibile con i principali sistemi operativi (Windows 7, Vista, XP - MacOS 10.3).', 'Navigazione senza fili più veloce\r\n \r\nConnessione di vari dispositivi\r\n \r\nTecnologia: ADSL/ADSL2+; velocità fino a 20 Mbps down/1 Mbps up\r\n \r\nWi-Fi: Wi-Fi 802.11 b/g/n; velocità di trasferimento fino a 300Mbps\r\n \r\nInterfacce:\r\nInterfacce USB alta velocità (480 Mbit/s) ad alta potenza (500 mA), 1 porta connettore tipo A Interfaccia Wi-FiStandard IEEE 802.11nInterfaccia radio 2.4Ghz, 2 antenne, velocità di trasmissione teorica 300 Mbps\r\n \r\nProtezione Wireless: WPA, WPA-PSK, WEP - Supporto Wi-Fi Protected Setup - Controllo di accesso\r\n \r\nFunzioni avanzate:\r\nFunzionalità di routing avanzate (DHCP server, NAT, NAPT, Virtual Server) - Firewall - Condivisione Hard Disk e Stampante USB\r\n \r\nAssistenza tecnica: 2 anni di garanzia sul prodotto\r\n \r\nContenuto della confezione :Guida di installazione; CD autoinstallante (compatibile con Windows 7, Vista, XP- MacOS 10.3); 1 filtro ADSL 2+; 1 cavo Telefonico; 1 cavo Ethernet', 4),
(12, 'Chiavetta TIM 42.2', '', '', '', 4),
(13, 'Modem TIM 4G WI-FI', '', '', '', 4),
(14, 'Modem Fibra', '', '', '', 4),
(15, 'D-Link SmartHome', 'smarthome.jpg', 'Con lo Smart Home HD Starter Kit potrai impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.\r\nNel Kit sono inclusi:\r\n- Un Monitor HD (DCS-935L) \r\n- Un Wi-Fi Motion Sensor (DCH-S150)\r\n- Una smart plug (DSP-W215) \r\n \r\nTramite l''App mydlink Home per smartphone e tablet hai a disposizione il controllo di tutti i dispositivi così da semplificarti la gestione della casa rendendola più sicura e intelligente.', 'SPECIFICHE SMART PLUG:\r\n• Telecomando intelligente\r\n• Notifiche push\r\n• Statistiche sul consumo energetico\r\n• Pianificazione energia\r\n• Protezione dal surriscaldamento\r\n \r\nSPECIFICHE Monitor HD DCS-935L:\r\n• Sensore CMOS progressivo 1/4” Megapixel\r\n• Distanza di illuminazione IR 5 metri\r\n• Illuminazione minima: 0 lux con LED IR attivi\r\n• Modulo filtro infrarossi (ICR) rimovibile integrato\r\n• Zoom digitale 4X\r\n• Obiettivo: lunghezza fissa 2,38 mm\r\n• Apertura: F2,4\r\n• Angolo di visione:\r\n• (H) 78,44°\r\n• (V) 47,9°\r\n• (D) 85,98°\r\n• Distanza minima oggetto: 434 mm\r\n• Microfono integrato\r\n \r\nSPECIFICHE SENSORE DI MOVIMENTO Wi-Fi DCH-S150\r\nInterfaccia dispositivo: • 802.11b/g/n wireless con cifratura WPA/WPA2 \r\n			 • Pulsante WPS/Pulsante di reset\r\nLED : Stato/WPS\r\nSensore PIR :  Portata del rilevamento 8 metri (100° orizzontale/80° verticale)\r\nAntenne:  Una antenna interna', 2),
(16, 'Apple Watch Sport 38', '', '', '', 2),
(17, 'TIMTag', '', '', '', 2),
(18, 'Samsung Smart TV', '', '', '', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodottoServizioAss`
--

CREATE TABLE `prodottoServizioAss` (
  `idProdotto` int(11) NOT NULL,
  `idServizioAss` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `prodottoServizioAss`
--

INSERT INTO `prodottoServizioAss` (`idProdotto`, `idServizioAss`) VALUES
(1, 1),
(7, 2),
(11, 3),
(15, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodottoServizioSmart`
--

CREATE TABLE `prodottoServizioSmart` (
  `idProdotto` int(10) NOT NULL,
  `idServizioSmart` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `prodottoServizioSmart`
--

INSERT INTO `prodottoServizioSmart` (`idProdotto`, `idServizioSmart`) VALUES
(1, 1),
(7, 11),
(11, 8),
(15, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `serviziAssistenza`
--

CREATE TABLE `serviziAssistenza` (
  `id` int(10) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `descrizione` mediumtext COLLATE utf8_bin NOT NULL,
  `highlights` tinyint(1) NOT NULL DEFAULT '0',
  `idCat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `serviziAssistenza`
--

INSERT INTO `serviziAssistenza` (`id`, `nome`, `descrizione`, `highlights`, `idCat`) VALUES
(1, 'Attivazione linea di casa', 'Richiedere l’attivazione di una linea telefonica di casa è molto semplice, puoi: richiederla online, chiamare il Servizio Clienti linea fissa 187, o recarti presso un Negozio TIM.', 0, 1),
(2, 'Trasloco', 'Il trasloco è un operazione che ti consente di spostare la tua linea telefonica presso una nuova abitazione, nella stessa città o in una città diversa. Puoi gestirla direttamente online basta registrarsi all’Area Clienti.', 0, 1),
(3, 'Ricarica Veloce', 'Il servizio Ricarica Veloce dal sito tim.it ti permette di ricaricare il tuo telefonino senza bisogno di registrarti:\\r\\nè sufficiente inserire i tuoi dati e in 3 click la tua linea è ricaricata!\\r\\n\\r\\nI tagli di ricarica partono da un minimo di 6€ ad un massimo di 150€.\\r\\n\\r\\nTi verranno richieste alcune semplici informazioni quali:\\r\\n\\r\\nil numero TIM da ricaricare.\\r\\nun indirizzo mail al quale inviarti la notifica di operazione effettuata.\\r\\ni dati della tua carta di credito o di PayPal.\\r\\nSono accettate le principali carte di credito emesse in Italia aderenti ai circuiti Visa, Mastercard (tra cui CartaSì, Postepay, Clarima e Bankamericard Deutsche Credit Card), American Express, Diners e carta Aura.\\r\\n\\r\\nN.B. Ti ricordiamo che se scegli la ricarica da 6€ avrai a disposizione 5€ di credito e 500 MMS da inviare verso tutti entro 30 giorni.', 0, 1),
(4, 'Come leggere la fattura', 'Passa a Conto Online e risparmi fino a 2 euro/mese per i costi di ricezione della fattura cartacea ', 0, 2),
(5, 'Verifica credito residuo', 'Il credito residuo disponibile, le offerte e lo stato dei bonus attivi sulla tua linea ricaricabile, sono consultabili attraverso le seguenti modalità:\\r\\n\\r\\nDirettamente dal tuo Smartphone, accedendo all’app MyTIM Mobile, attualmente disponibile in download gratuito nelle versioni per iPhone e per smartphone con sistema operativo Android.\\r\\nIn presenza di due o più bonus è prioritario quello con scadenza più immediata.\\r\\n\\r\\nTi ricordiamo che il bonus in euro non può essere utilizzato per le chiamate internazionali, per le chiamate verso numerazioni non geografiche (in Italia e all’estero) e per il traffico roaming (ad eccezione del traffico roaming dati).', 0, 3),
(6, 'Prima Installazione', 'Se hai attivato l''''offerta TIM SMART FIBRA con opzione autoinstallante, segui le indicazioni riportate nelle guide e nel video per il primo collegamento del modem Fibra di TIM e dei telefoni.\\r\\nLa confezione di Fibra autoinstallante contiene\\r\\n\\r\\nla scatola del modem Fibra con relativo alimentatore, filtro e i cavi di collegamento\\r\\nla scatola contenente i due cordless\\r\\nla guida specifica per Fibra autoinstallante.', 0, 2),
(7, 'Cos’è TIMmusic', 'TIMmusic è la piattaforma di musica digitale di Telecomitalia dedicata a tutti i clienti che hanno uno smartphone/tablet TIM o una linea ADSL o Fibra  residenziale Telecom Italia o una chiavetta Internet TIM.\\r\\n\\r\\nCon TIMmusic puoi ascoltare milioni di brani in streaming senza limiti di tempo sul tuo smartphone e tablet o sul PC (clienti ADSL e Fibra Residenziale Telecom Italia o con chiavetta Internet TIM). Puoi  creare tue playlist personali o ascoltare quelle suggerite da dj e artisti famosi e condividere tutto sui principali social network. Il catalogo è sempre aggiornato con tutte le ultime uscite discografiche, spesso anche in anteprima esclusiva. E , se sei su mobile, non consumi GB perchè il traffico dati per l’ascolto di musica è incluso nel costo dell’abbonamento.', 0, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `serviziSmart`
--

CREATE TABLE `serviziSmart` (
  `id` int(10) NOT NULL,
  `nome` varchar(20) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin NOT NULL,
  `descrizione` mediumtext COLLATE utf8_bin NOT NULL,
  `attivazione` mediumtext COLLATE utf8_bin NOT NULL,
  `idCat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `serviziSmart`
--

INSERT INTO `serviziSmart` (`id`, `nome`, `foto`, `descrizione`, `attivazione`, `idCat`) VALUES
(1, 'Tim Music', 'tim-music.jpg', 'Con TIMmusic puoi ascoltare musica in streaming senza limiti di tempo scegliendo da un vastissimo catalogo di milioni di brani musicali nazionali e internazionali di ogni genere, sempre aggiornato con le ultime uscite discografiche.\r\n \r\nTIMmusic ti consente anche di creare e salvare le tue playlist personali o di ascoltare quelle suggerite da Dj e artisti famosi in esclusiva per te. Inoltre puoi scegliere tra tante playlist proposte per genere e per tema o create dinamicamente dalla piattaforma in base alla musica che stai ascoltando.\r\n \r\nTIMmusic è la piattaforma per la musica digitale di TIM dedicata a tutti i clienti che hanno una linea ADSL Residenziale o Fibra TIM e uno smartphone TIM.\r\nIl servizio offre la possibilità di condividere i tuoi gusti musicali con amici e altri utenti anche attraverso i social network. \r\n \r\nTIMmusic è un contenitore di ricordi ed emozioni, ideale per rivivere i momenti speciali che hanno avuto come protagonista la musica.', 'Con l''abbonamento TIMmusic ascolti in streaming illimitato, ad alta qualità e senza pubblicità, a 7,99€/mese IVA inclusa.\r\n \r\nEd ora, se sei un cliente ADSL e Fibra residenziale Flat TIM che aderisce all’offerta per la prima volta, puoi fruire del primo mese di abbonamento al prezzo scontato di 1,99€ i.i. Dopo i primi 30 giorni il servizio rimane attivo a 7,99€/mese.\r\nIl servizio TIMmusica è fruibile anche da Smartphone e Tablet Android, iPhone/iPad e Windows®Phone ed è riservato ai clienti TIM.\r\nScarica gratis l’App dallo store del tuo smartphone/tablet* e prova subito TIMmusic gratis per 48H!\r\nDopo le 48H di prova gratuita potrai decidere di continuare ad ascoltare tutta la musica che vuoi abbonandoti a TIMmusic a 7.99 € /mese, con il 1° mese scontato a 1,99€!\r\nE in più non consumi GB! Infatti il traffico dati per lo streaming è incluso su rete 3G/4G!\r\n \r\nCOME ABBONARSI?\r\nPuoi abbonarti chiamando il 119. ', 1),
(2, 'Tim Reading', '', '', '', 1),
(3, 'Tim Games', '', '', '', 1),
(4, 'Tim Vision', '', '', '', 1),
(5, 'Samsung Galaxy GearS', 'watchsport.jpg', 'Un elegante display Super AMOLED curvo per una vestibilità ottimale, schermate personalizzabili e cinturini intercambiabili per esprimere al meglio il proprio stile!\r\nCaratteristiche:\r\n- Orologio Multifunzione Intelligente\r\n- Display 2” curved SuperAMOLED\r\n- Processore DualCore 1GHz\r\n- Certificazione IP67', 'Connettivita:\r\nHSDPA 21Mbps/UMTS/EDGE/GPRS - Wi-Fi - Bluetooth - **Micro USB\r\n \r\nFrequenze:\r\n2G: 900/1800 - 3G: 900/2100\r\n \r\nDisplay:  Touch da 2”\r\n \r\nFormato SIM:  Nano\r\n \r\nMemoria interna:  4GB*\r\n \r\nAltro:\r\nNotifiche, Chiamate, SMS, S Health,Lettore musicale, Meteo, Navigatore, Comandi vocali, Running\r\nDownload ulteriori applicazioni tramite il Samsung Gear Apps\r\n \r\nIn dotazione:\r\n** Supporto per la carica Micro USB - Carica batteria - Guida di riferimento rapido\r\n \r\nDimensioni:  39,9 x 58,1 x 12,5 mm		Peso:  84 gr.\r\n \r\nBatteria: 300mAh\r\n \r\nNote\r\n(*) Memoria interna: Parte della memoria interna indicata è utilizzata dal sistema operativo e dalle applicazioni preinstallate', 2),
(6, 'Sony Smartband FE', '', '', '', 2),
(7, 'Polar Loop  h7 HR', '', '', '', 2),
(8, 'Tim Tag', 'tim-tag.png', 'TIMTag è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. Segui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\r\n \r\nCon TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un'' App dedicata intuitiva e semplice da utilizzare! Tutto a soli 129€!\r\n \r\nCon l’app TIMTag puoi:\r\n- Localizzare e seguire i tuoi amici a quattro zampe tramite le funzioni “Dove è ora” e “Seguimi”\r\n- Condividere con i tuoi cari le funzioni di localizzazione di TIMTag\r\n- Impostare allarmi di “Movimento” e uscita da un area di sicurezza in modo da ricevere direttamente sul tuo smartphone notifiche quando il tuo amico a quattro zampe si muove o esce da una determinata area da te definita\r\n- Visualizzare il percorso per raggiungere i tuoi amici a quattro zampe tramite la funzione “Trovami”\r\n- Gestire in maniera dinamica e intelligente la durata della batteria all’interno dell’App', 'L’opzione TIMTag in promo, include il traffico sia dati che SMSs dal Tracker GPS verso la piattaforma di servizio (max 50MB e 100SMS ogni 30 giorni) e l’utilizzo dell’App TIMTag. Il Bundle dati e SMS previsto è calibrato per soddisfare le esigenze di un utilizzo continuativo del dispositivo.\r\nIl costo del Tracker GPS, della TIM Card e del servizio per i primi 12 mesi è di soli 129€! \r\n \r\nInoltre TIM ricorda:\r\n- L''offerta può essere attivata solo sulla TIM Card contenuta all''interno della confezione di TIMTag.\r\n- E’ possibile usufruire dell’offerta se si ha credito sulla TIM Card.\r\n- Alla scadenza, salvo disdetta, TIMTag resterà attiva a 5€ ogni mese con addebito su credito residuo della TIM Card. \r\n- È possibile avere informazioni sul servizio e sullo stato dell’utenza contattando il Servizio Clienti 119.', 3),
(9, 'Tim Home Connect', '', '', '', 3),
(10, 'Life 360', '', '', '', 3),
(11, 'Trasporti', 'big-trasporti.png', '', 'COME FUNZIONA\r\nApri TIM Wallet e accedi alla Vetrina Servizi. \r\nSe la città che ti interessa é abilitata, clicca e acquista il biglietto. \r\nPaghi direttamente con il tuo credito telefonico (se sei un Cliente Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento). \r\n \r\nAttenzione: ti verranno addebitati il costo del biglietto più il costo dell’SMS di richiesta (19,90 €cent IVA inclusa). L''utilizzo di TIM Wallet comporta il consumo di traffico Internet, per il quale si applica il tuo piano tariffario. Ti verranno inoltre addebitati il costo del biglietto più il costo dell’SMS di richiesta (19,90 €cent IVA inclusa). Il costo totale verrà scalato dal tuo credito telefonico (se sei un Cliente Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento).\r\n \r\nRicevi un SMS, il biglietto è valido da quel momento senza necessità di ulteriori convalide. \r\nPuoi trovare il biglietto elettronico direttamente nel TIM Wallet nel tuo portafogli, puoi rinnovarlo quando scade. In caso di controllo, mostra l’SMS di conferma che hai ricevuto.\r\n \r\nA Milano puoi utilizzare anche la modalità QRCode. Dopo aver acquistato il biglietto della metropolitana e ricevuto l’SMS, ricevi anche il QRCode che permette di aprire i tornelli della metropolitana. E’ sufficiente visualizzare il QRCode e accostare il display dello smartphone all’apposito lettore.', 4),
(12, 'Pagamenti', '', '', '', 4),
(13, 'Fidelity Card', '', '', '', 4);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `categorieAssistenza`
--
ALTER TABLE `categorieAssistenza`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categorieProdotti`
--
ALTER TABLE `categorieProdotti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categorieSmartLife`
--
ALTER TABLE `categorieSmartLife`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `prodotti`
--
ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `serviziAssistenza`
--
ALTER TABLE `serviziAssistenza`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `serviziSmart`
--
ALTER TABLE `serviziSmart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `categorieAssistenza`
--
ALTER TABLE `categorieAssistenza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `categorieProdotti`
--
ALTER TABLE `categorieProdotti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `categorieSmartLife`
--
ALTER TABLE `categorieSmartLife`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT per la tabella `serviziAssistenza`
--
ALTER TABLE `serviziAssistenza`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT per la tabella `serviziSmart`
--
ALTER TABLE `serviziSmart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
