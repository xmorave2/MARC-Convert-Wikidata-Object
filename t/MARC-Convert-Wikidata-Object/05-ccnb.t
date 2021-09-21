use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;
use MARC::Convert::Wikidata::Object;

# Test.
my $obj = MARC::Convert::Wikidata::Object->new;
is($obj->ccnb, undef, 'Get default CCNB number.');

# Test.
$obj = MARC::Convert::Wikidata::Object->new(
	'ccnb' => 'cnb000750997',
);
is($obj->ccnb, 'cnb000750997', 'Get explicit CCNB number.');
