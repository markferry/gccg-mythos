#
# Mtg Deck Statistics Script by Malakh
#

# CommandTextstats - /mtgtextstats - Display a Text report of statistics on the currently selected deck.

def CommandTextstats
{

push(totalcards);
push(curdeck);
push(num);
totalcards=length(decks{deck.name}{"deck"});
curdeck=decks{deck.name}{"deck"};

if(deck.name!=NULL) {
Msg("{orange} *** Mtg Deck Statistics *** ");

  Msg("{gold}Land {white}" + format("%3.0f",CountMtgLand(curdeck)) + " (" +
  					format("%3.0f",(CountMtgLand(curdeck)/totalcards)*100) + "%" + ")" + "{gold} Creatures {white}" + format("%3.0f",CountMtgCreatures(curdeck)) + " (" +
  					format("%3.0f",(CountMtgCreatures(curdeck)/totalcards)*100) + "%" + ")" + "{gold} Instants {white}" + format("%3.0f",CountMtgInstants(curdeck)) + " (" +
  					format("%3.0f",(CountMtgInstants(curdeck)/totalcards)*100) + "%" + ")" + "{gold} Enchantments {white}" + format("%3.0f",CountMtgEnchantments(curdeck)) + " (" +
  					format("%3.0f",(CountMtgEnchantments(curdeck)/totalcards)*100) + "%" + ")" + "{gold} Sorceries {white}" + format("%3.0f",CountMtgSorceries(curdeck)) + " (" +
  					format("%3.0f",(CountMtgSorceries(curdeck)/totalcards)*100) + "%" + ")");

  Msg("{gold}Artifacts {white}" + format("%3.0f",CountMtgArtifacts(curdeck)) + " (" +
  					format("%3.0f",(CountMtgArtifacts(curdeck)/totalcards)*100) + "%" + ")" + "{brown} Black {white}" + format("%3.0f",CountMtgBlack(curdeck)) + " (" +
  					format("%3.0f",(CountMtgBlack(curdeck)/totalcards)*100) + "%" + ")" + "{blue} Blue {white}" + format("%3.0f",CountMtgBlue(curdeck)) + " (" +
  					format("%3.0f",(CountMtgBlue(curdeck)/totalcards)*100) + "%" + ")" + "{red} Red {white}" + format("%3.0f",CountMtgRed(curdeck)) + " (" +
  					format("%3.0f",(CountMtgRed(curdeck)/totalcards)*100) + "%" + ")" + "{green} Green {white}" + format("%3.0f",CountMtgGreen(curdeck)) + " (" +
  					format("%3.0f",(CountMtgGreen(curdeck)/totalcards)*100) + "%" + ")" + "{yellow} White {white}" + format("%3.0f",CountMtgWhite(curdeck)) + " (" +
  					format("%3.0f",(CountMtgWhite(curdeck)/totalcards)*100) + "%" + ")");
}
num=pop();
curdeck=pop();
totalcards=pop();
}
