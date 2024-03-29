
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.04

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/HTML/FormatMarkdown.pm',
    'lib/HTML/FormatPS.pm',
    'lib/HTML/FormatRTF.pm',
    'lib/HTML/FormatText.pm',
    'lib/HTML/Formatter.pm'
);

notabs_ok($_) foreach @files;
done_testing;
