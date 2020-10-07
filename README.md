# hla-reporting-ig

To build this Implementation Guide, you'll need
+ npm
    + https://www.npmjs.com/get-npm
+ sushi
    + https://build.fhir.org/ig/HL7/fhir-shorthand/sushi.html
+ jekyll
    + https://jekyllrb.com
+ IG Publisher
    + https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation

## Install npm
+ https://nodejs.org/

## Install Sushi:
Version 0.12.6 is known to work with this IG.
```
npm install -g fsh-sushi@0.12.6
```

## Install Jekyll
+ Jekyll on OSX
    + https://jekyllrb.com/docs/installation/macos/
+ Jekyll on Window
    + https://jekyllrb.com/docs/installation/windows/
+ Jekyll on Linux
    + https://jekyllrb.com/docs/installation/other-linux/

## Download the IG Publisher
Download the IG Publisher into top level of repo. 
The version of the IG Publisher known to works with this IG is 1.0.94-SNAPSHOT

```
$ cd hla-reporting-ig/
$ wget -O org.hl7.fhir.publisher.jar "https://oss.sonatype.org/service/local/repositories/snapshots/content/org/hl7/fhir/publisher/org.hl7.fhir.publisher.cli/1.0.94-SNAPSHOT/org.hl7.fhir.publisher.cli-1.0.94-20200512.015822-1.jar"
```

## Run sushi

```
$ sushi .
info  Running SUSHI v0.12.6
info  Checking local cache for hl7.fhir.r4.core#4.0.1...
info  Found hl7.fhir.r4.core#4.0.1 in local cache.
info  Checking local cache for hl7.fhir.uv.genomics-reporting#1.0.0...
info  Found hl7.fhir.uv.genomics-reporting#1.0.0 in local cache.
info  Importing FSH text...
info  Preprocessed 9 documents with 4 aliases.
info  Imported 8 definitions and 11 instances.
info  Loaded package hl7.fhir.r4.core#4.0.1
info  Loaded package hl7.fhir.uv.genomics-reporting#1.0.0
info  Converting FSH to FHIR resources...
info  Converted 5 FHIR StructureDefinitions.
info  Converted 1 FHIR ValueSets.
info  Converted 2 FHIR CodeSystems.
info  Converted 11 FHIR instances.
info  No output path specified. Output to build
info  Exporting FHIR resources as JSON...
info  Exported 19 FHIR resources as JSON.
info  Assembling Implementation Guide sources...
info  Copied ig-data/input/pagecontent/index.xml
info  Merged ig-data/ig.ini w/ generated ig.ini
info  Copied ig-data/package-list.json.
info  Generated ImplementationGuide-hla-reporting.json
info  Assembled Implementation Guide sources; ready for IG Publisher.

╔════════════════════════ SUSHI RESULTS ══════════════════════════╗
║ ╭──────────┬────────────┬───────────┬─────────────┬───────────╮ ║
║ │ Profiles │ Extensions │ ValueSets │ CodeSystems │ Instances │ ║
║ ├──────────┼────────────┼───────────┼─────────────┼───────────┤ ║
║ │    4     │     1      │     1     │      2      │    11     │ ║
║ ╰──────────┴────────────┴───────────┴─────────────┴───────────╯ ║
║                                                                 ║
║ See SUSHI-GENERATED-FILES.md for details on generated IG files. ║
╠═════════════════════════════════════════════════════════════════╣
║ Cool and So-fish-ticated!              0 Errors      0 Warnings ║
╚═════════════════════════════════════════════════════════════════╝
$
```

## Build the IG

```
$ cd build
$ ./_genonce.sh 
Checking internet connection...
Online

FHIR IG Publisher Version 1.0.94-SNAPSHOT (Git# 77c06d8ca14c). Built 2020-05-12T11:55:14.985+10:00 (20 days old)
Detected Java version: 1.8.0_172 from /Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home/jre on x86_64 (64bit). 3641MB available
Parameters: -ig ig.ini

...snip...

onGenerate:
Generating Summary Outputs                                                       (00:27.0841)
Sending Usage Stats to Server                                                    (00:29.0807)
Jekyll: Source: /Users/bmilius/Documents/src/fsh/temp/hla-reporting-ig/build/temp/pages (00:30.0797)
Jekyll: Generating...                                                            (00:30.0797)
Jekyll: done in 0.998 seconds.                                                   (00:31.0795)
Installing hla-reporting#dev to the package cache
  Fetching:
  Installing:  done.
Checking Output HTML                                                             (00:32.0323)
found 632 files                                                                  (00:32.0328)
  ... 632 html files, 0 pages invalid xhtml (0%)                                 (00:36.0646)
  ... 134424 links, 0 broken links (0%)                                          (00:36.0646)
Build final .zip                                                                 (00:36.0646)
Final .zip built                                                                 (00:37.0308)
Finished. 00:21.0934. Validation output in /Users/bmilius/Documents/src/fsh/temp/hla-reporting-ig/build/output/qa.html
Errors: 0  Warnings: 0  Info: 12 (00:37.0710)
Done                                                                             (00:37.0710)
$ 
```

## Publish the IG
```
cd ../..
git clone git@github.com:FHIR/ig-registry.git
git clone git@github.com:HL7/fhir-ig-history-template.git
cd hla-reporting-ig/build
# 1st step in publishing - creates a yellow box containing ''Publication Build: This will be filled in by the publication tooling' on index.html
java -jar ../org.hl7.fhir.publisher.jar -ig ig.ini -publish

mkdir website
cp -r ../../fhir-ig-history-template/* website/
```

# create website/publish.ini
```
[website]
style=fhir.layout
server=apache
url=http://fhir.nmdp.org/ig/hla-reporting
org=NMDP
no-registry=1

[feeds]
package=package-feed.xml
publication=publication-feed.xml
```

#create website/package-list.json
```
{
"package-id": "hla-reporting",
"title": "HLA Reporting Implementation Guide",
"canonical": "http://fhir.nmdp.org/ig/hla-reporting",
"introduction": "HLA Reporting Implementation Guide base on Genomics Reporting IG",
"list": [
    {
        "version": "0.0.2",
        "date": "2020-06-01",
        "desc": "Draft",
        "path": "http://fhir.nmdp.org/ig/hla-reporting",
        "status": "trial-use",
        "fhirversion": "4.0.1",
        "sequence": "Trial Use: 1",
        "current": true
    },
    {
        "version": "0.0.1",
        "date": "2020-05-01",
        "desc": "Draft",
        "path": "http://fhir.nmdp.org/ig/hla-reporting/2020May",
        "status": "trial-use",
        "sequence": "Trial Use: 1",
        "fhirversion": "4.0.1"
    }]
}
```

# copy current build to website
cp -r output/* website/

# create subdirectory for milestone
mkdir website/2020May
cp -r output/* website/2020May/

# update website/package-list.json as needed
# run publisher to create web redirects and final output
java -jar ../org.hl7.fhir.publisher.jar -publish-update -folder  website -registry  ../../ig-registry/fhir-ig-list.json

# copy website contents to deploy-ready branch

