Profile:        HLAMolecularSequence
Parent:         MolecularSequence
Id:             hla-molecularsequence
Title:          "HLA Molecular Sequence"
Description:    "HLA profile of MolecularSequence resource"

* type ^patternCode = #dna
* coordinateSystem ^patternInteger = 0
* referenceSeq 1..1 MS
* referenceSeq.referenceSeqId 1..1
* referenceSeq.referenceSeqId.coding ^slicing.discriminator.type = #value
* referenceSeq.referenceSeqId.coding ^slicing.discriminator.path = "system"
* referenceSeq.referenceSeqId.coding ^slicing.rules = #open
* referenceSeq.referenceSeqId.coding ^slicing.description = "IMGT/HLA"
* referenceSeq.referenceSeqId.coding contains IMGT 1..1
* referenceSeq.referenceSeqId.coding[IMGT].system = "http://www.ebi.ac.uk/ipd/imgt/hla"
* referenceSeq.referenceSeqId.coding[IMGT].version 1..1
* observedSeq 1..1 MS


Instance:   HLA-A-SequenceExample1
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-molecularsequence
Usage: #example
Title:      "HLA-A Sequence Example 1"
Description: "Example of HLA-A sequence"
* coordinateSystem = 0
* type = #dna
* referenceSeq.referenceSeqId.coding[IMGT].system = "http://www.ebi.ac.uk/ipd/imgt/hla"
* referenceSeq.referenceSeqId.coding[IMGT].code = #HLA00001
* referenceSeq.referenceSeqId.coding[IMGT].version = "3.25.0"
* referenceSeq.referenceSeqId.coding[IMGT].display = "HLA-A*01:01:01:01"
* referenceSeq.windowStart = 0
* referenceSeq.windowEnd = 3503
* observedSeq = "CAGGAGCAGAGGGGTCAGGGCGAAGTCCCAGGGCCCCAGGCGTGGCTCTCAGGGTCTCAGGCCCCGAAGGCGGTGTATGGATTGGGGAGTCCCAGCCTTGGGGATTCCCCAACTCCGCAGTTTCTTTTCTCCCTCTCCCAACCTACGTAGGGTCCTTCATCCTGGATACTCACGACGCGGACCCAGTTCTCACTCCCATTGGGTGTCGGGTTTCCAGAGAAGCCAATCAGTGTCGTCGCGGTCGCTGTTCTAAAGTCCGCACGCACCCACCGGGACTCAGATTCTCCCCAGACGCCGAGGATGGCCGTCATGGCGCCCCGAACCCTCCTCCTGCTACTCTCGGGGGCCCTGGCCCTGACCCAGACCTGGGCGGGTGAGTGCGGGGTCGGGAGGGAAACCGCCTCTGCGGGGAGAAGCAAGGGGCCCTCCTGGCGGGGGCGCAGGACCGGGGGAGCCGCGCCGGGAGGAGGGTCGGGCAGGTCTCAGCCACTGCTCGCCCCCAGGCTCCCACTCCATGAGGTATTTCTTCACATCCGTGTCCCGGCCCGGCCGCGGGGAGCCCCGCTTCATCGCCGTGGGCTACGTGGACGACACGCAGTTCGTGCGGTTCGACAGCGACGCCGCGAGCCAGAAGATGGAGCCGCGGGCGCCGTGGATAGAGCAGGAGGGGCCGGAGTATTGGGACCAGGAGACACGGAATATGAAGGCCCACTCACAGACTGACCGAGCGAACCTGGGGACCCTGCGCGGCTACTACAACCAGAGCGAGGACGGTGAGTGACCCCGGCCCGGGGCGCAGGTCACGACCCCTCATCCCCCACGGACGGGCCAGGTCGCCCACAGTCTCCGGGTCCGAGATCCACCCCGAAGCCGCGGGACTCCGAGACCCTTGTCCCGGGAGAGGCCCAGGCGCCTTTACCCGGTTTCATTTTCAGTTTAGGCCAAAAATCCCCCCGGGTTGGTCGGGGCGGGGCGGGGCTCGGGGGACTGGGCTGACCGCGGGGTCGGGGCCAGGTTCTCACACCATCCAGATAATGTATGGCTGCGACGTGGGGCCGGACGGGCGCTTCCTCCGCGGGTACCGGCAGGACGCCTACGACGGCAAGGATTACATCGCCCTGAACGAGGACCTGCGCTCTTGGACCGCGGCGGACATGGCAGCTCAGATCACCAAGCGCAAGTGGGAGGCGGTCCATGCGGCGGAGCAGCGGAGAGTCTACCTGGAGGGCCGGTGCGTGGACGGGCTCCGCAGATACCTGGAGAACGGGAAGGAGACGCTGCAGCGCACGGGTACCAGGGGCCACGGGGCGCCTCCCTGATCGCCTATAGATCTCCCGGGCTGGCCTCCCACAAGGAGGGGAGACAATTGGGACCAACACTAGAATATCACCCTCCCTCTGGTCCTGAGGGAGAGGAATCCTCCTGGGTTTCCAGATCCTGTACCAGAGAGTGACTCTGAGGTTCCGCCCTGCTCTCTGACACAATTAAGGGATAAAATCTCTGAAGGAGTGACGGGAAGACGATCCCTCGAATACTGATGAGTGGTTCCCTTTGACACCGGCAGCAGCCTTGGGCCCGTGACTTTTCCTCTCAGGCCTTGTTCTCTGCTTCACACTCAATGTGTGTGGGGGTCTGAGTCCAGCACTTCTGAGTCTCTCAGCCTCCACTCAGGTCAGGACCAGAAGTCGCTGTTCCCTTCTCAGGGAATAGAAGATTATCCCAGGTGCCTGTGTCCAGGCTGGTGTCTGGGTTCTGTGCTCTCTTCCCCATCCCGGGTGTCCTGTCCATTCTCAAGATGGCCACATGCGTGCTGGTGGAGTGTCCCATGACAGATGCAAAATGCCTGAATTTTCTGACTCTTCCCGTCAGACCCCCCCAAGACACATATGACCCACCACCCCATCTCTGACCATGAGGCCACCCTGAGGTGCTGGGCCCTGGGCTTCTACCCTGCGGAGATCACACTGACCTGGCAGCGGGATGGGGAGGACCAGACCCAGGACACGGAGCTCGTGGAGACCAGGCCTGCAGGGGATGGAACCTTCCAGAAGTGGGCGGCTGTGGTGGTGCCTTCTGGAGAGGAGCAGAGATACACCTGCCATGTGCAGCATGAGGGTCTGCCCAAGCCCCTCACCCTGAGATGGGGTAAGGAGGGAGATGGGGGTGTCATGTCTCTTAGGGAAAGCAGGAGCCTCTCTGGAGACCTTTAGCAGGGTCAGGGCCCCTCACCTTCCCCTCTTTTCCCAGAGCTGTCTTCCCAGCCCACCATCCCCATCGTGGGCATCATTGCTGGCCTGGTTCTCCTTGGAGCTGTGATCACTGGAGCTGTGGTCGCTGCCGTGATGTGGAGGAGGAAGAGCTCAGGTGGAGAAGGGGTGAAGGGTGGGGTCTGAGATTTCTTGTCTCACTGAGGGTTCCAAGCCCCAGCTAGAAATGTGCCCTGTCTCATTACTGGGAAGCACCTTCCACAATCATGGGCCGACCCAGCCTGGGCCCTGTGTGCCAGCACTTACTCTTTTGTAAAGCACCTGTTAAAATGAAGGACAGATTTATCACCTTGATTACGGCGGTGATGGGACCTGATCCCAGCAGTCACAAGTCACAGGGGAAGGTCCCTGAGGACAGACCTCAGGAGGGCTATTGGTCCAGGACCCACACCTGCTTTCTTCATGTTTCCTGATCCCGCCCTGGGTCTGCAGTCACACATTTCTGGAAACTTCTCTGGGGTCCAAGACTAGGAGGTTCCTCTAGGACCTTAAGGCCCTGGCTCCTTTCTGGTATCTCACAGGACATTTTCTTCCCACAGATAGAAAAGGAGGGAGTTACACTCAGGCTGCAAGTAAGTATGAAGGAGGCTGATGCCTGAGGTCCTTGGGATATTGTGTTTGGGAGCCCATGGGGGAGCTCACCCACCCCACAATTCCTCCTCTAGCCACATCTTCTGTGGGATCTGACCAGGTTCTGTTTTTGTTCTACCCCAGGCAGTGACAGTGCCCAGGGCTCTGATGTGTCTCTCACAGCTTGTAAAGGTGAGAGCTTGGAGGGCCTGATGTGTGTTGGGTGTTGGGTGGAACAGTGGACACAGCTGTGCTATGGGGTTTCTTTGCGTTGGATGTATTGAGCATGCGATGGGCTGTTTAAGGTGTGACCCCTCACTGTGATGGATATGAATTTGTTCATGAATATTTTTTTCTATAGTGTGAGACAGCTGCCTTGTGTGGGACTGAGAGGCAAGAGTTGTTCCTGCCCTTCCCTTTGTGACTTGAAGAACCCTGACTTTGTTTCTGCAAAGGCACCTGCATGTGTCTGTGTTCGTGTAGGCATAATGTGAGGAGGTGGGGAGAGCACCCCACCCCCATGTCCACCATGACCCTCTTCCCACGCTGACCTGTGCTCCCTCTCCAATCATCTTTCCTGTTCCAGAGAGGTGGGGCTGAGGTGTCTCCATCTCTGTCTCAACTTCATGGTGCACTGAGCTGTAACTTCTTCCTTCCCTATTAAAA"


