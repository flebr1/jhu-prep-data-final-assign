# Generation of a summarized dataset based on the 'Human Activity Recognition Using Smartphones Dataset' from UCI

## About the Original Dataset

The original dataset is fully documented at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This is the dataset we start with for generating the summarized dataset documented in this README.

The original dataset consists of several files (organized in multiple folders) in a single ZIP 
archive file.  After downloading and unziping the archive one can explore the multiple files, 
starting with the README.txt, which explains the content more in details.


## About the Summarized Dataset

We generate the summarized dataset in a single file called `uci_har_summarized_data.txt`.

*Please refer to next section for more details about how to (re)generate it.*

The file content is in _table format_.  One may read in R using the following command 
(assuming the file is located in one's working directory):
`uciHarSummarizedData <- read.table("uci_har_summarized_data.txt", header = TRUE)`

Besides the header line, this file contains one line per subject and activity 
(executed by said subject) covered by the original dataset.

Then, there is one column describing the subject, one column describing the activity 
and multiple columns describing the various 'measures' of interest.

Please refer to `CodeBook.md` for more details about the file content.


## How to Generate the Summarized Dataset

All the R instructions required to generate the data are in `run_analysis.R`, but you need to separately download the original dataset (prepackaged ZIP file) first.

1. Download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Unzip the previous archive into a folder located wherever you wish on your machine.

3. Setup that folder (from step 2) as the _working directory_ in your R session.

4. If not already the case, please install the _dplyr_ package in your R environment.

5. Run the `run_analysis.R` script...  Upon successful completion (otherwise, please check the error 
   messages) you shall find a `uci_har_summarized_data.txt` file in the working directory.

