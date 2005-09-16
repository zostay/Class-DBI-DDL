# vim: set ft=perl :

package MyDBI;
use Test::More;
use base 'Class::DBI::DDL';

if (defined $ENV{DBI_Pg_DSN}) {
	MyDBI->set_db('Main', $ENV{DBI_Pg_DSN}, $ENV{DBI_Pg_USER}, $ENV{DBI_Pg_PASS});

	require 't/tables.pl';
	require 't/tests.pl';
} else {
	plan
		skip_all => 
			"Not testing PostgreSQL driver, please set DBI_Pg_DSN in the environment for this test. See README for details.";
}
