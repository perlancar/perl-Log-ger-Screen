package Log::ger::Screen;

# DATE
# VERSION

# IFUNBUILT
use strict;
use warnings;
# END IFUNBUILT

use Log::ger::Level::FromEnv;
use Log::ger::Output 'Screen';

sub import {
    my ($package, %per_target_conf) = @_;

    require Log::ger;
    my $caller = caller(0);
    Log::ger::_import_to($package, $caller, %per_target_conf);
}

1;

=head1 SYNOPSIS

Mostly in one-liners:

 % perl -MLog::ger::Screen -E'log_warn "blah..."; ...'


=head1 DESCRIPTION

This is just a convenient packaging of:

 use Log::ger::Level::FromEnv;
 use Log::ger::Output 'Screen';
 use Log::ger;

mostly for one-liner usage.


=head1 SEE ALSO

L<Log::ger::App>

L<Log::ger>

L<Log::ger::Level::FromEnv>

L<Log::ger::Output::Screen>
