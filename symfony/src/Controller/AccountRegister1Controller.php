<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Menu1;
use App\Entity\Naglowek1;
use App\Entity\Facebook1;
use App\Entity\Allegro1;
use App\Entity\Category1;
use App\Entity\File1;
use App\Entity\Paydelivery;
use App\Entity\Cashbill;
use App\Entity\Paynow;
use App\Entity\Hotpay;
use App\Entity\Domain1;
use App\Entity\Cat1;
use App\Entity\Catt1;
use App\Entity\Home;
use App\Entity\Szablon1;
use App\Entity\Szablon2;
use App\Entity\Stopka1;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

use Symfony\Component\DependencyInjection\ParameterBag\ContainerBagInterface;

class AccountRegister1Controller extends AbstractController
{

    private $containerbag;
    
    #[Route('/api/accountregister1', name: 'accountregister1', methods: ['POST'])]
    public function new(ManagerRegistry $doctrine, Request $request, UserPasswordEncoderInterface $passwordEncoder, ContainerBagInterface $containerBag): JsonResponse
    {
    
$this->containerbag = $containerBag;

$categoryExample='[{"id":1,"name":"kategoria 0","UseCategory":false,"UsePodCategory":false,"PodCategory":[{"id":11,"name":"podkategoria 11","use":false},{"id":12,"name":"podkategoria 12","use":false},{"id":13,"name":"podkategoria 13","use":false},{"id":14,"name":"podkategoria 14","use":false},{"id":15,"name":"podkategoria 15","use":false},{"id":16,"name":"podkategoria 16","use":false},{"id":17,"name":"podkategoria 17","use":false},{"id":18,"name":"podkategoria 18","use":false},{"id":19,"name":"podkategoria 19","use":false},{"id":20,"name":"podkategoria 20","use":false},{"id":21,"name":"podkategoria 21","use":false},{"id":22,"name":"podkategoria 22","use":false},{"id":23,"name":"podkategoria 23","use":false},{"id":24,"name":"podkategoria 24","use":false},{"id":25,"name":"podkategoria 25","use":false},{"id":26,"name":"podkategoria 26","use":false},{"id":27,"name":"podkategoria 27","use":false},{"id":28,"name":"podkategoria 28","use":false},{"id":29,"name":"podkategoria 29","use":false},{"id":30,"name":"podkategoria 30","use":false}]},{"id":2,"name":"kategoria 1","UseCategory":true,"UsePodCategory":false,"PodCategory":[{"id":31,"name":"podkategoria 31","use":false},{"id":32,"name":"podkategoria 32","use":false},{"id":33,"name":"podkategoria 33","use":false},{"id":34,"name":"podkategoria 34","use":false},{"id":35,"name":"podkategoria 35","use":false},{"id":36,"name":"podkategoria 36","use":false},{"id":37,"name":"podkategoria 37","use":false},{"id":38,"name":"podkategoria 38","use":false},{"id":39,"name":"podkategoria 39","use":false},{"id":40,"name":"podkategoria 40","use":false},{"id":41,"name":"podkategoria 41","use":false},{"id":42,"name":"podkategoria 42","use":false},{"id":43,"name":"podkategoria 43","use":false},{"id":44,"name":"podkategoria 44","use":false},{"id":45,"name":"podkategoria 45","use":false},{"id":46,"name":"podkategoria 46","use":false},{"id":47,"name":"podkategoria 47","use":false},{"id":48,"name":"podkategoria 48","use":false},{"id":49,"name":"podkategoria 49","use":false},{"id":50,"name":"podkategoria 50","use":false}]},{"id":3,"name":"kategoria 2","UseCategory":true,"UsePodCategory":true,"PodCategory":[{"id":51,"name":"podkategoria 1","use":true},{"id":52,"name":"podkategoria 52","use":false},{"id":53,"name":"podkategoria 53","use":false},{"id":54,"name":"podkategoria 54","use":false},{"id":55,"name":"podkategoria 55","use":false},{"id":56,"name":"podkategoria 56","use":false},{"id":57,"name":"podkategoria 57","use":false},{"id":58,"name":"podkategoria 58","use":false},{"id":59,"name":"podkategoria 59","use":false},{"id":60,"name":"podkategoria 60","use":false},{"id":61,"name":"podkategoria 61","use":false},{"id":62,"name":"podkategoria 62","use":false},{"id":63,"name":"podkategoria 63","use":false},{"id":64,"name":"podkategoria 64","use":false},{"id":65,"name":"podkategoria 65","use":false},{"id":66,"name":"podkategoria 66","use":false},{"id":67,"name":"podkategoria 67","use":false},{"id":68,"name":"podkategoria 68","use":false},{"id":69,"name":"podkategoria 69","use":false},{"id":70,"name":"podkategoria 70","use":false}]},{"id":4,"name":"kategoria 3","UseCategory":false,"UsePodCategory":false,"PodCategory":[{"id":71,"name":"podkategoria 71","use":false},{"id":72,"name":"podkategoria 72","use":false},{"id":73,"name":"podkategoria 73","use":false},{"id":74,"name":"podkategoria 74","use":false},{"id":75,"name":"podkategoria 75","use":false},{"id":76,"name":"podkategoria 76","use":false},{"id":77,"name":"podkategoria 77","use":false},{"id":78,"name":"podkategoria 78","use":false},{"id":79,"name":"podkategoria 79","use":false},{"id":80,"name":"podkategoria 80","use":false},{"id":81,"name":"podkategoria 81","use":false},{"id":82,"name":"podkategoria 82","use":false},{"id":83,"name":"podkategoria 83","use":false},{"id":84,"name":"podkategoria 84","use":false},{"id":85,"name":"podkategoria 85","use":false},{"id":86,"name":"podkategoria 86","use":false},{"id":87,"name":"podkategoria 87","use":false},{"id":88,"name":"podkategoria 88","use":false},{"id":89,"name":"podkategoria 89","use":false},{"id":90,"name":"podkategoria 90","use":false}]},{"id":5,"name":"kategoria 4","UseCategory":false,"UsePodCategory":false,"PodCategory":[{"id":91,"name":"podkategoria 91","use":false},{"id":92,"name":"podkategoria 92","use":false},{"id":93,"name":"podkategoria 93","use":false},{"id":94,"name":"podkategoria 94","use":false},{"id":95,"name":"podkategoria 95","use":false},{"id":96,"name":"podkategoria 96","use":false},{"id":97,"name":"podkategoria 97","use":false},{"id":98,"name":"podkategoria 98","use":false},{"id":99,"name":"podkategoria 99","use":false},{"id":100,"name":"podkategoria 100","use":false},{"id":101,"name":"podkategoria 101","use":false},{"id":102,"name":"podkategoria 102","use":false},{"id":103,"name":"podkategoria 103","use":false},{"id":104,"name":"podkategoria 104","use":false},{"id":105,"name":"podkategoria 105","use":false},{"id":106,"name":"podkategoria 106","use":false},{"id":107,"name":"podkategoria 107","use":false},{"id":108,"name":"podkategoria 108","use":false},{"id":109,"name":"podkategoria 109","use":false},{"id":110,"name":"podkategoria 110","use":false}]},{"id":6,"name":"kategoria 5","UseCategory":false,"UsePodCategory":false,"PodCategory":[{"id":111,"name":"podkategoria 111","use":false},{"id":112,"name":"podkategoria 112","use":false},{"id":113,"name":"podkategoria 113","use":false},{"id":114,"name":"podkategoria 114","use":false},{"id":115,"name":"podkategoria 115","use":false},{"id":116,"name":"podkategoria 116","use":false},{"id":117,"name":"podkategoria 117","use":false},{"id":118,"name":"podkategoria 118","use":false},{"id":119,"name":"podkategoria 119","use":false},{"id":120,"name":"podkategoria 120","use":false},{"id":121,"name":"podkategoria 121","use":false},{"id":122,"name":"podkategoria 122","use":false},{"id":123,"name":"podkategoria 123","use":false},{"id":124,"name":"podkategoria 124","use":false},{"id":125,"name":"podkategoria 125","use":false},{"id":126,"name":"podkategoria 126","use":false},{"id":127,"name":"podkategoria 127","use":false},{"id":128,"name":"podkategoria 128","use":false},{"id":129,"name":"podkategoria 129","use":false},{"id":130,"name":"podkategoria 130","use":false}]},{"id":7,"name":"kategoria 6","UseCategory":false,"UsePodCategory":false,"PodCategory":[{"id":131,"name":"podkategoria 131","use":false},{"id":132,"name":"podkategoria 132","use":false},{"id":133,"name":"podkategoria 133","use":false},{"id":134,"name":"podkategoria 134","use":false},{"id":135,"name":"podkategoria 135","use":false},{"id":136,"name":"podkategoria 136","use":false},{"id":137,"name":"podkategoria 137","use":false},{"id":138,"name":"podkategoria 138","use":false},{"id":139,"name":"podkategoria 139","use":false},{"id":140,"name":"podkategoria 140","use":false},{"id":141,"name":"podkategoria 141","use":false},{"id":142,"name":"podkategoria 142","use":false},{"id":143,"name":"podkategoria 143","use":false},{"id":144,"name":"podkategoria 144","use":false},{"id":145,"name":"podkategoria 145","use":false},{"id":146,"name":"podkategoria 146","use":false},{"id":147,"name":"podkategoria 147","use":false},{"id":148,"name":"podkategoria 148","use":false},{"id":149,"name":"podkategoria 149","use":false},{"id":150,"name":"podkategoria 150","use":false}]},{"id":8,"name":"kategoria 7","UseCategory":false,"UsePodCategory":false,"PodCategory":[{"id":151,"name":"podkategoria 151","use":false},{"id":152,"name":"podkategoria 152","use":false},{"id":153,"name":"podkategoria 153","use":false},{"id":154,"name":"podkategoria 154","use":false},{"id":155,"name":"podkategoria 155","use":false},{"id":156,"name":"podkategoria 156","use":false},{"id":157,"name":"podkategoria 157","use":false},{"id":158,"name":"podkategoria 158","use":false},{"id":159,"name":"podkategoria 159","use":false},{"id":160,"name":"podkategoria 160","use":false},{"id":161,"name":"podkategoria 161","use":false},{"id":162,"name":"podkategoria 162","use":false},{"id":163,"name":"podkategoria 163","use":false},{"id":164,"name":"podkategoria 164","use":false},{"id":165,"name":"podkategoria 165","use":false},{"id":166,"name":"podkategoria 166","use":false},{"id":167,"name":"podkategoria 167","use":false},{"id":168,"name":"podkategoria 168","use":false},{"id":169,"name":"podkategoria 169","use":false},{"id":170,"name":"podkategoria 170","use":false}]},{"id":9,"name":"kategoria 8","UseCategory":false,"UsePodCategory":false,"PodCategory":[{"id":171,"name":"podkategoria 171","use":false},{"id":172,"name":"podkategoria 172","use":false},{"id":173,"name":"podkategoria 173","use":false},{"id":174,"name":"podkategoria 174","use":false},{"id":175,"name":"podkategoria 175","use":false},{"id":176,"name":"podkategoria 176","use":false},{"id":177,"name":"podkategoria 177","use":false},{"id":178,"name":"podkategoria 178","use":false},{"id":179,"name":"podkategoria 179","use":false},{"id":180,"name":"podkategoria 180","use":false},{"id":181,"name":"podkategoria 181","use":false},{"id":182,"name":"podkategoria 182","use":false},{"id":183,"name":"podkategoria 183","use":false},{"id":184,"name":"podkategoria 184","use":false},{"id":185,"name":"podkategoria 185","use":false},{"id":186,"name":"podkategoria 186","use":false},{"id":187,"name":"podkategoria 187","use":false},{"id":188,"name":"podkategoria 188","use":false},{"id":189,"name":"podkategoria 189","use":false},{"id":190,"name":"podkategoria 190","use":false}]},{"id":10,"name":"kategoria 9","UseCategory":false,"UsePodCategory":false,"PodCategory":[{"id":191,"name":"podkategoria 191","use":false},{"id":192,"name":"podkategoria 192","use":false},{"id":193,"name":"podkategoria 193","use":false},{"id":194,"name":"podkategoria 194","use":false},{"id":195,"name":"podkategoria 195","use":false},{"id":196,"name":"podkategoria 196","use":false},{"id":197,"name":"podkategoria 197","use":false},{"id":198,"name":"podkategoria 198","use":false},{"id":199,"name":"podkategoria 199","use":false},{"id":200,"name":"podkategoria 200","use":false},{"id":201,"name":"podkategoria 201","use":false},{"id":202,"name":"podkategoria 202","use":false},{"id":203,"name":"podkategoria 203","use":false},{"id":204,"name":"podkategoria 204","use":false},{"id":205,"name":"podkategoria 205","use":false},{"id":206,"name":"podkategoria 206","use":false},{"id":207,"name":"podkategoria 207","use":false},{"id":208,"name":"podkategoria 208","use":false},{"id":209,"name":"podkategoria 209","use":false},{"id":210,"name":"podkategoria 210","use":false}]}]';
$categoryExample2='{"description":true,"title":true}';
$categoryExample3='[{"51":true}]';
$categoryExample4='<h1>Biznes posiada dwie funkcje: marketing i innowacje.</h1><p>&nbsp;</p><p><img class="img-fluid" src="https://api.symetryczny.pl/picture2/biznes000" /></p>';
$categoryExample5='<h1>Strona internetowa</h1><div><div style="position: relative;"><div style="position: absolute; top: 0px; left: 0px;"><img class="img-fluid" style="width: 50px;" src="https://api.symetryczny.pl/picture2/success00" /></div></div><img class="img-fluid" src="https://api.symetryczny.pl/picture2/glownastr" /></div>';
$categoryExample6='{"ManuColor1":"bg-info","ManuColor1Style":"","NaglowekColor1":"link-light","NaglowekColor1Style":"","Rozwijane1Color1":"text-dark","Rozwijane1Color1Style":"","KategorieColor1":"text-dark","KategorieColor1Style":"","PodmenuTloColor1":"bg-white","PodmenuTloColor1Style":"","KategorieRozwijaneColor1":"text-dark","KategorieRozwijaneColor1Style":"","PrzyciskMenuTlo":"bg-transparent","PrzyciskMenuTloStyle":"","Logo1":"https:\/\/api.symetryczny.pl\/picture2\/logopng01","PodMenuTlo":"bg-body","PodMenuTloStyle":"","PodMenuCzcionka":"text-dark","PodMenuCzcionkaStyle":"","PodMenuLink":"link-primary","PodMenuLinkStyle":"","PodMenuButton":"btn-primary","StronaTlo":"bg-light","StronaTloStyle":"","Rozwijane1MobileColor1":"bg-info","Rozwijane1MobileColor1Style":"","BodyFontColorStyle":""}';
$categoryExample7='{"CollectionTitleSize":4,"CollectionDescriptionColor":"text-dark","CollectionPriceSize":4,"CollecionButton1Color":"btn-secondary","CollectionTitleColor":"text-success","CollectionPriceColor":"text-danger"}';
$categoryExample8='<div class="bg-dark text-muted py-5"><div class="row"><div class="col-sm-4 py-1"><strong>KONTAKT</strong><br />Jan Kowalski sp. z o.o.<br />ul. Krakowska 12<br />00-000 Warszawa<br />telefon +48 600 000 000<br />e-mail test@email.pl<br />pn-pt 9:00-17:00</div><div class="col-sm-4 py-1"><strong>INFORMACJE</strong><br /><a href="https://api.symetryczny.pl/picture2/a84f2e90b040f5b6eece80d319fd7b73">Zwroty</a><br /><a href="https://api.symetryczny.pl/picture2/85f310834068784710a572d46ac042ad">Reklamacje</a><br /><a class="link-secondary" href="https://api.symetryczny.pl/picture2/00230f63f90a2ec55cbd45547ee0a7ab">Regulamin</a><br /><a class="link-secondary" href="https://api.symetryczny.pl/picture2/735b73b38368ab24f647f5ddcff9bc7c">Polityka Prywatności</a></div><div class="col-sm-4 py-1"><strong>O NAS</strong><br />Zespół 🙂<br />Kim jesteśmy ?</div></div></div>';
$szablon2_0='<div class="row row-cols-1 row-cols-md-3 g-4"><div>PoWtorZsZaBloN</div><div class="col"><div class="card"><div><img class="img-fluid" src="[[PiCtUrE]]" /></div><div class="card-body"><p class="card-text">[[ZMIENNA TYTUL1 LENGTH:0]]</p><a href="page1?parametr1=[[iDkAtEgOrIa]]&amp;tresc=[[iDpRzEdMiOt]]"><button class="btn btn-primary" tabindex="0">zobacz</button></a></div></div></div><div>PoWtorZsZaBloN</div></div><div>[[ZMIENNA PAGELEFT1 HTML:%3Cbutton%20class%3D%22btn%20btn-primary%22%3E%26lt%3B%3C%2Fbutton%3E]][[ZMIENNA PAGERIGHT1 HTML:%3Cbutton%20class%3D%22btn%20btn-primary%22%3E%26gt%3B%3C%2Fbutton%3E]]</div>';
$szablon2_1='<div class="card my-3 p-3"><div class="row"><div class="col-sm-6"><div class="mb-4"><h2>[[ZMIENNA TYTUL1 LENGTH:0]]</h2><div class="fs-6">[[ZMIENNA TRESC1 LENGTH:0]]</div></div><div>{{app-variant-select ,row=1,checkbox=,div1Class=,div1Style=,imgStyle=,imgClass=,imgDiv=%3Cdiv%20class%3D%22box22%22%3EZaMiAnAtEkSt%3C%2Fdiv%3E,nazwaDiv=%3Cspan%20class%3D%22text-secondary%22%3EZaMiAnAtEkSt%3C%2Fspan%3E}}</div><div class="my-2"><div>{{app-changestate ,buttonLewa=%3Cbutton%20id%3D%22button-left%22%20style%3D%22height%3A40px%3Bborder%3A0%3Bmargin%3A0%2020px%200%200%3Bpadding%3A0%2020px%200%2020px%3Bbackground-color%3A%23efefef%22%20onmouseover%3D%22document.getElementById(%60button-left%60).style.transition%3D%60all%201s%60%3Bdocument.getElementById(%60button-left%60).style.backgroundColor%3D%60%23c4c4c4%60%3B%22%20onmouseout%3D%22document.getElementById(%60button-left%60).style.backgroundColor%3D%60%23efefef%60%22%3E-%3C%2Fbutton%3E,buttonPrawa=%3Cbutton%20id%3D%22button-right%22%20style%3D%22height%3A40px%3Bborder%3A0%3Bmargin%3A0%200%200%2020px%3Bpadding%3A0%2020px%200%2020px%3Bbackground-color%3A%23efefef%22%20onmouseover%3D%22document.getElementById(%60button-right%60).style.transition%3D%60all%201s%60%3Bdocument.getElementById(%60button-right%60).style.backgroundColor%3D%60%23c4c4c4%60%3B%22%20onmouseout%3D%22document.getElementById(%60button-right%60).style.backgroundColor%3D%60%23efefef%60%22%3E%2B%3C%2Fbutton%3E,inputStyle=text-align%3Acenter%3Bheight%3A40px%3Bwidth%3A50px%3Bborder%3A0%3Bfont-size%3A1.2rem%3B,inputClass=no-spin%20input-kupowanie-ilosc}}</div></div><div class="my-2"><div>{{app-kupuje1 ,Tresc1=%3Cbutton%20id%3D%22button-kupowanie%22%20class%3D%22btn%20btn-light%22%20style%3D%22height%3A40px%3Bbackground-color%3A%23efefef%3B%22%20onmouseover%3D%22document.getElementById(%60button-kupowanie%60).style.transition%3D%60all%201s%60%3Bdocument.getElementById(%60button-kupowanie%60).style.backgroundColor%3D%60%23c4c4c4%60%3B%22%20onmouseout%3D%22document.getElementById(%60button-kupowanie%60).style.backgroundColor%3D%60%23efefef%60%22%3Edodaj%20do%20koszyka%3C%2Fbutton%3E,Komunikat1=przedmiot%20zosta%C5%82%20dodany%20do%20koszyka}}</div><div></div><div class="my-2"><div>{{app-price1 ,Tresc1=Cena%20ZaMiAnAtEkSt%20z%C5%82.}}</div></div></div><div>{{app-value1 ,Tresc1=Warto%C5%9B%C4%87%20ZaMiAnAtEkSt%20z%C5%82.}}</div></div><div class="col-sm-6"><div>{{app-carousel2 ,brakZdjec=%0A%0A%3Cdiv%20class%3D%22h-100%20d-flex%20align-items-center%20justify-content-center%22%3EBrak%20zdj%C4%99cia%3C%2Fdiv%3E%0A%0A}}</div></div><div class="col-sm-12">[[ZMIENNA WIDEO]]</div></div></div>';
$css='https://api.symetryczny.pl/picture2/fe914a9517c5b5603bda202c89ee1480';
$response=new JsonResponse();
    
    
$data = (array)json_decode($request->getContent(),true);

//usuwanie nadmairu spacji i trim
foreach ($data as $key=>&$value) {

if ($key==='checkboxFirmaSelect'){//echo('checkboxFirmaSelect');
    $value=(int)$value;
}else{//echo('inne');
    $value = preg_replace('/\s+/', ' ',$value);
    $value=(string)trim($value);
}

}

$error=array();
//array_push($error,'Rejestracja konta możliwa po kontakcie z adresem kontakt@symetryczny.pl');

//oznaczanie istnienia firmy
if (empty($data['checkboxFirmaSelect'])){$data['checkboxFirmaSelect']=0;}else{$data['checkboxFirmaSelect']=1;}

//usuwanie https://domena.pl/
$data['BuyerSubdomain1']=(array)explode('/',$data['BuyerSubdomain1']);
if (count($data['BuyerSubdomain1'])===4){$data['BuyerSubdomain1']=$data['BuyerSubdomain1'][3];}else{$data['BuyerSubdomain1']='';}

//jesli firma
if ($data['checkboxFirmaSelect']===1){//echo('firma234');

    $data['BuyerName1']='';
    $data['BuyerName2']='';

//jesli nie firma
}else{

    $data['BuyerName3']='';
    $data['BuyerNip']='';
}




//jesli nie ma błędów
if (count($error)===0){

if ($data['checkboxFirmaSelect']===0 && (strlen($data['BuyerName1'])>50 || strlen($data['BuyerName1'])===0)){array_push($error,'błędna imę');}
if ($data['checkboxFirmaSelect']===0 && (strlen($data['BuyerName2'])>50 || strlen($data['BuyerName2'])===0)){array_push($error,'błędne nazwisko');}
if ($data['checkboxFirmaSelect']===1 && (strlen($data['BuyerName3'])>100 || strlen($data['BuyerName3'])===0)){array_push($error,'błędna nazwa firmy');}
if ($data['checkboxFirmaSelect']===1 && (strlen($data['BuyerNip'])>50 || strlen($data['BuyerNip'])===0)){array_push($error,'błędny nip firmy');}
if (strlen($data['BuyerDom'])>50){array_push($error,'błędny numer domu');}
if (strlen($data['BuyerMieszkanie'])>50){array_push($error,'błędny numer mieszkania');}
if (strlen($data['BuyerKraj'])>50){array_push($error,'błedna nazwa kraju');}
if (strlen($data['BuyerUlica'])>100){array_push($error,'błedna nazwa ulicy');}
if (strlen($data['BuyerDodatekadres'])>100){array_push($error,'błędny dodatek do adresu');}
if (strlen($data['BuyerKodpocztowy'])>50){array_push($error,'błędny kod pocztowy');}
if (strlen($data['BuyerMiasto'])>100){array_push($error,'błędne nazwa miasta');}
if (strlen($data['BuyerPhone'])>50){array_push($error,'błędny numer telefonu');}
if (strlen($data['BuyerEmail'])>100 || strlen($data['BuyerEmail'])===0 || !strstr($data['BuyerEmail'], '@') || !strstr($data['BuyerEmail'], '.')){array_push($error,'błędny adres e-mail');}
if (strlen($data['BuyerUserName1'])>20 || !preg_match('/^[a-z0-9_-]+$/', $data['BuyerUserName1'])){array_push($error,'błędna nazwa użytkownika');}
if (strlen($data['BuyerPassword1'])>50){array_push($error,'błędne hasło');}
if (strlen($data['BuyerSubdomain1'])>50 || !preg_match('/^[a-z0-9_-]+$/', $data['BuyerSubdomain1'])){array_push($error,'błędna nazwa kaalogu');}

}





//jesli nie ma błędów
if (count($error)===0){//echo('brak błędów');

$doctrine1 = $doctrine;

//sprawdzanie czy istnieje uzytkownik
//$data['BuyerUserName1']='admin';
$user = $doctrine1->getRepository('App\Entity\User')->findBy(array('username'=>$data['BuyerUserName1']));
if (count($user)!==0){array_push($error,'nazwa użytkownika istnieje');}

//sprawdzanie czy istnieje subdomena
$qb = $doctrine1->getRepository('App\Entity\User')->createQueryBuilder('o');
$user2 = //$qb->where('o.domain = :domain')
    $qb->where($qb->expr()->like('o.domain', ':domain'))
   //->andWhere($qb->expr()->like('o.Product', ':product'))
   ->setParameter('domain', '%*'.$data['BuyerSubdomain1'].'*%')
   //->setParameter('product', 'My Products%')
   ->getQuery()
   ->getResult();
if (count($user2)!==0){array_push($error,'nazwa katalogu istnieje');}


if (count($error)===0){

    $entityManager = $doctrine->getManager();
    $User = new User();
    $User->setUsername($data['BuyerUserName1']);
    $User->setRoles(['ROLE_USER']);
    $encoded = $passwordEncoder->encodePassword($User, $data['BuyerPassword1']);
    $User->setPassword($encoded);
    $User->setEmail($data['BuyerEmail']);
    $User->setDomain('*'.$data['BuyerSubdomain1'].'*');
    $User->setSize(30000000);
    $User->setPage(10);
    
    //usuwanie uzytych danych
    unset($data['BuyerUserName1']);
    unset($data['BuyerPassword1']);
    unset($data['BuyerPassword2']);
    unset($data['BuyerEmail']);
    unset($data['BuyerSubdomain1']);
    
    $User->setPersonaldata($data);
    $entityManager->persist($User);
    
    //print_r(get_class_methods($User));
    $Menu1 = new Menu1();
    $Menu1->setUser($User);
    //$Menu1->setMenu([]);
    $Menu1->setMenu((array)json_decode($categoryExample,true));
    $Menu1->setDisplay([true,true,true]);
    $Menu1->setNaglowek1('');
    $Menu1->setNaglowek2('');
    $Menu1->setJavascript('');
    $Menu1->setCss($css);
    $entityManager->persist($Menu1);
    
    $Naglowek1 = new Naglowek1();
    $Naglowek1->setUser($User);
    $Naglowek1->setNaglowek([]);
    $Naglowek1->setSeo([]);
    $entityManager->persist($Naglowek1);
    
    $Facebook1 = new Facebook1();
    $Facebook1->setUser($User);
    $Facebook1->setClientid('');
    $Facebook1->setClientsecret('');
    $Facebook1->setAppsecretproof('');
    $entityManager->persist($Facebook1);
    
    $Cat1 = new Cat1();
    $Cat1->setUser($User);
    $Cat1->setCategory(2);
    $Cat1->setTitle('Przedmiot 1');
    $Cat1->setDescription('Opis 1');
    $Cat1->setDescription2('');
    $Cat1->setWyswietlanie(1);
    $Cat1->setPicture(['truskawka']);
    $Cat1->setTimecreation(new \DateTime());
    $Cat1->setAny((array)json_decode($categoryExample2,true));
    $Cat1->setRecenzja('ÿ');
    $Cat1->setVideo([]);
    $Cat1->setWarianty([]);
    $Cat1->setFieldsforbuyers([]);
    $entityManager->persist($Cat1);
    
    $Cat1_ = new Cat1();
    $Cat1_->setUser($User);
    $Cat1_->setCategory(2);
    $Cat1_->setTitle('Przedmiot 2');
    $Cat1_->setDescription('Opis 2');
    $Cat1_->setDescription2('');
    $Cat1_->setWyswietlanie(1);
    $Cat1_->setPicture(['ubranie00']);
    $Cat1_->setCount(10);
    $Cat1_->setPrice(99.97);
    $Cat1_->setAny((array)json_decode($categoryExample2,true));
    $Cat1_->setTimecreation(new \DateTime());
    $Cat1_->setRecenzja('ÿ');
    $Cat1_->setVideo([]);
    $Cat1_->setWarianty([]);
    $Cat1_->setFieldsforbuyers([]);
    $entityManager->persist($Cat1_);

    $Catt1 = new Catt1();
    $Catt1->setUser($User);
    $Catt1->setCategory(51);
    $Catt1->setDane($categoryExample4);
    $entityManager->persist($Catt1);
    
    $Allegro1 = new Allegro1();
    $Allegro1->setUser($User);
    $Allegro1->setAccessToken(null);
    $entityManager->persist($Allegro1);
    
    $Category1 = new Category1();
    $Category1->setUser($User);
    //$Category1->setData(Array(0=>Array()));
    $Category1->setData((array)json_decode($categoryExample3,true));
    $entityManager->persist($Category1);
    
    $File1 = new File1();
    $File1->setUser($User);
    $File1->setData([]);
    $entityManager->persist($File1);
    
    $Cashbill = new Cashbill();
    $Cashbill->setUser($User);
    $Cashbill->setIdentyfikator('');
    $Cashbill->setKlucz('');
    $entityManager->persist($Cashbill);
    
    $Paynow = new Paynow();
    $Paynow->setUser($User);
    $Paynow->setIdentyfikator('');
    $Paynow->setKlucz('');
    $entityManager->persist($Paynow);
    
    $Hotpay = new Hotpay();
    $Hotpay->setUser($User);
    $Hotpay->setIdentyfikator('');
    $Hotpay->setKlucz('');
    $entityManager->persist($Hotpay);
    
    $Paydelivery = new Paydelivery();
    $Paydelivery->setUser($User);
    $Paydelivery->setFieldsforbuyers([]);
    $Paydelivery->setData([]);
    $entityManager->persist($Paydelivery);
    
    $Home = new Home();
    $Home->setUser($User);
    $Home->setData($categoryExample5);
    $Home->setSekcje([]);
    $entityManager->persist($Home);
    
    $Stopka1 = new Stopka1();
    $Stopka1->setUser($User);
    $Stopka1->setData($categoryExample8);
    $entityManager->persist($Stopka1);
    
    $Szablon1 = new Szablon1();
    $Szablon1->setUser($User);
    $Szablon1->setCategory(-2);
    $Szablon1->setCategoryproduct(0);
    $Szablon1->setData((array)json_decode($categoryExample6,true));
    $entityManager->persist($Szablon1);
    
    $Szablon1 = new Szablon1();
    $Szablon1->setUser($User);
    $Szablon1->setCategory(2);
    $Szablon1->setCategoryproduct(1);
    $Szablon1->setData((array)json_decode($categoryExample7,true));
    $entityManager->persist($Szablon1);
    
    $Szablon2 = new Szablon2();
    $Szablon2->setUser($User);
    $Szablon2->setCategory(2);
    $Szablon2->setProduct(0);
    $Szablon2->setData($szablon2_0);
    $Szablon2->setSekcje([]);
    $entityManager->persist($Szablon2);
    
    $Szablon2b = new Szablon2();
    $Szablon2b->setUser($User);
    $Szablon2b->setCategory(2);
    $Szablon2b->setProduct(1);
    $Szablon2b->setData($szablon2_1);
    $Szablon2b->setSekcje([]);
    $entityManager->persist($Szablon2b);
    
    $Domain1 = new Domain1();
    $Domain1->setUser($User);
    $Domain1->setNazwa('');
    $Domain1->setDodanie(new \DateTime('2021-01-01 -1 day'));
    $Domain1->setSslpobieranie(null);
    $Domain1->setSslwaznosc(null);
    $entityManager->persist($Domain1);
    
    $entityManager->flush();
    
    //$entityManager = $doctrine->getManager();
    //$Menu1 = new Menu1();
    ////print_r(get_class_methods($Menu1));
    //$Menu1->setUser($User);
    //$Menu1->setMenu([]);
    //$entityManager->persist($Menu1);
    //$entityManager->flush();
    
    //print_r(get_class_methods($User));
    //echo('>>');print_r($User->getId());echo('<<');
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$Cat1->getId(),$Cat1->getTitle());
    $Cat1->setTitle('ÿ');
    $entityManager->persist($Cat1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$Cat1_->getId(),$Cat1_->getTitle());
    $Cat1_->setTitle('ÿ');
    $entityManager->persist($Cat1_);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$Cat1->getId(),$Cat1->getDescription());
    $Cat1->setDescription('ÿ');
    $entityManager->persist($Cat1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$Cat1_->getId(),$Cat1_->getDescription());
    $Cat1_->setDescription('ÿ');
    $entityManager->persist($Cat1_);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$Cat1->getId(),$Cat1->getDescription2());
    $Cat1->setDescription2('ÿ');
    $entityManager->persist($Cat1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$Cat1_->getId(),'');
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$Cat1->getId(),'');
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$Cat1_->getId(),$Cat1_->getDescription2());
    $Cat1_->setDescription2('ÿ');
    $entityManager->persist($Cat1_);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$Catt1->getId(),$Catt1->getDane());
    $Catt1->setDane('ÿ');
    $entityManager->persist($Catt1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$Cat1->getId(),json_encode($Cat1->getPicture()));
    $Cat1->setPicture(['ÿ']);
    $entityManager->persist($Cat1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1fieldsforbuyers/'.(string)$Cat1->getId(),json_encode([]));
    $Cat1->setFieldsforbuyers(['ÿ']);
    $entityManager->persist($Cat1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$Cat1->getId(),json_encode([]));
    $Cat1->setWarianty(['ÿ']);
    $entityManager->persist($Cat1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1fieldsforbuyers/'.(string)$Cat1_->getId(),json_encode([]));
    $Cat1_->setFieldsforbuyers(['ÿ']);
    $entityManager->persist($Cat1_);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$Cat1_->getId(),json_encode([]));
    $Cat1_->setWarianty(['ÿ']);
    $entityManager->persist($Cat1_);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$Cat1_->getId(),json_encode($Cat1_->getPicture()));
    $Cat1_->setPicture(['ÿ']);
    $entityManager->persist($Cat1_);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1video/'.(string)$Cat1_->getId(),json_encode($Cat1_->getVideo()));
    $Cat1_->setVideo(['ÿ']);
    $entityManager->persist($Cat1_);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1video/'.(string)$Cat1->getId(),json_encode($Cat1->getVideo()));
    $Cat1->setVideo(['ÿ']);
    $entityManager->persist($Cat1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$Szablon2->getId(),$Szablon2->getData());
    $Szablon2->setData('ÿ');
    $entityManager->persist($Szablon2);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$Szablon2b->getId(),$Szablon2b->getData());
    $Szablon2b->setData('ÿ');
    $entityManager->persist($Szablon2b);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/homedata/'.(string)$Home->getId(),$Home->getData());
    $Home->setData('ÿ');
    $entityManager->persist($Home);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek1/'.(string)$Menu1->getId(),$Menu1->getNaglowek1());
    $Menu1->setNaglowek1('ÿ');
    $entityManager->persist($Menu1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek2/'.(string)$Menu1->getId(),$Menu1->getNaglowek2());
    $Menu1->setNaglowek2('ÿ');
    $entityManager->persist($Menu1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menucss/'.(string)$Menu1->getId(),$Menu1->getCss());
    $Menu1->setCss('ÿ');
    $entityManager->persist($Menu1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menujavascript/'.(string)$Menu1->getId(),$Menu1->getJavascript());
    $Menu1->setJavascript('ÿ');
    $entityManager->persist($Menu1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menu1menu/'.(string)$Menu1->getId(),json_encode($Menu1->getMenu()));
    $Menu1->setMenu(['ÿ']);
    $entityManager->persist($Menu1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/stopka1data/'.(string)$Stopka1->getId(),$Stopka1->getData());
    $Stopka1->setData('ÿ');
    $entityManager->persist($Stopka1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/file1data/'.(string)$File1->getId(),json_encode($File1->getData()));
    $File1->setData(['ÿ']);
    $entityManager->persist($File1);
    
    //tworzenie bufora bazy danych
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliveryfieldsforbuyers/'.(string)$Paydelivery->getId(),json_encode($Paydelivery->getFieldsforbuyers()));
    $Paydelivery->setFieldsforbuyers(['ÿ']);
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliverydata/'.(string)$Paydelivery->getId(),json_encode($Paydelivery->getData()));
    $Paydelivery->setData(['ÿ']);
    $entityManager->persist($Paydelivery);
    
    $entityManager->flush();
}
   
}

///print_r($data);



//array_push($error,'test1');


//jesli są błędy    else    poprawnie
if (count($error)!==0){$response->setStatusCode(422);}else{$response->setStatusCode(204);}

$response->setData(array('data'=>null,'errorData'=>$error?$error:null));
return $response;


    }
}
