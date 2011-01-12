#
# V:TES Deck Statistics Script by Malakh
#

# CommandDeckstats - /deckstats - Displays a Listbox report of Statistics on the currently selected deck.

mydeck.object=(obj=obj+1);

def CommandDeckstats
{

push(totalcards);
push(curdeck);
push(curcrypt);
push(num);
totalcards=length(decks{deck.name}{"deck"});
totalcrypt=length(decks{deck.name}{"crypt"});
curdeck=decks{deck.name}{"deck"};
curcrypt=decks{deck.name}{"crypt"};


# Check to make sure there is a deck selected.
if(deck.name!=NULL) {
	del_object(mydeck.object);
	mydeck.box=create_listbox(350,309,mydeck.object,"VTES Deck Statistics",100,("Type","# of","% of Deck"),(110,60,70),11,(1,1,1));
	set_attr(mydeck.box,"ontop",34);
	  raise(mydeck.box);


  listbox_set_entry(mydeck.box,0,("{black}Vampires","{black}" + format("%3.0f",CountVampires(curcrypt)),
  					format("%3.0f",(CountVampires(curcrypt)/totalcrypt)*100) + "%"));

  listbox_set_entry(mydeck.box,1,("{brown}Equipment","{black}" + format("%3.0f",CountEquipment(curdeck)),
  					format("%3.0f",(CountEquipment(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,2,("{orange}Actions","{black}" + format("%3.0f",CountActions(curdeck)),
  					format("%3.0f",(CountActions(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,3,("{orange}Action Modifiers","{black}" + format("%3.0f",CountActionMods(curdeck)),
  					format("%3.0f",(CountActionMods(curdeck)/totalcards)*100) + "%"));					

  listbox_set_entry(mydeck.box,4,("{blue}Political Actions","{black}" + format("%3.0f",CountPoliticalActions(curdeck)),
  					format("%3.0f",(CountPoliticalActions(curdeck)/totalcards)*100) + "%"));					
					
  listbox_set_entry(mydeck.box,5,("{cyan}Reactions","{black}" + format("%3.0f",CountReactions(curdeck)),
  					format("%3.0f",(CountReactions(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,6,("{red}Combat","{black}" + format("%3.0f",CountCombat(curdeck)),
  					format("%3.0f",(CountCombat(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,7,("{brown}Allies","{black}" + format("%3.0f",CountAllies(curdeck)),
  					format("%3.0f",(CountAllies(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,8,("{gray}Masters","{black}" + format("%3.0f",CountMasters(curdeck)),
  					format("%3.0f",(CountMasters(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,9,("{brown}Retainers","{black}" + format("%3.0f",CountRetainers(curdeck)),
  					format("%3.0f",(CountRetainers(curdeck)/totalcards)*100) + "%"));

  

  set_attr(mydeck.box,"visible",1);

}
num=pop();
curdeck=pop();
totalcards=pop();
}

def ChatStatsMenu
{
  Menu("VTES Deck Statistics",(
   ("Woot","",""),
  ));
}

HELP{"chat"}{"deckstats"}=("","show deck statistics",
NULL,
"Open a window displaying a table of various statistics regarding the currently selected deck.");
