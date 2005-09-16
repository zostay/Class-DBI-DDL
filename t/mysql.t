# vim: set ft=perl :

package MyDBI;
use Test::More;
use base 'Class::DBI::DDL';

if (defined $ENV{DBI_mysql_DSN}) {
	MyDBI->set_db('Main', $ENV{DBI_mysql_DSN}, $ENV{DBI_mysql_USER}, $ENV{DBI_mysql_PASS});

	require 't/tables.pl';
	require 't/tests.pl';
} else {
	plan
		skip_all =>
			"Not testing MySQL driver, please set DBI_mysql_DSN in the environment for this test. See README for details.";
}
