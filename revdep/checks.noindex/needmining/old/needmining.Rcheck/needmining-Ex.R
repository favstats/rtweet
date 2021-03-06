pkgname <- "needmining"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('needmining')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("downloadTweets")
### * downloadTweets

flush(stderr()); flush(stdout())

### Name: downloadTweets
### Title: Downloading Tweets based on a keyword list
### Aliases: downloadTweets

### ** Examples

searchterm <- '"smart speaker" OR "homepod" OR "google home mini"'
## Not run: 
##D token <- twitterLogin()
##D currentTweets <- downloadTweets(searchterm, n = 180)
## End(Not run)



cleanEx()
nameEx("filterTweetsMachineLearning")
### * filterTweetsMachineLearning

flush(stderr()); flush(stdout())

### Name: filterTweetsMachineLearning
### Title: Classify needs based on machine learning
### Aliases: filterTweetsMachineLearning

### ** Examples

data(NMTrainingData)
data(NMdataToClassify)
smallNMTrainingData <- rbind(NMTrainingData[1:75,], NMTrainingData[101:175,])
smallNMdataToClassify <- rbind(NMdataToClassify[1:10,], NMdataToClassify[101:110,])
results <- filterTweetsMachineLearning(smallNMdataToClassify, smallNMTrainingData)




cleanEx()
nameEx("filterTweetsNeedwords")
### * filterTweetsNeedwords

flush(stderr()); flush(stdout())

### Name: filterTweetsNeedwords
### Title: Filter tweets containing need indicating words
### Aliases: filterTweetsNeedwords

### ** Examples

data(NMTrainingData)
needWordsNeedsOnly <- "need;want;wish;feature;ask;would like;improve;idea;upgrade"
needsSimple <- filterTweetsNeedwords(NMTrainingData, needWordsNeedsOnly)
needWordsExtended <- "need;want;wish;feature;ask;would like;improve;idea;upgrade;
					support;problem;issue;help;fix;complain;fail"
needsSimpleExtended <- filterTweetsNeedwords(NMTrainingData, needWordsExtended)



cleanEx()
nameEx("readNeedminingFile")
### * readNeedminingFile

flush(stderr()); flush(stdout())

### Name: readNeedminingFile
### Title: Read Tweet file
### Aliases: readNeedminingFile

### ** Examples

data(NMTrainingData)
saveNeedminingFile(filename=file.path(tempdir(), "NMTrainingData.csv"),
NMTrainingData)
currentNeedData <- readNeedminingFile(file.path(tempdir(), "NMTrainingData.csv"))



cleanEx()
nameEx("removeTweetsStopwords")
### * removeTweetsStopwords

flush(stderr()); flush(stdout())

### Name: removeTweetsStopwords
### Title: Remove Tweets containing stopwords
### Aliases: removeTweetsStopwords

### ** Examples

stopWords <- "review;giveaway;save;deal;win;won;price;launch;news;gift;announce;
 			 reveal;sale;http;buy;bought;purchase;sell;sold;invest;discount;
			coupon;ship;giving away"
data(NMTrainingData)
filteredTweets <- removeTweetsStopwords(NMTrainingData, stopWords)



cleanEx()
nameEx("saveNeedminingFile")
### * saveNeedminingFile

flush(stderr()); flush(stdout())

### Name: saveNeedminingFile
### Title: Save Tweet file
### Aliases: saveNeedminingFile

### ** Examples

data(NMTrainingData)
saveNeedminingFile(filename=file.path(tempdir(), "NMTrainingData.csv"),
NMTrainingData)



cleanEx()
nameEx("twitterLogin")
### * twitterLogin

flush(stderr()); flush(stdout())

### Name: twitterLogin
### Title: Login into Twitter API
### Aliases: twitterLogin

### ** Examples

## Not run: 
##D token <- twitterLogin()
## End(Not run)



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
