process showFileContents {
  input:
  path infile

  "cat ${infile}"
}

workflow {
  def infile = Channel.fromPath(['assets/hi_from_assets.txt', 'bin/hi_from_bin.txt'])
  infile.view() 
  showFileContents(infile)
}