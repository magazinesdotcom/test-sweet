use MooseX::Declare;

role t {
	method DEMOLISH
	{
		warn 'DEMOLISH'
	}
}

class t::Stuff with t {
	use Test::Sweet;

	test ensure_thing_does_not_die
	{
		die 'oh noes!';
	}
}

t::Stuff->new->run;

