#
# Mtg Deck Statistics Script by Malakh
#

# CommandDeckstats - /mtgstats - Displays a Listbox report of Statistics on the currently selected deck.

mydeck.object=(obj=obj+1);

def CommandDeckstats
{

push(totalcards);
push(curdeck);
push(num);
totalcards=length(decks{deck.name}{"deck"});
curdeck=decks{deck.name}{"deck"};


# Check to make sure there is a deck selected.
if(deck.name!=NULL) {
  del_object(mydeck.object);
  mydeck.box=create_listbox(350,309,mydeck.object,"{orange}Mtg Deck Statistics",100,("Type","# of","% of Deck"),(110,60,70),11,(1,1,1));



  listbox_set_entry(mydeck.box,0,("{brown}Land","{black}" + format("%3.0f",CountMtgLand(curdeck)),
  					format("%3.0f",(CountMtgLand(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,1,("{brown}Creatures","{black}" + format("%3.0f",CountMtgCreatures(curdeck)),
  					format("%3.0f",(CountMtgCreatures(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,2,("{brown}Instants","{black}" + format("%3.0f",CountMtgInstants(curdeck)),
  					format("%3.0f",(CountMtgInstants(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,3,("{brown}Enchantments","{black}" + format("%3.0f",CountMtgEnchantments(curdeck)),
  					format("%3.0f",(CountMtgEnchantments(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,4,("{brown}Sorceries","{black}" + format("%3.0f",CountMtgSorceries(curdeck)),
  					format("%3.0f",(CountMtgSorceries(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,5,("{brown}Artifacts","{black}" + format("%3.0f",CountMtgArtifacts(curdeck)),
  					format("%3.0f",(CountMtgArtifacts(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,6,("{black}Black","{black}" + format("%3.0f",CountMtgBlack(curdeck)),
  					format("%3.0f",(CountMtgBlack(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,7,("{blue}Blue","{black}" + format("%3.0f",CountMtgBlue(curdeck)),
  					format("%3.0f",(CountMtgBlue(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,8,("{red}Red","{black}" + format("%3.0f",CountMtgRed(curdeck)),
  					format("%3.0f",(CountMtgRed(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,9,("{green}Green","{black}" + format("%3.0f",CountMtgGreen(curdeck)),
  					format("%3.0f",(CountMtgGreen(curdeck)/totalcards)*100) + "%"));

  listbox_set_entry(mydeck.box,10,("{yellow}White","{black}" + format("%3.0f",CountMtgWhite(curdeck)),
  					format("%3.0f",(CountMtgWhite(curdeck)/totalcards)*100) + "%"));






  set_attr(mydeck.box,"visible",1);
  raise(mydeck.box);
}
num=pop();
curdeck=pop();
totalcards=pop();
}

HELP{"chat"}{"deckstats"}=("","show deck statistics",
NULL,
"Open a window displaying a table of various statistics regarding the currently selected deck.");
