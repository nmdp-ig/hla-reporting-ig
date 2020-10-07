<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/ImplementationGuide-hla-reporting.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/ImplementationGuide-hla-reporting.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/ImplementationGuide-hla-reporting.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/ImplementationGuide-hla-reporting.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/ImplementationGuide-hla-reporting.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/ImplementationGuide-hla-reporting.html');
else 
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/ImplementationGuide-hla-reporting.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
