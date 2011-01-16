# Mulligan command for gccg.
#
# Copyright (C) 2004 Michael Slone <mps@s-z.org>.
#
# Some modifications (C) 2005 Neil Moore <neil@s-z.org>.
#
# Distributed under the terms of the GNU GPL, version 2.  See COPYING
# for details.

if(msg.box != NULL) {
	Msg("Loading {gold}Mulligan.command");
}

def PlayCommandMulligan
{
       	push(len);
	Say("{orange}mulligan");
	len = length(hand(hand[me]));
	Send("Transfer", (len, ("hand", me, 0), ("deck.top", deck)));
	Send("ShuffleDeck", deck);
	Send("Transfer", (len-1, ("deck.top", deck), ("hand", me)));
        len=pop();
}

HELP{"play"}{"mulligan"}=("","Paris mulligan",NULL,
"Perform a Paris mulligan: shuffle the current hand to the deck, then draw one fewer card.");

