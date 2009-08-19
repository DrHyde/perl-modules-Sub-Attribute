use strict;
use warnings;
use inc::Module::Install;

name 'Sub-Attribute';
all_from 'lib/Sub/Attribute.pm';

requires 'Exporter'        => 5.57;

build_requires 'ExtUtils::ParseXS';

test_requires 'Test::More'  => 0.62;
test_requires 'parent'      => 0.221;
test_requires 'MRO::Compat' => 0.09;

no_index directory => 'example';

tests 't/*.t';
author_tests 'xt';

WriteMakefile(
	OBJECT => '$(O_FILES)',

	clean  => {FILES => q(
		Sub-Attribute-* *.stackdump
		*.gcda *.gcno *.gcov
		nytprof *.out
		cover_db
	)},
);
