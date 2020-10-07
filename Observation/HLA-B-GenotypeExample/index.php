<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/Observation-HLA-B-GenotypeExample.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/Observation-HLA-B-GenotypeExample.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/Observation-HLA-B-GenotypeExample.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/Observation-HLA-B-GenotypeExample.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/Observation-HLA-B-GenotypeExample.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/Observation-HLA-B-GenotypeExample.html');
else 
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/Observation-HLA-B-GenotypeExample.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
