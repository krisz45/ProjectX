<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../mainstyle.css">
    <link rel="stylesheet" href="history.css">
    <link rel="icon" href="http://localhost/ProjectX/pictures/header/logo.png" type="image/icon type">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

    <script>
        function dropdown1() {
            var x = document.getElementById("p1"); 
            var y = document.getElementById("drop_button");           
            if (x.style.display === "flex") {                        
                x.style.display = "none";
                y.style.transform = "rotate(360deg)";
                                             
            } else {                                                  
                x.style.display = "flex";
                y.style.transform = "rotate(180deg)";    }   
        }
        function dropdown2() {
            var x = document.getElementById("p2");    
            var y = document.getElementById("drop_button2");           
            if (x.style.display === "flex") {                        
                x.style.display = "none";  
                y.style.transform = "rotate(360deg)";                           
            } else {                                                  
                x.style.display = "flex";
                y.style.transform = "rotate(180deg)";    } 
        }
        function dropdown3() {
            var x = document.getElementById("p3");      
            var y = document.getElementById("drop_button3");         
            if (x.style.display === "flex") {                        
                x.style.display = "none";   
                y.style.transform = "rotate(360deg)";                          
            } else {                                                  
                x.style.display = "flex"; 
                y.style.transform = "rotate(180deg)";   } 
        }
        function dropdown4() {
            var x = document.getElementById("p4");            
            var y = document.getElementById("drop_button4");   
            if (x.style.display === "flex") {                        
                x.style.display = "none";  
                y.style.transform = "rotate(360deg)";                           
            } else {                                                  
                x.style.display = "flex"; 
                y.style.transform = "rotate(180deg)";   } 
        }
        function dropdown5() {
            var x = document.getElementById("p5");            
            var y = document.getElementById("drop_button5");   
            if (x.style.display === "flex") {                        
                x.style.display = "none";   
                y.style.transform = "rotate(360deg)";                          
            } else {                                                  
                x.style.display = "flex"; 
                y.style.transform = "rotate(180deg)";  } 
        }
    </script>


