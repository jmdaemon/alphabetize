# Alphabetize

Lexicographically orders lists of strings and imports.

## Usage

``` bash
$ alphasort \
    "#include <pcre.h>" \
    "#include <stdlib.h>" \
    "#include <string.h>" \
    "#include <math.h>" \
    "#include <argp.h>" \
    "#include <stdio.h>" \
    "#include <stdbool.h>"

#include <argp.h>
#include <math.h>
#include <pcre.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
```

or

``` bash
$ alphasort -f "tests/file.txt"
"#include <argp.h>"
"#include <math.h>"
"#include <pcre.h>"
"#include <stdbool.h>"
"#include <stdio.h>"
"#include <stdlib.h>"
"#include <string.h>"
```

## Installation

Run `make build` and `sudo make install` to install alphasort to `/usr/local/bin/`
