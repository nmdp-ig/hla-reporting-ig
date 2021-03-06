Profile:        HLASummaryReport
Parent:         genomics-report 
Id:             hla-summary-report
Title:          "HLA Summary Report"
Description:    "HLA Summary Report profile of genomics report"

* extension[RecommendedAction] 0..0

* extension contains HLAGenotypeSummary named GenotypeSummary 1..1

// comment out below because it causes errors. I think the slicing is inherited from genomics-report
// * code.coding ^slicing.discriminator.type = #value
// * code.coding ^slicing.discriminator.path = "code"
// * code.coding ^slicing.rules = #open
// * code.coding ^slicing.description = "slicing code"

* code.coding contains HLAGeneGroup 1..1
* code.coding[HLAGeneGroup].system 1..1
* code.coding[HLAGeneGroup].code 1..1
* code.coding[HLAGeneGroup].system = "http://www.genenames.org/genegroup" (exactly)
* code.coding[HLAGeneGroup].code = #588 "Histocompatibility complex (HLA)" (exactly)

// * code.coding[0] ^patternCodeableConcept.coding = http://www.genenames.org/genegroup#588 "Histocompatibility complex (HLA)"

// * code.coding[HLAGeneGroup] = HLAGenegroupCS#588 "Histocompatibility complex (HLA)"

* result contains hla-genotype 0..* 
* result contains hla-allele 0..* 
* result[hla-genotype] only Reference(hla-genotype)
* result[hla-allele] only Reference(hla-allele)

// * result only Reference(hla-genotype | hla-allele)

* result[gen-grouper] 0..0
* result[overall] 0..0
* result[inh-dis-path] 0..0
* result[som-diagnostic] 0..0
* result[som-prognostic] 0..0
* result[som-predictive] 0..0
* result[med-metabolism] 0..0
* result[med-efficacy] 0..0
* result[med-transporter] 0..0
* result[med-high-risk] 0..0
* result[genotype] 0..0
* result[haplotype] 0..0
* result[variant] 0..0
* result[region-studied] 0..0

* imagingStudy 0..0
* media 0..0

Extension: HLAGenotypeSummary
Id:        hla-genotype-summary
Title:     "HLA Genotype Summary"
Description: "Summary genotype of HLA in GL String Code"
* value[x] only CodeableConcept
* value[x] ^patternCodeableConcept.coding.system = http://glstring.org


Instance:   HLA-AB-SummaryReportExample
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-summary-report
Usage: #example
Title:      "HLA-A, HLA-B Summary Report Example"
Description: "Example of HLA summary report"
// * id = "hla-a-summaryreport-ex1"
* extension[GenotypeSummary].valueCodeableConcept = GLSCodeSystem#hla#3.25.0#HLA-A*01:01:01:01+HLA-A*01:01:02^#HLA-B*57:01:01:01+HLA-B*15:01:01:01
* status = #final
// * code.coding[code] = LNC#81247-9 "Master HL7 genetic variant reporting panel"
* code.coding[HLAGeneGroup] = HLAGenegroupCS#588 "Histocompatibility complex (HLA)"
// * subject.type = "Patient"
// * subject.identifier.system = "http://example.org/mysubject_identifers"
// * subject.identifier.value = "1234"
// * specimen.type = "Specimen"
// * specimen.identifier.system = "http://example.org/myspecimen_identifiers"
// * specimen.identifier.value = "6789"
// * result[0].reference = "http://example.org/fhir/Observation/HLA-A-GenotypeExample"
// * result[1].reference = "http://example.org/fhir/Observation/HLA-B-GenotypeExample"
* result[0].reference = "Observation/HLA-A-GenotypeExample"
* result[1].reference = "Observation/HLA-B-GenotypeExample"
// * result[0].reference = HLA-A-GenotypeExample
// * result[1].reference = HLA-B-GenotypeExample

