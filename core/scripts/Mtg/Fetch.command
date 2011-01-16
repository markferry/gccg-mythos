# Fetch command for gccg.
#
# Copyright (C) 2009 Luka
# Modifications copyright (C) 2010 Neil Moore <neil@s-z.org>.
#
# Distributed under the terms of the GNU GPL, version 3.  See COPYING
# for details.

if(msg.box != NULL)
{
	Msg("Loading {gold}Fetch.command");

}



def PlayCommandFetch
{
	if(ARG==(,))
	{
		Msg("{red}Must specify the name of a card, see /help fetch.");
	}
	else if(deck(deck)==(,))
	{
		Msg("{red}Deck is empty.");
	}
	else
	{
		push("curDeck");
		push("foundInDeck");
		push("exactFound");
		push("c");

		curDeck =  decks{deck.name}{"deck"};

		foundInDeck = (,);
		for(c)(curDeck)
		{
			if(find(lc(join(ARG, " ")), lc(canonical_name(c)))!=NULL)
			{
				if(find(c,foundInDeck)==NULL) {foundInDeck = foundInDeck + (c,);}
			}
			if(lc(join(ARG, " ")) == lc(name(c)))
			{
				exactFound = c;
				break;
			}
		}

		if(exactFound)
		{
			foundInDeck = (exactFound,);
		}
		if(foundInDeck == (,))
		{
			Msg("{red}Can not find {brown}" + join(ARG, " ") + " {red}in your deck.")
		}
		else
		{
			for(c)(foundInDeck)
			{
				Send("Transfer", (1, ("deck.search", deck, c), ("active", me)));
			}
		}

		Send("ShuffleDeck", deck);

		c=pop();
		exactFound=pop();
		foundInDeck=pop();
		curDeck=pop();
	}	
}



HELP{"play"}{"fetch"}=("name","Fetch a card from library",NULL,

"If {yellow}<name>{white} matches exactly the name of the card from your library, set one of those cards aside.  Otherwise, set aside one of each card whose name contains {yellow}<name>{white}.  Shuffle your library afterwards.");

