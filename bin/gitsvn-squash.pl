#!/usr/bin/perl

use Getopt::Long;

my $commits = 20;
my $fake    = 0;
my $verbose = 1;
my $help    = 0;

GetOptions "commits=i"  => \$commits,
           "fake-mode!" => \$fake,
           "help"       => \$help,
           "verbose"    => \$verbose;

if ($help) {
    my($program) = +(split m{/}, $0)[-1];
    print <<HELP;
Usage: $program [-verbose] [-fake] <target_branch> [-commits N]

Switches:
  -verbose     show the git commands and their output
  -fake        show the git commands but do not run them
  -commits N   search the past N commits for things not dcommitted to svn
HELP
    exit;
}


sub run($) {
    my($cmd) = @_;

    print "\$ $cmd\n" if $verbose || $fake;

    return if ($fake);

    if ($verbose) {
        print `$cmd`;
    }
    else {
        # don't echo the results to the screen
        system $cmd;
    }
}

sub get_head {
    my $back = shift || 1;

    # make it a negative number
    if ($back > 0) {
        $back *= -1;
    }

    my $sep = '=-=SPLIT=-=';
    my $data = `git log $back --pretty=format:"commit %h%n%s%n%n%b$sep"`;
    my @commits = split /\n$sep\n?/, $data;

    my $head = 0;
    foreach my $commit (@commits) {
        my ($sha1)   = $commit =~ /^commit (\S+)/s;
        my ($svn_id) = $commit =~ /git-svn-id: \S+\@(\d+)\s+/;

        next if ($svn_id);
        $head++;
    }

    return "HEAD~".$head;
}

#
# main program
#

my $HEAD = get_head($commits);

run "git rebase -i $HEAD";
