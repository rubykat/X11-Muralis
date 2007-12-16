use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'X11::Muralis',
    license             => 'perl',
    dist_author         => 'Kathryn Andersen',
    dist_version_from   => 'lib/X11/Muralis.pm',
	requires            => {
	     'Image::Info' => 0,
	     'File::Basename' => 0,
	'Getopt::Long' => 2.34,
	'Pod::Usage' => 0,
	'Getopt::ArgvFile' => 1.09,
	},
    build_requires => {
        'Test::More' => 0,
    },
    script_files => [qw(scripts/muralis)],
    create_makefile_pl => 'passthrough',
#    add_to_cleanup      => [ 'X11-Muralis-*' ],
);

$builder->create_build_script();
