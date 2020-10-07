<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/MolecularSequence-HLA-B-SequenceExample1.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/MolecularSequence-HLA-B-SequenceExample1.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/MolecularSequence-HLA-B-SequenceExample1.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/MolecularSequence-HLA-B-SequenceExample1.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/MolecularSequence-HLA-B-SequenceExample1.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/MolecularSequence-HLA-B-SequenceExample1.html');
else 
  Redirect('http://fhir.nmdp.org/ig/hla-reporting/MolecularSequence-HLA-B-SequenceExample1.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
