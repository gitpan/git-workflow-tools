use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'git-workflow-tools',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/Git/Workflow.pm',
    dist_abstract     => 'Tools to help make git workflows easier',
    requires          => {
        'perl'        => '5.008',
        'autodie'     => 0,
        'Error'       => 0,
        'Git'         => 0,
        'XML::Tiny'   => 0,
        'Path::Class' => 0,
        'Time::Piece' => 0,
    },
    recommends => {
        'JSON::XS'    => '2.34',
    },
    build_requires => {
        'Test::More'       => 0,
        'Test::NoWarnings' => 0,
    },
    add_to_cleanup     => [ 'git-workflow-tools-*' ],
    create_makefile_pl => 'traditional',
    create_license     => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/ivanwills/git-workflow-tools.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=git-workflow-tools',
        },
    },
);

$builder->create_build_script();
