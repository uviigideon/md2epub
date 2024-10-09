# inspire by
[Alex S.](https://github.com/alexthe2nd/markdown-to-epub)

# md2epub
Shell script for converting markdown documents to epub. 


Call ```md2epub.sh``` with the markdown filename as an argument, then type the document title and its author:
``` shell
# Example:
./md2epub.sh README.md
TITLE: README
AUTHOR: uviigideon
CONVERTING TO EPUB...
EPUB FILE SAVED AS "README.epub"
```
The output will be an epub file with the same name as the markdown one, along a YAML file used for metadata, which is deleted once the execution is complete.

## Requirements
[pandoc](https://pandoc.org/) for epub conversion. 
* Installation instructions can be found [here](https://pandoc.org/installing.html).
