package Data::Sah::Coerce::perl::To_array::From_str::tsv_row;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

sub meta {
    +{
        v => 4,
        summary => 'Coerce a single TSV row to array of scalars',
        prio => 50,
    };
}

sub coerce {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    $res->{expr_match} = "!ref($dt)";
    $res->{expr_coerce} = join(
        "",
        "[split(/\t/, $dt)]",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|coerce)$

=head1 SEE ALSO

L<Data::Sah::Coerce::perl::To_array::From_str::csv_row>,
L<Data::Sah::Coerce::perl::To_array::From_str::comma_sep>

L<Data::Sah::Coerce::perl::To_array::From_str::tsv>
