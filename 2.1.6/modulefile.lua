--
-- braker2 2.1.6 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: BRAKER2 is an extension of BRAKER1 which allows for fully automated training of the gene prediction tools GeneMark-EX R14, R15, R17, F1 and AUGUSTUS from RNA-Seq and/or protein homology information, and that integrates the extrinsic evidence from RNA-Seq and protein homology information into the prediction."
-- "Keywords: singularity bioinformatics"

whatis("Name: BRAKER2")
whatis("Version: 2.1.6")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: BRAKER2 is an extension of BRAKER1 which allows for fully automated training of the gene prediction tools GeneMark-EX R14, R15, R17, F1 and AUGUSTUS from RNA-Seq and/or protein homology information, and that integrates the extrinsic evidence from RNA-Seq and protein homology information into the prediction.")

help([[
BRAKER2 is an extension of BRAKER1 which allows for fully automated training of the gene prediction tools GeneMark-EX R14, R15, R17, F1 and AUGUSTUS from RNA-Seq and/or protein homology information, and that integrates the extrinsic evidence from RNA-Seq and protein homology information into the prediction.

To load the module, type

> module load BRAKER2/2.1.6

To unload the module, type

> module unload BRAKER2/2.1.6

Tools included in this module are

* braker.pl
* diamond
* prothint.py
* augustus
* cdbfasta
* cdbyank
]])

local package = "braker2"
local version = "2.1.6"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
