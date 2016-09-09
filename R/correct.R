
#' Retrieve a Java instance of SpellCorrector.
#'
#' Retrieve a Java instance of SpellCorrector, with the training file
#' specified. Language model is trained before the instance is returned.
#' The spell corrector is adapted from Peter Norvig's demonstration.
#'
#' @param filepath Path of the corpus.
#' @return a Java instance of SpellCorrector
#' @export
getcorrector<-function(filepath='big.txt') {
  .jaddLibrary('spellchecker', 'inst/java/spellcorrector.jar')
  .jaddClassPath('inst/java/spellcorrector.jar')
  corrector<- .jnew('home/kwyho/spellcheck/SpellCorrector')
  bigfile<- .jnew('java/io/File', filepath)
  .jcall(corrector, 'V', 'train', bigfile)
  return(corrector)
}

#' Correct spelling.
#'
#' Given an instance of SpellCorrector, return the most probably
#' corrected spelling of the given word.
#'
#' @param word A token.
#' @param corrector A Java instance of SpellCorrector, given by \code{getcorrector}.
#' @return Corrected spelling
#' @export
correct<-function(word, corrector) {
  javaStrtext<- .jnew('java/lang/String', word)
  .jcall(corrector, 'Ljava/lang/String;', 'correct', javaStrtext)
}
