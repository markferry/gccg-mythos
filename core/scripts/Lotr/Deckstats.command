#
# Lotr Deck Statistics Script
#

stats.object=(obj=obj+1);

#
# CommandDeckstats - /deckstats  - Returns a Listbox report of Statistics for the current deck.
#

def CommandDeckstats
{
	push(totalcards);
	push(curdeck);
	push(cursites);
	push(l);
	totalcards=length(decks{deck.name}{"deck"});
	curdeck=decks{deck.name}{"deck"};
	l=0;

	if(deck.name!=NULL) {
		del_object(stats.object);
		stats.box=create_listbox(290,140,stats.object,"{orange}Lotr Deck Statistics",100,("Type","# of","%ofDeck"),(150,60,80),29,(1,1,1));

		listbox_set_entry
		(
			stats.box,l,
			(
				"{green}The One Ring{black}",
				"",
				""
			)
		);	
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Ring",
				format("%2.0f",CountOfKind("Ring",curdeck)),
				format("%2.0f",(CountOfKind("Ring",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+2;	
		listbox_set_entry
		(
			stats.box,l,
			(
				"{blue}Free Peoples{black}",
				"",
				""
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Companions",
				format("%2.0f",CountOfType("Companion",curdeck)),
				format("%2.0f",(CountOfType("Companion",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Allies",
				format("%2.0f",CountOfType("Ally",curdeck)),
				format("%2.0f",(CountOfType("Ally",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Followers",
				format("%2.0f",CountOfType("Follower",curdeck)),
				format("%2.0f",(CountOfType("Follower",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Artifacts",
				format("%2.0f",CountOfType("Artifact",curdeck)),
				format("%2.0f",(CountOfType("Artifact",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Possessions",
				format("%2.0f",CountOfType("Possession",curdeck)),
				format("%2.0f",(CountOfType("Possession",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Conditions",
				format("%2.0f",CountOfType("Condition",curdeck)),
				format("%2.0f",(CountOfType("Condition",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Events",
				format("%2.0f",CountOfType("Event",curdeck)),
				format("%2.0f",(CountOfType("Event",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Total",
				format("%2.0f",CountOfKind("Free Peoples",curdeck)),
				format("%2.0f",(CountOfKind("Free Peoples",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+2;
		listbox_set_entry
		(
			stats.box,l,
			(
				"{red}Shadow{black}",
				"",
				""
			)
		);	
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Minions",
				format("%2.0f",CountOfType("Minion",curdeck)),
				format("%2.0f",(CountOfType("Minion",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Followers",
				format("%2.0f",CountOfType("Follower",curdeck)),
				format("%2.0f",(CountOfType("Follower",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Artifacts",
				format("%2.0f",CountOfType("Artifact",curdeck)),
				format("%2.0f",(CountOfType("Artifact",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Possessions",
				format("%2.0f",CountOfType("Possession",curdeck)),
				format("%2.0f",(CountOfType("Possession",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Conditions",
				format("%2.0f",CountOfType("Condition",curdeck)),
				format("%2.0f",(CountOfType("Condition",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Events",
				format("%2.0f",CountOfType("Event",curdeck)),
				format("%2.0f",(CountOfType("Event",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"Total",
				format("%2.0f",CountOfKind("Shadow",curdeck)),
				format("%2.0f",(CountOfKind("Shadow",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+2;
		listbox_set_entry
		(
			stats.box,l,
			(
				"{brown}Rarity{black}",
				"",
				""
			)
		);	
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"P",
				format("%2.0f",CountOfRarity("P",curdeck)),
				format("%2.0f",(CountOfRarity("P",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"R+",
				format("%2.0f",CountOfRarity("R+",curdeck)),
				format("%2.0f",(CountOfRarity("R+",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"R",
				format("%2.0f",CountOfRarity("R",curdeck)),
				format("%2.0f",(CountOfRarity("R",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"U",
				format("%2.0f",CountOfRarity("U",curdeck)),
				format("%2.0f",(CountOfRarity("U",curdeck)/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"C",
				format("%2.0f",CountOfRarity("C",curdeck)+CountOfRarity("S",curdeck)),
				format("%2.0f",((CountOfRarity("C",curdeck)+CountOfRarity("S",curdeck))/totalcards)*100) + "%"
			)
		);
		l=l+1;
		listbox_set_entry
		(
			stats.box,l,
			(
				"S",
				format("%2.0f",CountOfRarity("S",curdeck)),
				format("%2.0f",(CountOfRarity("S",curdeck)/totalcards)*100) + "%"
			)
		);

		set_attr(stats.box,"visible",1);
		raise(stats.box);
	}

	curdeck=pop();
	totalcards=pop();
}
