package Template::Plugin::HTML::Menu;

use 5.006;
use strict;
use warnings;

use HTML::Menu;
use Template::Plugin;

require Exporter;

our @ISA = qw(Exporter HTML::Menu Template::Plugin);

our $VERSION = '0.01';

sub new {
  my ($class, $context, $file) = @_;

  my $self = $class->SUPER::new(file => $file, separator => '\s*:\s*');

  $self->{_stash} = $context->stash;

  return $self;
}

sub bread {
  my $self = shift;

  return $self->SUPER::bread($self->{_stash}->get('template.name')) ;
}

sub menu {
  my $self = shift;

  return $self->SUPER::menu($self->{_stash}->get('template.name'));
}

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Template::Plugin::HTML::Menu - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Template::Plugin::HTML::Menu;
  blah blah blah

=head1 ABSTRACT

  This should be the abstract for Template::Plugin::HTML::Menu.
  The abstract is used when making PPD (Perl Package Description) files.
  If you don't want an ABSTRACT you should also edit Makefile.PL to
  remove the ABSTRACT_FROM option.

=head1 DESCRIPTION

Stub documentation for Template::Plugin::HTML::Menu, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

Dave Cross, E<lt>dave@mag-sol.demon.co.ukE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2002 by Dave Cross

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
