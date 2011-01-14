#
# SOLITAIRE
# =========

# VARIABLES:
#
# solitaire.deck - deck for solitaire opponent
# solitaire.deck_name - name of the selected shadow or NULL if none.
#

solitaire.deck=(("deck",(,)),);
solitaire.deck_name=NULL;

#
# SolitaireShadows() - Return a list of solitaire shadows.
#
def SolitaireShadows
{
  return(forall('left(#,length(#)-7)',select('right(#,7)==".shadow"',scripts())));
}

#
# LoadSolitaireShadow(name) - Import a shadow file and return it's
#   content as normal deck structure.
#
def LoadSolitaireShadow
{
  push(f);
  f=read_file(DATADIR+"/scripts/Lotr/"+ARG+".shadow");
  if(f==NULL)
    return("File "+DATADIR+"/scripts/Lotr/"+ARG+".shadow not found.");
  else
    return(ImportDeckFormat("ASCII",f));
  f=pop();
}

#
# SetSolitaireDeck(shadow name, quiet) - Load and setup solitaire deck structure.
#   If quiet=1, disable messages.
#
def SetSolitaireDeck
{
  if(ARG[0]=="random")
  {
    if(ARG[1]!=1)
      Msg("Generating random shadow...");
    push(c);
    push(h);

    h=select('Attr("kind",#)=="Shadow"',cards());
    c=select('Attr("type",#)=="Minion"',h);

    solitaire.deck_name="random";
    solitaire.deck=(,);
    solitaire.deck{"deck"}=shuffle(left(shuffle(c),12)+left(shuffle(h),16));

    h=pop();
    c=pop();
    if(ARG[1]!=1)
      Msg("shadow generated with "+length(solitaire.deck{"deck"})+" cards.");
  }
  else
  {  
    push(d);

    if(ARG[1]!=1)
      Msg("Loading shadow "+ARG[0]+"...");

    d=LoadSolitaireShadow(ARG[0]);
    if(typeof(d)=="string")
    {
      if(ARG[1]!=1)
        Msg("{red}Failed: "+d);
    }
    else
    {
      solitaire.deck_name=ARG[0];
      solitaire.deck=d;
      solitaire.deck{"deck"}=shuffle(solitaire.deck{"deck"});
      if(ARG[1]!=1)
        Msg("Shadow "+ARG[0]+" loaded with "+length(solitaire.deck{"deck"})+" cards.");
    }
    d=pop();
  }
}

#
# PlayCommandShadow(shadow name) - Load a named shadow or random shadow with argumet "random".
#   Without arguments, list all shadow options.
#
def PlayCommandShadow
{
  if(length(ARG)==0)
  {
    Msg("Shadows available: "+join(sort(SolitaireShadows()),", ")+" and random.");
  }
  else
  {
    SetSolitaireDeck(join(ARG," "),0);
  }
}

#
# SolitairePlayNext() - Take the first card from the solitaire deck and put aside.
#
def SolitairePlayNext
{
  if(solitaire.deck_name==NULL)
  {
    Msg("No shadow deck selected.");
    PlayCommandShadow(random(SolitaireShadows()),);
  }

  push(c);
  c=first(solitaire.deck{"deck"});
  if(c==NULL)
  {
    Msg("Exhausted...shuffling...");
    SetSolitaireDeck(solitaire.deck_name,1);
    c=first(solitaire.deck{"deck"});
    Msg("Done");
  }

  solitaire.deck{"deck"}=tail(solitaire.deck{"deck"});
  Send("Transfer",(1,("out.of.play",c),("active",0)));
  c=pop();
}

#
# PlayKeyControlKeyTab() - Set a next card in solitare deck aside.
#
def PlayKeyControlKeyTab
{
  SolitairePlayNext();
}
