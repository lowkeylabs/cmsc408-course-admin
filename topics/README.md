# Topic folder

Topics for CMSC408 are stored in this folder.  A topic consists of two files:

- a wrapper file, like "sample-topic.qmd", and
- a topic file, like "_sample-topic.qmd".

The wrapper file is a quarto YAML file, that includes the topic file.

The topic file does NOT have a YAML header.  It contains just the Markdown codes to create the presentation. 

A topic can be tested and reviewed using **quarto render sample-topic.qmd**

Once it's OK, a topic can be included in a lecture file using {{< include '_sample-topic.qmd' >}}.  Note
that you're include the "underscore" topic file, NOT the wrapper file.

A utility program named "tasl" (vcu-ssg/ssg-tasl-cli) is available to create new topics and other utilities.
