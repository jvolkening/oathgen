use 5.012;

use strict;
use warnings FATAL => 'all';

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'oathgen',
    AUTHOR           => q{Jeremy Volkening <jdv*at*base2bio*dot*com>},
    VERSION_FROM     => 'oathgen',
    ABSTRACT_FROM    => 'oathgen',
    LICENSE          => 'GPL_3',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.012,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        # core
        #'Data::Dumper' => 0,

        # non-core
        'Authen::OATH' => 0,
        'Convert::Base32' => 0,
    },
    EXE_FILES => [qw|
        oathgen
    |],
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url => 'https://github.com/jvolkening/oathgen.git',
                web => 'https://github.com/jvolkening/oathgen',
            },
        },
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'oathgen-*' },
);
