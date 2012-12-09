package Minecraft::NBTClass;

use Mouse;

has 'nbt_data' => (
    is => 'rw',
    isa => 'Minecraft::NBT::Compound',
);

sub as_string {
	my $self = shift;
    return $self->nbt_data->as_string;
}

sub as_nbt_data {
    my $self = shift;
    require Minecraft::NBT::Compound;

    my $nbt = Minecraft::NBT::Compound->new({name => '', payload => [$self->nbt_data]});
    return $nbt->as_nbt;
}

1;
