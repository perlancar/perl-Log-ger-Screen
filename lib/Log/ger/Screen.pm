package Log::ger::Screen;

use strict;
use warnings;

use Log::ger::Level::FromEnv;
use Log::ger::Output 'Screen' => (colorize_tags=>1);

# AUTHORITY
# DATE
# DIST
# VERSION

sub import {
    my ($package, %per_target_conf) = @_;

    require Log::ger;
    my $caller = caller(0);
    Log::ger::_import_to($package, $caller, %per_target_conf);
}

1;
# ABSTRACT: Convenient packaging of Log::ger + Log::ger::Output::Screen + Log::ger::Level::FromEnv for one-liner

=head1 SYNOPSIS

Mostly in one-liners:

 % perl -MLog::ger::Screen -E'log_warn "blah..."; ...'

Set level from environment variable (see L<Log::ger::Level::FromEnv> for more
details:

 % TRACE=1 perl ...


=head1 DESCRIPTION

This is just a convenient packaging of:

 use Log::ger::Level::FromEnv;
 use Log::ger::Output 'Screen';
 use Log::ger; # in the caller's package

mostly for one-liner usage.


=head1 SEE ALSO

L<Log::ger::App>

L<Log::ger>

L<Log::ger::Level::FromEnv>

L<Log::ger::Output::Screen>
