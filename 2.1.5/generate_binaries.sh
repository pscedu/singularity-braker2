#!/bin/bash

TOOLS=(aa2nonred.pl		    filterMaf.pl		optimize_augustus.pl
add_name_to_gff3.pl	    filterPSL.pl		parseSim4Output.pl
align2hints.pl		    filterShrimp.pl		partition_gtf2gb.pl
augustus2browser.pl	    filterSpliceHints.pl	pasapolyA2hints.pl
augustus2gbrowse.pl	    filter_augustus_gff.pl	peptides2alternatives.pl
autoAug.pl		    findGenesInIntrons.pl	peptides2hints.pl
autoAugPred.pl		    findGffNamesInFasta.pl	phastconsDB2hints.pl
autoAugTrain.pl		    fix_joingenes_gtf.pl	polyA2hints.pl
bedgraph2wig.pl		    gatech_pmp2hints.pl		prints2prfl.pl
blast2sam.pl		    gbSmallDNA2gff.pl		psl2sam.pl
blat2gbrowse.pl		    gbrowseold2gff3.pl		pslMap.pl
blat2hints.pl		    getAnnoFasta.pl		randomSplit.pl
block2prfl.pl		    getLinesMatching.pl		retroDB2hints.pl
bowtie2sam.pl		    get_loci_from_gb.pl		rmRedundantHints.pl
braker.pl		    gff2gbSmallDNA.pl		runAllSim4.pl
braker_cleanup.pl	    gffGetmRNA.pl		sam2vcf.pl
catchr.pl		    gp2othergp.pl		samMap.pl
cegma2gff.pl		    gtf2aa.pl			samtools.pl
checkParamArchive.pl	    gtf2bed.pl			scipiogff2gff.pl
cleanDOSfasta.pl	    gtf2gff.pl			seq_cache_populate.pl
clusterAndSplitGenes.pl     gth2gtf.pl			setStopCodonFreqs.pl
compare_masking.pl	    hal2maf_split.pl		simpleFastaHeaders.pl
computeFlankingRegion.pl    interpolate_sam.pl		simplifyFastaHeaders.pl
createAugustusJoblist.pl    joinPeptides.pl		soap2sam.pl
del_from_prfl.pl	    join_aug_pred.pl		splitMfasta.pl
downsample_traingenes.pl    join_mult_hints.pl		split_wiggle.pl
evalCGP.pl		    legacy_blast.pl		spspaln.pl
eval_dualdecomp.pl	    log_reg_prothints.pl	startAlign.pl
eval_multi_gtf.pl	    maf2conswig.pl		summarizeACGTcontent.pl
exonerate2hints.pl	    makblk.pl			transMap2hints.pl
exoniphyDb2hints.pl	    makeMatchLists.pl		uniquePeptides.pl
export2sam.pl		    makeUtrTrainingSet.pl	update_blastdb.pl
extractTranscriptEnds.pl    makeidx.pl			utrgff2gbrowse.pl
filter-ppx.pl		    maskNregions.pl		weedMaf.pl
filterGenemark.pl	    merge_masking.pl		wgsim_eval.pl
filterGenes.pl		    merge_transcript_sets.pl	wig2hints.pl
filterGenesIn.pl	    moveParameters.pl		wigchoose.pl
filterGenesIn_mRNAname.pl   msa2prfl.pl			writeResultsPage.pl
filterGenesOut_mRNAname.pl  new_species.pl		yaml2gff.1.4.pl
filterInFrameStopCodons.pl  novo2sam.pl			zoom2sam.pl
filterIntronsFindStrand.pl  opt_init_and_term_probs.pl)

cat << EOF > template
#!/bin/bash

VERSION=2.1.5
PACKAGE=braker2
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

PERSISTENT_FILE_STORAGE=/ocean
if [ -d \$PERSISTENT_FILE_STORAGE ]; then
	OPTIONS="-B \$PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
	OPTIONS=\$OPTIONS" -B /local"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif /opt/conda/bin/\$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
        git add $TOOL
done

rm -f template
