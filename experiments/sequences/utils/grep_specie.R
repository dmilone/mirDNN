#!/usr/bin/Rscript --vanilla
args = commandArgs(trailingOnly=TRUE)
if(length(args) != 3)
	stop("3 arguments needed")

library(seqinr)

fss = read.fasta(args[2], as.string=T)

idx = grep(paste0(args[1], "-"), names(fss))
fss = fss[idx]
write.fasta(fss, names=names(fss), file.out=args[3], as.string=T)

