# Alphabetize

Lexicographically orders lists of strings and imports.

## Usage

``` bash
$ alphabetize \
    "#include <pcre.h>" \
    "#include <stdlib.h>" \
    "#include <string.h>" \
    "#include <math.h>" \
    "#include <argp.h>" \
    "#include <stdio.h>" \
    "#include <stdbool.h>" \

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
$ alphabetize -f "tests/file.txt"
"#include <argp.h>"
"#include <math.h>"
"#include <pcre.h>"
"#include <stdbool.h>"
"#include <stdio.h>"
"#include <stdlib.h>"
"#include <string.h>"
```

## Installation

Run `make build` and `sudo make install` to install alphabetize to `/usr/local/bin/`
