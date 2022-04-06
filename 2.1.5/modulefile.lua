--
-- braker2 2.1.5 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: BRAKER2 is an extension of BRAKER1 which allows for fully automated training of the gene prediction tools GeneMark-EX R14, R15, R17, F1 and AUGUSTUS from RNA-Seq and/or protein homology information, and that integrates the extrinsic evidence from RNA-Seq and protein homology information into the prediction."
-- "Keywords: singularity bioinformatics"

whatis("Name: BRAKER2")
whatis("Version: 2.1.5")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: BRAKER2 is an extension of BRAKER1 which allows for fully automated training of the gene prediction tools GeneMark-EX R14, R15, R17, F1 and AUGUSTUS from RNA-Seq and/or protein homology information, and that integrates the extrinsic evidence from RNA-Seq and protein homology information into the prediction.")

help([[
BRAKER2 is an extension of BRAKER1 which allows for fully automated training of the gene prediction tools GeneMark-EX R14, R15, R17, F1 and AUGUSTUS from RNA-Seq and/or protein homology information, and that integrates the extrinsic evidence from RNA-Seq and protein homology information into the prediction.

To load the module, type

> module load BRAKER2/2.1.5

To unload the module, type

> module unload BRAKER2/2.1.5

Tools included in this module are

* aa2nonred.pl
* exoniphyDb2hints.pl
* gth2gtf.pl
* pslMap.pl
* add_name_to_gff3.pl
* export2sam.pl
* hal2maf_split.pl
* randomSplit.pl
* align2hints.pl
* extractTranscriptEnds.pl
* interpolate_sam.pl
* retroDB2hints.pl
* augustus2browser.pl
* filter-ppx.pl
* joinPeptides.pl
* rmRedundantHints.pl
* augustus2gbrowse.pl
* filterGenemark.pl
* join_aug_pred.pl
* runAllSim4.pl
* autoAug.pl
* filterGenes.pl
* join_mult_hints.pl
* sam2vcf.pl
* autoAugPred.pl
* filterGenesIn.pl
* legacy_blast.pl
* samMap.pl
* autoAugTrain.pl
* filterGenesIn_mRNAname.pl
* log_reg_prothints.pl
* samtools.pl
* bedgraph2wig.pl
* filterGenesOut_mRNAname.pl
* maf2conswig.pl
* scipiogff2gff.pl
* blast2sam.pl
* filterInFrameStopCodons.pl
* makblk.pl
* seq_cache_populate.pl
* blat2gbrowse.pl
* filterIntronsFindStrand.pl
* makeMatchLists.pl
* setStopCodonFreqs.pl
* blat2hints.pl
* filterMaf.pl
* makeUtrTrainingSet.pl
* setup-deps.pl
* block2prfl.pl
* filterPSL.pl
* makeidx.pl
* simpleFastaHeaders.pl
* bowtie2sam.pl
* filterShrimp.pl
* maskNregions.pl
* simplifyFastaHeaders.pl
* braker.pl
* filterSpliceHints.pl
* merge_masking.pl
* soap2sam.pl
* braker_cleanup.pl
* filter_augustus_gff.pl
* merge_transcript_sets.pl
* splitMfasta.pl
* catchr.pl
* findGenesInIntrons.pl
* moveParameters.pl
* split_wiggle.pl
* cegma2gff.pl
* findGffNamesInFasta.pl
* msa2prfl.pl
* spspaln.pl
* checkParamArchive.pl
* fix_joingenes_gtf.pl
* new_species.pl
* startAlign.pl
* cleanDOSfasta.pl
* gatech_pmp2hints.pl
* novo2sam.pl
* summarizeACGTcontent.pl
* clusterAndSplitGenes.pl
* gbSmallDNA2gff.pl
* opt_init_and_term_probs.pl
* transMap2hints.pl
* compare_masking.pl
* gbrowseold2gff3.pl
* optimize_augustus.pl
* uniquePeptides.pl
* computeFlankingRegion.pl
* getAnnoFasta.pl
* parseSim4Output.pl
* update_blastdb.pl
* createAugustusJoblist.pl
* getLinesMatching.pl
* partition_gtf2gb.pl
* utrgff2gbrowse.pl
* del_from_prfl.pl
* get_loci_from_gb.pl
* pasapolyA2hints.pl
* weedMaf.pl
* downsample_traingenes.pl
* gff2gbSmallDNA.pl
* peptides2alternatives.pl
* wgsim_eval.pl
* edirect.pl
* gffGetmRNA.pl
* peptides2hints.pl
* wig2hints.pl
* evalCGP.pl
* gp2othergp.pl
* phastconsDB2hints.pl
* wigchoose.pl
* eval_dualdecomp.pl
* gtf2aa.pl
* polyA2hints.pl
* writeResultsPage.pl
* eval_multi_gtf.pl
* gtf2bed.pl
* prints2prfl.pl
* yaml2gff.1.4.pl
* exonerate2hints.pl
* gtf2gff.pl
* psl2sam.pl
* zoom2sam.pl
]])

local package = "braker2"
local version = "2.1.5"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
