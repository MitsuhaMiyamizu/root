repos <- 'https://cloud.r-project.org/'
if (!requireNamespace("BiocManager", quietly = TRUE))
	    install.packages("BiocManager", repos = repos)
BiocManager::install("xps")
