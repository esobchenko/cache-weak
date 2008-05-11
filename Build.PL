use Module::Build;

use strict;

my $build = Module::Build->new(
	module_name => 'Cache::Weak',
	license => 'perl',
	requires => {
		'perl' => '5.6.1',
		'version' => '0.50',
		'Test::More' => '0.47',
		'Scalar::Util' => '1.14',
	},
	create_makefile_pl => 'traditional',
	dist_author => 'Eugen Sobchenko <ejs@cpan.org>',
	add_to_cleanup => [
		'META.yml', '*.gz', 'Makefile.PL',
	],
);

$build->create_build_script;
