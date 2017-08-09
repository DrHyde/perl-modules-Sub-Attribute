use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Sub::Attribute',
    META_MERGE => {
        # license => 'other',
        resources => {
            repository => 'https://github.com/DrHyde/perl-modules-Sub-Attribute',
            bugtracker => 'https://github.com/DrHyde/perl-modules-Sub-Attribute//issues'
        }
    },
  VERSION_FROM => 'lib/Sub/Attribute.pm',
  PREREQ_PM    => {
    'Test::More'     => '0.88',
    'parent'         => '0.221',
    'MRO::Compat'    => '0.09',
    'Class::Trigger' => '0.14',
  },
);
