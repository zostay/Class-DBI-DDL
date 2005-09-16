package Class::DBI::DDL::mysql;

use 5.008;
use strict;
use warnings;

our $VERSION = '1.01';

=head1 NAME

Class::DBI::DDL::mysql - Perform driver dependent work for MySQL

=head1 DESCRIPTION

Do not use this package directly. Intead, it will automatically be imported and
used by L<Class::DBI::DDL> when the underlying database uses the L<DBD::mysql>
driver.

The only method here that works different from the default is
C<pre_create_table>. This method is defined to do nothing since auto_increment
works normally with the notation we've chosen and C<Class::DBI> is best written
toward MySQL.

=cut

sub pre_create_table { }

sub post_create_table { }

sub pre_drop_table { }

sub post_drop_table { }

=head1 SEE ALSO

L<Class::DBI>, L<DBI>, L<Class::DBI::DDL>, L<DBD::mysql>

=head1 AUTHOR

Andrew Sterling Hanenkamp <sterling@hanenkamp.com>

=head1 LICENSE AND COPYRIGHT

Copyright 2003 Andrew Sterling Hanenkamp. All Rights Reserved.

This module is free software and is distributed under the same license as Perl
itself.

=cut

1