Instance:   HLA-A-SequenceExample2
InstanceOf: http://fhir.nmdp.org/ig/hla-reporting/StructureDefinition/hla-molecularsequence
Usage: #example
Title:      "HLA-A Sequence Example 2"
Description: "Example of HLA-A sequence"
* coordinateSystem = 0
* type = #dna
* referenceSeq.referenceSeqId.coding[IMGT].system = "http://www.ebi.ac.uk/ipd/imgt/hla"
* referenceSeq.referenceSeqId.coding[IMGT].code = #HLA14798
* referenceSeq.referenceSeqId.coding[IMGT].version = "3.25.0"
* referenceSeq.referenceSeqId.coding[IMGT].display = "HLA-A*01:01:01:03"
* referenceSeq.windowStart = 0
* referenceSeq.windowEnd = 3503
* observedSeq = "CAGGAGCAGAGGGGTCAGGGCGAAGTCCCAGGGCCCCAGGCGTGGCTCTCAGGGTCTCAGGCCCCGAAGGCGGTGTATGGATTGGGGAGTCCCAGCCTTGGGGATTCCCCAACTCCGCAGTTTCTTTTCTCCCTCTCCCAACCTACGTAGGGTCCTTCATCCTGGATACTCACGACGCGGACCCAGTTCTCACTCCCATTGGGTGTCGGGTTTCCAGAGAAGCCAATCAGTGTCGTCGCGGTCGCTGTTCTAAAGTCCGCACGCACCCACCGGGACTCAGATTCTCCCCAGACGCCGAGGATGGCCGTCATGGCGCCCCGAACCCTCCTCCTGCTACTCTCGGGGGCCCTGGCCCTGACCCAGACCTGGGCGGGTGAGTGCGGGGTCGGGAGGGAAACCGCCTCTGCGGGGAGAAGCAAGGGGCCCTCCTGGCGGGGGCGCAGGACCGGGGGAGCCGCGCGGGGAGGAGGGTCGGGCAGGTCTCAGCCACTGCTCGCCCCCAGGCTCCCACTCCATGAGGTATTTCTTCACATCCGTGTCCCGGCCCGGCCGCGGGGAGCCCCGCTTCATCGCCGTGGGCTACGTGGACGACACGCAGTTCGTGCGGTTCGACAGCGACGCCGCGAGCCAGAAGATGGAGCCGCGGGCGCCGTGGATAGAGCAGGAGGGGCCGGAGTATTGGGACCAGGAGACACGGAATATGAAGGCCCACTCACAGACTGACCGAGCGAACCTGGGGACCCTGCGCGGCTACTACAACCAGAGCGAGGACGGTGAGTGACCCCGGCCCGGGGCGCAGGTCACGACCCCTCATCCCCCACGGACGGGCCAGGTCGCCCACAGTCTCCGGGTCCGAGATCCACCCCGAAGCCGCGGGACTCCGAGACCCTTGTCCCGGGAGAGGCCCAGGCGCCTTTACCCGGTTTCATTTTCAGTTTAGGCCAAAAATCCCCCCGGGTTGGTCGGGGCGGGGCGGGGCTCGGGGGACTGGGCTGACCGCGGGGTCGGGGCCAGGTTCTCACACCATCCAGATAATGTATGGCTGCGACGTGGGGCCGGACGGGCGCTTCCTCCGCGGGTACCGGCAGGACGCCTACGACGGCAAGGATTACATCGCCCTGAACGAGGACCTGCGCTCTTGGACCGCGGCGGACATGGCAGCTCAGATCACCAAGCGCAAGTGGGAGGCGGTCCATGCGGCGGAGCAGCGGAGAGTCTACCTGGAGGGCCGGTGCGTGGACGGGCTCCGCAGATACCTGGAGAACGGGAAGGAGACGCTGCAGCGCACGGGTACCAGGGGCCACGGGGCGCCTCCCTGATCGCCTATAGATCTCCCGGGCTGGCCTCCCACAAGGAGGGGAGACAATTGGGACCAACACTAGAATATCACCCTCCCTCTGGTCCTGAGGGAGAGGAATCCTCCTGGGTTTCCAGATCCTGTACCAGAGAGTGACTCTGAGGTTCCGCCCTGCTCTCTGACACAATTAAGGGATAAAATCTCTGAAGGAGTGACGGGAAGACGATCCCTCGAATACTGATGAGTGGTTCCCTTTGACACCGGCAGCAGCCTTGGGCCCGTGACTTTTCCTCTCAGGCCTTGTTCTCTGCTTCACACTCAATGTGTGTGGGGGTCTGAGTCCAGCACTTCTGAGTCTCTCAGCCTCCACTCAGGTCAGGACCAGAAGTCGCTGTTCCCTTCTCAGGGAATAGAAGATTATCCCAGGTGCCTGTGTCCAGGCTGGTGTCTGGGTTCTGTGCTCTCTTCCCCATCCCGGGTGTCCTGTCCATTCTCAAGATGGCCACATGCGTGCTGGTGGAGTGTCCCATGACAGATGCAAAATGCCTGAATTTTCTGACTCTTCCCGTCAGACCCCCCCAAGACACATATGACCCACCACCCCATCTCTGACCATGAGGCCACCCTGAGGTGCTGGGCCCTGGGCTTCTACCCTGCGGAGATCACACTGACCTGGCAGCGGGATGGGGAGGACCAGACCCAGGACACGGAGCTCGTGGAGACCAGGCCTGCAGGGGATGGAACCTTCCAGAAGTGGGCGGCTGTGGTGGTGCCTTCTGGAGAGGAGCAGAGATACACCTGCCATGTGCAGCATGAGGGTCTGCCCAAGCCCCTCACCCTGAGATGGGGTAAGGAGGGAGATGGGGGTGTCATGTCTCTTAGGGAAAGCAGGAGCCTCTCTGGAGACCTTTAGCAGGGTCAGGGCCCCTCACCTTCCCCTCTTTTCCCAGAGCTGTCTTCCCAGCCCACCATCCCCATCGTGGGCATCATTGCTGGCCTGGTTCTCCTTGGAGCTGTGATCACTGGAGCTGTGGTCGCTGCCGTGATGTGGAGGAGGAAGAGCTCAGGTGGAGAAGGGGTGAAGGGTGGGGTCTGAGATTTCTTGTCTCACTGAGGGTTCCAAGCCCCAGCTAGAAATGTGCCCTGTCTCATTACTGGGAAGCACCTTCCACAATCATGGGCCGACCCAGCCTGGGCCCTGTGTGCCAGCACTTACTCTTTTGTAAAGCACCTGTTAAAATGAAGGACAGATTTATCACCTTGATTACGGCGGTGATGGGACCTGATCCCAGCAGTCACAAGTCACAGGGGAAGGTCCCTGAGGACAGACCTCAGGAGGGCTATTGGTCCAGGACCCACACCTGCTTTCTTCATGTTTCCTGATCCCGCCCTGGGTCTGCAGTCACACATTTCTGGAAACTTCTCTGGGGTCCAAGACTAGGAGGTTCCTCTAGGACCTTAAGGCCCTGGCTCCTTTCTGGTATCTCACAGGACATTTTCTTCCCACAGATAGAAAAGGAGGGAGTTACACTCAGGCTGCAAGTAAGTATGAAGGAGGCTGATGCCTGAGGTCCTTGGGATATTGTGTTTGGGAGCCCATGGGGGAGCTCACCCACCCCACAATTCCTCCTCTAGCCACATCTTCTGTGGGATCTGACCAGGTTCTGTTTTTGTTCTACCCCAGGCAGTGACAGTGCCCAGGGCTCTGATGTGTCTCTCACAGCTTGTAAAGGTGAGAGCTTGGAGGGCCTGATGTGTGTTGGGTGTTGGGTGGAACAGTGGACACAGCTGTGCTATGGGGTTTCTTTGCGTTGGATGTATTGAGCATGCGATGGGCTGTTTAAGGTGTGACCCCTCACTGTGATGGATATGAATTTGTTCATGAATATTTTTTTCTATAGTGTGAGACAGCTGCCTTGTGTGGGACTGAGAGGCAAGAGTTGTTCCTGCCCTTCCCTTTGTGACTTGAAGAACCCTGACTTTGTTTCTGCAAAGGCACCTGCATGTGTCTGTGTTCGTGTAGGCATAATGTGAGGAGGTGGGGAGAGCACCCCACCCCCATGTCCACCATGACCCTCTTCCCACGCTGACCTGTGCTCCCTCTCCAATCATCTTTCCTGTTCCAGAGAGGTGGGGCTGAGGTGTCTCCATCTCTGTCTCAACTTCATGGTGCACTGAGCTGTAACTTCTTCCTTCCCTATTAAAA"