use Mojo::Base -strict;
use Test::More;
use JSON::Validator;

my $validator = JSON::Validator->new;
my $schema = {allOf => [{type => "string", maxLength => 5}, {type => "number", minimum => 0}]};
my @errors;

@errors = $validator->validate("short", $schema);
is "@errors", "/: allOf failed: (Expected number - got string.)", "got string";
@errors = $validator->validate(12, $schema);
is "@errors", "/: allOf failed: (Expected string - got number.)", "got number";

$schema = {allOf => [{type => "string", maxLength => 7}, {type => "string", maxLength => 5}]};
@errors = $validator->validate("toolong", $schema);
is "@errors", "/: allOf failed: ([1] String is too long: 7/5.)", "too long";
@errors = $validator->validate("short", $schema);
is "@errors", "", "success";

done_testing;
