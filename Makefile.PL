# Generated by git-ship. See 'git-ship --man' for help or https://github.com/jhthorsen/app-git-ship
use ExtUtils::MakeMaker;
WriteMakefile(
  NAME => 'JSON::Validator',
  AUTHOR => 'Jan Henning Thorsen <jhthorsen@cpan.org>',
  LICENSE => 'artistic_2',
  ABSTRACT_FROM => 'lib/JSON/Validator.pm',
  VERSION_FROM => 'lib/JSON/Validator.pm',
  EXE_FILES => [qw(  )],
  META_MERGE => {
    resources => {
      bugtracker => 'https://github.com/jhthorsen/json-validator/issues',
      homepage => 'https://github.com/jhthorsen/json-validator',
      repository => 'https://github.com/jhthorsen/json-validator.git',
    },
  },
  BUILD_REQUIRES => {
  'Test::More' => '0.88',
  'Test::Warnings' => '0.016'
}
,
  PREREQ_PM => {
  'Mojolicious' => '6.00'
}
,
  test => { TESTS => 't/*.t' },
);
