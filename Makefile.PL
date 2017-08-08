use strict;
use warnings;

# NAME => 'Sub::Attribute', # placate DC's release tool which expect EU::MM-stylee

# for authors, you need to also install:
#  Module::Install::XSUtil
#  Module::Install::AuthorTests
#
# the necessary bits will be bundled for ordinary users

use lib '.';
use inc::Module::Install;

all_from 'lib/Sub/Attribute.pm';

use_ppport 3.19;
cc_warnings;

requires 'parent', 0.2;

test_requires 'Test::More'     => 0.88;
test_requires 'parent'         => 0.221;
test_requires 'MRO::Compat'    => 0.09;
test_requires 'Class::Trigger' => 0.14;

no_index directory => 'example';

tests 't/*.t';
author_tests 'xt';

resources
    repository => 'https://github.com/DrHyde/perl-modules-Sub-Attribute',
    bugtracker => 'https://github.com/DrHyde/perl-modules-Sub-Attribute/issues';

clean_files q(
	Sub-Attribute-* *.stackdump
	*.gcda *.gcno *.gcov
	nytprof *.out
	cover_db *META*
);

WriteAll check_nmake => 0;
