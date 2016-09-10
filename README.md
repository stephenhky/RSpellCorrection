# RSpellCorrection
Spell Corrector, an R Wrapper on the Scala implementation. This is a wrapper for another project, 
[SpellCorrection](https://github.com/stephenhky/SpellCorrector),  written in Scala. It is an
implementation of Peter Norvig's spell corrector ([his article](http://norvig.com/spell-correct.html)).
For the corrector to work, download a corpus, such as [`big.txt`](http://norvig.com/big.txt) by Norvig.

This repository is also a demo for my blog entry: 
[rJava: Running Java from R, and Building R Packages Wrapping a .jar](https://datawarrior.wordpress.com/2016/09/10/rjava-running-java-from-r-and-building-r-packages-wrapping-a-jar/).

# Installation
To install it, please make sure you have the `devtools` package installed. If not, enter, in your
R console,

```
install.packages('devtools')
```

Then load the package, and run the installation:

```
library(devtools)
install_github('stephenhky/RSpellCorrection')
```

# Example
Load the package by entering

```
library(RSpellCorrection)
```

Create a Java instance for the spell corrector by entering:

```
corrector <- getcorrector(filepath='path/to/big.txt')
```

Then do the spell correction by:

```
correct('boook', corrector)   # output 'book'
correct('statistiscs', corrector)    # output 'statistics'
```

# Reference
* Kwan-Yuet Ho, "rJava: Running Java from R, and Building R Packages Wrapping a .jar", *Everything about Data Analytics*, WordPress. [[WordPress](https://datawarrior.wordpress.com/2016/09/10/rjava-running-java-from-r-and-building-r-packages-wrapping-a-jar/)]
* Peter Norvig, "How to Write a Spell Corrector," *norvig.com*. [[link](http://norvig.com/spell-correct.html)]
