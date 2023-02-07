# deepTools  
##  BamCoverage

This tool takes an alignment of reads or fragments as input (BAM file) and generates a coverage track (bigWig or bedGraph) as output. The coverage is calculated as the number of reads per bin, where bins are short consecutive counting windows of a defined size. It is possible to extended the length of the reads to better reflect the actual fragment length. bamCoverage offers normalization by scaling factor, Reads Per Kilobase per Million mapped reads (RPKM), counts per million (CPM), bins per million mapped reads (BPM) and 1x depth (reads per genome coverage, RPGC). 

## Features

- Searches your **data** folder for the alignment file in .bam and .bam.bai format. 

## Usage

This capsule requires alignment files that are position sorted and indexed bam format. When you supply alignment files, the capsule will return normalized according to the features on App Panel selected.

## Output

In your results folder you will find the bigWig file with normalizations applied.

## Parameters

- Number of Threads, if not utilized will automatically use all available.
- Bin Size.
- Any Chromosomes you wish to ignore during normalization. Default is chrX.
- Choose a Normalization Technique from the list of choices.
- Choose the version of genome your alignment file was generated from.

## Source

https://deeptools.readthedocs.io/en/develop/content/tools/bamCoverage.html

## License

MIT

**Free Software, Hell Yeah!**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