</head>
<body>
    <div class="asd">
        <?php include '../header.php'; ?>
    </div>
    <div class="container">

    <div class="container" style="background-color: rgb(255, 208, 138);">
            <div class="col line">   <!-- !!!!! -->
                <img class="kep" src="../pictures/mainpage/line2.png" style="padding-top: 20px;" alt="line">
            </div>
        <div style="text-align: center; margin-bottom: 2%">
            <h1>Váczi vár története</h1>
        </div>
        <div class="ages_header">
            <h4>A Géza fejedelem idején<h4>
            <img id="drop_button" class="dropButton" src="history_arrow_down_nice.png" alt="DropButton" height="30" onclick="dropdown1()" title="Kattints hogy megtekintsd a történetet">
        </div> 
        <div id="p1" class="history_p">
            <div class="animate_div"><div class="p_animate">Vác és környéke honfoglalás után fejedelmi birtok  központja volt, ahol az egyik vezér szálláshelye lehetett.
            Vácz várat már a honfoglaló magyarok letelepítésére ösztönző Géza fejedelem el kezdte építeni, aki rábízta az aktuális vezérre a vár folytonos megerősítését.
            A vár építésekor még csak alig 50 lakossal rendelkező Vácz kiváló helynek bizonyult egy erődítmény létrehozáshoz.
            Ugyanis a vár építésésnek elsődleges célja a dunai hajófrogalom ellenőrzése volt.  Géza  uralkodása idejében a vár még csak épülő állapotban létezett
            </div></div>
            <img class="h_img" src="../pictures/history/Geza.jpg" alt="geza" height="180" style="margin-left: 1%;">
        </div>
        <div class="ages_header">
                <h4>A 11.századtól a 15.század végéig<h4>
                <img src="history_arrow_down_nice.png" id="drop_button2" alt="drop_button" height="30" onclick="dropdown2()" title="Kattints hogy megtekintsd a történetet">
                
        </div>
        <div id="p2" class="history_p">
        <div class="animate_div"><div class="p_animate">A vár épíítése Szent István idejében vett további lendületet. A vár megerősítése kulcsfontosságú volt a  II.Konrád német császár ellen vívott háborúban. István itt horgonyoztatta a magyar hidgáják nagy részét a Dunán. 

                Szent Istvánnak köszönhetően Vác népességében és gazdagságában messze kiemelkedhetett a környező helységek közül, a kereskedelem  sokszor a várban zajlott így ellenőrive azt.

                1074- ben a későbbi I.Géza király itt ütközött meg Salamonnal, ahol a sikert a vár  mivolta is megalapozta. Géza fejedelem  a város első püspöki templomát I. Géza adományából fejezték be, őt pedig itt temették el 1077-ben.

                Az 1241. évi tatárdúlás nem kerülte el Vác városát sem, a lakosság az egyházban és az egyház palotáiban keres menedéket.A vár egy kis ideig ellenállt a tatár támadásoknak de még nem volt megerősítve egy nagyobb idegen hadsereg kivédésére így elfoglalták a várat

                A tatárjárást követõen IV. Béla király már kõfallal vétette körül az újjáépült várost és az egyházi épületeket is magába foglaló területet. Késõbb Károly Róbert, Nagy Lajos, Zsigmond és Mátyás erõsítette meg Vác várát és városát, amely  Mátyás uralkodásának végére, így már két réteg fallal rendelkezett,ahol a külső fal 1 méter 20 cm vastag volt a belső pedig 70cm.
                </div></div>
                <img src="../pictures/history/tatar.jpg" alt="tatar" style="margin-left: 1%;" height="300">
        </div>
        <div class="ages_header">
                <h4>A vár 16.században<h4>
                <img src="history_arrow_down_nice.png" id="drop_button3" alt="DropButton" height="30" onclick="dropdown3()" title="Kattints hogy megtekintsd a történetet">
        </div>
        <div id="p3" class="history_p">
        <div class="animate_div"><div class="p_animate">Mátyás király halála után a vár és Vác birtokai a püspök kezébe került. A vár megerősödött olasz mérnökök által tervezett korszerű ágyúállásokkal.

                A várat nem érte támadás a tatárjárástól egészen  1535.ig amikor is a török elsõ rohamait Borodarics István püspök vezetésével verte vissza a vár õrsége, tehát a vár megerősítése nem volt hiábavaló . 

                A 16. században a Habsburg hadvezetés, és a törökök számára is kiemelkedően fontos volt, hogy a várat saját kézben tudják, hiszen a váci vár kiváló bázis volt a dunai közlekedés ellenőrzésére. Annak idén már a római őrtornyok is a Duna mentén épültek, a limes magyarországi vonalának részeként. 


                Ferdinánd vezére, Fels Lénárd 1540-ben foglalta el a várat, azonban 1541-ben Török Bálint visszaszerezte, de még ebben az évben Roggendorf Vilmos tábornok ismét Ferdinánd részére szállta meg.

                De a Habsburg uralom nem tartott sokáig a várban mivel 1524 ben Szelim bég  egyik részhadserege 3 hónapos ostrom után elfoglalta a Habsburgok által elhanyagolt várat.

                Még ebben az évtizedben magyar ahdak elfoglalták kis időre a várat, de végleg Muhammed pasa és vezére Hasszán 1544-ben újra elfoglalták Vác várát, és végleg birtokukban tartották .

                1595-ben Szinán fia Muhammed pasa Poálffy Miklós esztergomi és visegrádi gyõzedelmeinek hírére a várat felgyújtotta, és a katonáival együtt Buda várába menekült. Pálffy ezt látva, a várat azonnal megszállta, a tüzet eloltatta, és Orosz Ádám parancsnoksága alatt õrséget hagyott hátra. Alighogy Pálffy elvonul, a török azonnal ostrom alá vette a várat, és elfoglalta. Egy év múlva, 1596-ban a nógrádi magyar sereg Bary Mihály vezetésével Vác várát megrohanta, a török õrség nagy részét lekaszabolta, több épületet felgyújtott, és gazdag zsákmánnyal visszavonult. 

                </div></div>
                <img src="../pictures/history/vac_var.jpg" alt="var" style="margin-left: 1%;" height="300">
        </div>
        <div class="ages_header">
                <h4>A vár 17.században végéig<h4>
                <img src="history_arrow_down_nice.png" id="drop_button4" alt="DropButton" height="30" onclick="dropdown4()" title="Kattints hogy megtekintsd a történetet">
        </div>
        <div id="p4" class="history_p">
        <div class="animate_div"><div class="p_animate">1603-ban ismét a Habsburgok kezén lett a vár, de a kinevezett parancsnok Verebély István 1604-ben Bocskai vezéreinek, Rédey Ferencnek és Némethy Gergelynek a várat átadta a létesítményt.

                Bethlen Gábor csapatai 1619-ben foglalták el a várat, de 1620-ban Karakas pasa 3 napi ostrom után birtokába vette.
                Késöbb Wallenstein Albert herceg  vissza foglalta, de rövidesen ismét a törökké lett, a székesegyházat lerombolták, köveit a várfalak javítására és a vár megerõsítésére használták fel. I. Lipót király 1684-ben Buda várának visszafoglalását tûzte ki célul, és a hadsereg fõvezérévé Lotharingiai Károly herceget nevezte ki, aki mintegy 35 000 emberrel Visegrád várát szállta meg elõbb, majd a Dunán átkelve Vácról északra a Musztafa aleppói és Kara Musztafa budai pasák vezetése alatt álló kb. 18.000 fõnyi seregére súlyos csapást mérve Vác várát is elfoglalta, a vár kapitányává Bottyán Jánost, a késõbbi kuruc generálist nevezte ki.

                A vár nagymértékben lerombolódott a hosszan tartó háborúkban és a lakosság önerőböl nem tudta a károkat javítani, mivel főleg a saját házuk javítása volt hangsúlyosabb
                </div></div> 
                <img src="../pictures/history/lerombolt_var.jpg" alt="lerombolt var" style="margin-left: 1%;" height="250">
        </div>
        <div class="ages_header">
                <h4>A vár 18.századtól napjainkig<h4>
                <img src="history_arrow_down_nice.png" id="drop_button5" alt="DropButton" height="30" onclick="dropdown5()" title="Kattints hogy megtekintsd a történetet">
        </div>
        <div id="p5" class="history_p">
            <div class="animate_div"><div class="p_animate" style="margin-bottom: 0!important;">

                A 18.században a várnak semmilyen funkciója nem volt, a katakombák rendszert   borospincének használták fel , illetve foglyokat tartottak az épület kamráiban. 

                a 19.században a szabdságharcban erődítménynek funkcionált de nem erősítették meg a falait. A  Váci csata után az elejtett oszták fogloykat is a várban tartották fogva, 

                a 20.szátadban a második világhábroúban a katakombák rendzerben illetve a vár pincéiben , kamráiban értékeket rejtettek el sikeresen a német és szovjet megszállóktól

                1998-ba a vár renoválására került sor Hayder Béla építészmérnök és Rácz András történész irányításásval. Ahol sikerült a várat kisebb-nagyobb mértékben megjeleníteni 1506-os formájára.
                </div></div>
                <img src="../pictures/history/var_most.jpg" alt="var" height="180" style="margin-left: 1%;margin-bottom: 2px;">
        </div>
        <div class="col line">   <!-- !!!!! -->
                <img class="kep" src="../pictures/mainpage/line2.png" style="padding-top: 20px;" alt="line">
            </div>
        </div>
        <?php include '../footer.php'; ?>
    
    </div>
</body>
</html>