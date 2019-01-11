workflow task1 {
  call reportAnno { }
}

task reportAnno {
  command {
    R -e "library(AnnotationHub); hub = AnnotationHub(); mcols(query(hub, 'clinvar.vcf', 'GRCh37'))" 
  }
  runtime {
    docker: "bioconductor/release_core2"
    }
}

