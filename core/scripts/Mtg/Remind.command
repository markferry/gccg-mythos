# Remind command for gccg.
#
# Copyright (C) 2010 mofo
#
# Distributed under the terms of the GNU GPL, version 3.  See COPYING
# for details.

if(msg.box != NULL)
{
	Msg("Loading {gold}Remind.command");
}

HELP{"any"}{"remind"}=("keyword","Print reminder text",NULL,
"Prints reminder text for keyword {yellow}<keyword>{white}. If no {yellow}<keyword>{white} is given, the list of available keywords is printed.");

def CommandRemind
{
	if(ARG==(,))
	{
		Msg("{green}List of available keywords\n
        {yellow}A: {white}Absorb, Affinity, Amplify, Annihilator, Attach, Aura swap.\n
        {yellow}B: {white}Banding, Bands with Other, Bloodthirst, Bushido, Buyback.\n
        {yellow}C: {white}Cascade, Champion, Changeling, Channel, Chroma, Clash, Conspire, Convoke, Counter, Cumulative Upkeep, Cycling.\n
        {yellow}D: {white}Deathtouch, Defender, Delve, Devour, Domain, Double strike, Dredge.\n
        {yellow}E: {white}Echo, Emblem, Enchant, Entwine, Epic, Equip, Evoke, Exalted.\n
        {yellow}F: {white}Fading, Fateseal, Fear, First strike, Flanking, Flash, Flashback, Flying, Forecast, Fortify, Frenzy.\n
        {yellow}G: {white}Graft, Grandeur, Gravestorm.\n
        {yellow}H: {white}Haste, Haunt, Hellbent, Hexproof, Hideaway, Horsemanship.\n
        {yellow}I: {white}Imprint, Infect, Intimidate.\n
        {yellow}K: {white}Kicker, Kinship.\n
        {yellow}L: {white}Landfall, Landwalk, Level up, Lifelink.\n
        {yellow}M: {white}Madness, Metalcraft, Modular, Morph, Multikicker.\n
        {yellow}N: {white}Ninjutsu.\n
        {yellow}O: {white}Offering.\n
        {yellow}P: {white}Persist, Phasing, Poisonous, Proliferate, Protection, Provoke, Prowl.\n
        {yellow}R: {white}Radiance, Rampage, Reach, Rebound, Recover, Regenerate, Reinforce, Replicate, Retrace, Ripple.\n
        {yellow}S: {white}Sacrifice, Scry, Shadow, Shroud, Soulshift, Splice, Split second, Storm, Sunburst, Suspend, Sweep.\n
        {yellow}T: {white}Tap, Threshold, Trample, Transfigure, Transmute, Totem armor, Typecycling.\n
        {yellow}U: {white}Unearth, Untap.\n
        {yellow}V: {white}Vanishing, Vigilance.\n
        {yellow}W: {white}Wither.\n
        see /help remind.");
	}
	else if(lc(ARG)==("absorb",))
	{
        Msg("{yellow}Absorb{white} is a static ability. \"Absorb N\" means \"If a source would deal damage to this creature, prevent N of that damage.\"");
	}
	else if(lc(ARG)==("affinity",))
	{
        Msg("{yellow}Affinity{white} is a static ability. \"Affinity for [text]\" means \"This spell costs you {1} less to cast for each [text] you control.\"");
	}
	else if(lc(ARG)==("amplify",))
	{
        Msg("{yellow}Amplify{white} is a static ability. \"Amplify N\" means \"As this object enters the battlefield, reveal any number of cards from your hand that share a creature type with it. This permanent enters the battlefield with N +1/+1 counters on it for each card revealed this way. You can't reveal this card or any other cards that are entering the battlefield at the same time as this card.\"");
	}
	else if(lc(ARG)==("annihilator",))
	{
        Msg("{yellow}Annihilator{white} is a triggered ability. \"Annihilator N\" means \"Whenever this creature attacks, defending player sacrifices N permanents.\" ");
	}
	else if(lc(ARG)==("attach",))
	{
        Msg("{yellow}Attach{white} means: \"To move an Aura, Equipment, or Fortification onto another object.\"");
	}
	else if(lc(ARG)==("aura","swap",))
	{
        Msg("{yellow}Aura swap{white} is an activated ability of some Aura cards. \"Aura swap [cost]\" means \"[Cost]: You may exchange this permanent with an Aura card in your hand.\"");
	}
	else if(lc(ARG)==("banding",))
	{
        Msg("{yellow}Banding{white} is a static ability. Any creatures with banding, and up to one without, can attack in a band. Bands are blocked as a group. If any creatures with banding you control are blocking or being blocked by a creature, you divide that creature's combat damage, not its controller, among any of the creatures it's being blocked by or is blocking.");
	}
	else if(lc(ARG)==("bands","with","other",))
	{
        Msg("{yellow}Bands with Other{white} is a static ability. \"Bands with other [quality]\" means \"Any [quality] creatures can attack in a band as long as at least one has \"bands with other [quality] creatures.\" Bands are blocked as a group. If at least two [quality] creatures you control, one of which has \"bands with other [quality] creatures\", are blocking or being blocked by the same creature, you divide that creature's combat damage, not its controller, among any of the creatures it's being blocked by or is blocking.");
	}
	else if(lc(ARG)==("bloodthirst",))
	{
        Msg("{yellow}Bloodthirst{white} is a static ability. \"Bloodthirst N\" means \"If an opponent was dealt damage this turn, this permanent enters the battlefield with N +1/+1 counters on it.\"");
	}
	else if(lc(ARG)==("bushido",))
	{
        Msg("{yellow}Bushido{white} is a triggered ability. \"Bushido N\" means \"Whenever this creature blocks or becomes blocked, it gets +N/+N until end of turn.\"");
	}
	else if(lc(ARG)==("buyback",))
	{
        Msg("{yellow}Buyback{white} represents two static abilities. \"Buyback [cost]\" means \"You may pay an additional [cost] as you cast this spell\" and \"If the buyback cost was paid, put this spell into its owner's hand instead of into that player's graveyard as it resolves.\"");
	}
	else if(lc(ARG)==("cascade",))
	{
        Msg("{yellow}Cascade{white} is a triggered ability. \"Cascade\" means \"When you cast this spell, exile cards from the top of your library until you exile a nonland card whose converted mana cost is less than this spell's converted mana cost. You may cast that card without paying its mana cost. Then put all cards exiled this way that weren't cast on the bottom of your library in a random order.\" ");
	}
	else if(lc(ARG)==("champion",))
	{
        Msg("{yellow}Champion{white} represents two triggered abilities. \"Champion an [object]\" means \"When this permanent enters the battlefield, sacrifice it unless you exile another [object] you control\" and \"When this permanent leaves the battlefield, return the exiled card to the battlefield under its owner's control.\"");
	}
	else if(lc(ARG)==("changeling",))
	{
        Msg("{yellow}Changeling{white} is a static ability. \"Changeling\" means \"This object is every creature type.\" This ability works everywhere, even outside the game.");
	}
	else if(lc(ARG)==("channel",))
	{
        Msg("{yellow}channel{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("chroma",))
	{
        Msg("{yellow}chroma{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("clash",))
	{
        Msg("{yellow}Clash{white} is a static ability. \"Clash with an opponent\" means \"Choose an opponent. You and that opponent each clash.\" Each clashing player reveals the top card of his or her library, then puts that card on the top or bottom. A player wins if his or her card had a higher converted mana cost.");
	}
	else if(lc(ARG)==("conspire",))
	{
        Msg("{yellow}Conspire{white} represents both a static ability and a triggered ability. \"Conspire\" means \"As an additional cost to cast this spell, you may tap two untapped creatures you control that each share a color with it\" and \"When you cast this spell, if its conspire cost was paid, copy it. If the spell has any targets, you may choose new targets for the copy.\"");
	}
	else if(lc(ARG)==("convoke",))
	{
        Msg("{yellow}Convoke{white} is a static ability. \"Convoke\" means \"As an additional cost to cast this spell, you may tap any number of untapped creatures you control. Each creature tapped this way reduces the cost to cast this spell by {1} or by one mana of any of that creature's colors.\"");
	}
	else if(lc(ARG)==("counter",))
	{
        Msg("{yellow}Counter{white} has 2 meanings.\n
        1. To cancel a spell or ability so it doesn't resolve and none of its effects occur. See rule 701.5, \"Counter.\"\n
        2. A marker placed on an object or player that modifies its characteristics or interacts with a rule or ability.");
	}
	else if(lc(ARG)==("cumulative","upkeep",))
	{
        Msg("{yellow}Cumulative upkeep{white} is a triggered ability. \"Cumulative upkeep [cost]\" means \"At the beginning of your upkeep, if this permanent is on the battlefield, put an age counter on this permanent. Then you may pay [cost] for each age counter on it. If you don't, sacrifice it.\"");
	}
	else if(lc(ARG)==("cycling",))
	{
        Msg("{yellow}Cycling{white} is an activated ability. \"Cycling [cost]\" means \"[Cost], Discard this card: Draw a card.\"");
	}
	else if(lc(ARG)==("deathtouch",))
	{
        Msg("{yellow}Deathtouch{white} is a static ability. Any nonzero amount of combat damage assigned to a creature by a source with deathtouch is considered to be lethal damage, regardless of that creature's toughness. ");
	}
	else if(lc(ARG)==("defender",))
	{
        Msg("{yellow}Defender{white} is a static ability. A creature with defender can't attack. ");
	}
	else if(lc(ARG)==("delve",))
	{
        Msg("{yellow}Delve{white} is a static ability. \"Delve\" means \"As an additional cost to cast this spell, you may exile any number of cards from your graveyard. Each card exiled this way reduces the cost to cast this spell by {1}.\"");
	}
	else if(lc(ARG)==("devour",))
	{
        Msg("{yellow}Devour{white} is a static ability. \"Devour N\" means \"As this object enters the battlefield, you may sacrifice any number of creatures. This permanent enters the battlefield with N +1/+1 counters on it for each creature sacrificed this way.\"");
	}
	else if(lc(ARG)==("domain",))
	{
        Msg("{yellow}Domain{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("double","strike",))
	{
        Msg("{yellow}Double strike{white} is a static ability. If at least one attacking or blocking creature has first strike or double strike as the combat damage step begins, the only creatures that assign combat damage in that step are those with first strike or double strike. After that step, instead of proceeding to the end of combat step, the phase gets a second combat damage step. The only creatures that assign combat damage in that step are the remaining attackers and blockers that had neither first strike nor double strike as the first combat damage step began, as well as the remaining attackers and blockers that currently have double strike. After that step, the phase proceeds to the end of combat step. ");
	}
	else if(lc(ARG)==("dredge",))
	{
        Msg("{yellow}Dredge{white} is a static ability that functions only while the card with dredge is in a player's graveyard. \"Dredge N\" means \"As long as you have at least N cards in your library, if you would draw a card, you may instead put N cards from the top of your library into your graveyard and return this card from your graveyard to your hand.\"");
	}
	else if(lc(ARG)==("echo",))
	{
        Msg("{yellow}Echo{white} is a triggered ability. \"Echo [cost]\" means \"At the beginning of your upkeep, if this permanent came under your control since the beginning of your last upkeep, sacrifice it unless you pay [cost].\"");
	}
	else if(lc(ARG)==("emblem",))
	{
        Msg("An {yellow}emblem{white} is a marker used to represent an object that has one or more abilities, but no other characteristics. An effect that creates an emblem is written \"[Player] gets an emblem with [ability].\" This means that [player] puts an emblem with [ability] into the command zone. The emblem is both owned and controlled by that player.");
	}
	else if(lc(ARG)==("enchant",))
	{
        Msg("{yellow}Enchant{white} is a static ability, written \"Enchant [object or player].\" The enchant ability restricts what an Aura spell can target and what an Aura can enchant.");
	}
	else if(lc(ARG)==("entwine",))
	{
        Msg("{yellow}Entwine{white} is a static ability. \"Entwine [cost]\" means \"You may choose all modes of this spell instead of just one. If you do, you pay an additional [cost].\"");
	}
	else if(lc(ARG)==("epic",))
	{
        Msg("{yellow}Epic{white} represents two spell abilities, one of which creates a delayed triggered ability. \"Epic\" means \"For the rest of the game, you can't cast spells\", and \"At the beginning of each of your upkeeps for the rest of the game, copy this spell except for its epic ability. If the spell has any targets, you may choose new targets for the copy.\"");
	}
	else if(lc(ARG)==("equip",))
	{
        Msg("{yellow}Equip {white}is an activated ability. \"Equip [cost]\" means \"[Cost]: Attach this Equipment to target creature you control. Activate this ability only any time you could cast a sorcery.\"");
	}
	else if(lc(ARG)==("evoke",))
	{
        Msg("{yellow}Evoke{white} represents two abilities: a static ability that functions in any zone from which the card with evoke can be cast and a triggered ability that functions on the battlefield. \"Evoke [cost]\" means \"You may cast this card by paying [cost] rather than paying its mana cost\" and \"When this permanent enters the battlefield, if its evoke cost was paid, its controller sacrifices it.\"");
	}
	else if(lc(ARG)==("exalted",))
	{
        Msg("{yellow}Exalted{white} is a triggered ability. \"Exalted\" means \"Whenever a creature you control attacks alone, that creature gets +1/+1 until end of turn.\"");
	}
	else if(lc(ARG)==("fading",))
	{
        Msg("{yellow}Fading {white} represents two abilities. \"Fading N\" means \"This permanent enters the battlefield with N fade counters on it\" and \"At the beginning of your upkeep, remove a fade counter from this permanent. If you can't, sacrifice the permanent.\"");
	}
	else if(lc(ARG)==("fateseal",))
	{
        Msg("To \"{yellow}Fateseal{white} N\" means to look at the top N cards of an opponent's library, put any number of them on the bottom of that library in any order, and put the rest on top of that library in any order. ");
	}
	else if(lc(ARG)==("fear",))
	{
        Msg("{yellow}Fear{white} is a static ability. A creature with fear can't be blocked except by artifact creatures and/or black creatures.");
	}
	else if(lc(ARG)==("first","strike",))
	{
        Msg("{yellow}First strike{white} is a static ability. If at least one attacking or blocking creature has first strike or double strike as the combat damage step begins, the only creatures that assign combat damage in that step are those with first strike or double strike. After that step, instead of proceeding to the end of combat step, the phase gets a second combat damage step. The only creatures that assign combat damage in that step are the remaining attackers and blockers that had neither first strike nor double strike as the first combat damage step began, as well as the remaining attackers and blockers that currently have double strike. After that step, the phase proceeds to the end of combat step.");
	}
	else if(lc(ARG)==("flanking",))
	{
        Msg("{yellow}Flanking{white} is a triggered ability. \"Flanking\" means \"Whenever this creature becomes blocked by a creature without flanking, the blocking creature gets -1/-1 until end of turn.\"");
	}
	else if(lc(ARG)==("flash",))
	{
        Msg("{yellow}Flash{white} is a static ability. \"Flash\" means \"You may play this card any time you could cast an instant.\"");
	}
	else if(lc(ARG)==("flashback",))
	{
        Msg("{yellow}Flashback{white} represents two static abilities. \"Flashback [cost]\" means \"You may cast this card from your graveyard by paying [cost] rather than paying its mana cost\" and \"If the flashback cost was paid, exile this card instead of putting it anywhere else any time it would leave the stack.\"");
	}
	else if(lc(ARG)==("flying",))
	{
        Msg("{yellow}Flying{white} is a static ability. A creature with flying can't be blocked except by creatures with flying and/or reach. A creature with flying can block a creature with or without flying.");
	}
	else if(lc(ARG)==("forecast",))
	{
        Msg("{yellow}Forecast {white} is an activated ability. A forecast ability is written \"Forecast Ñ [Activated ability].\" and may be activated only during the upkeep step of the card's owner and only once each turn. The controller of the forecast ability reveals the card with that ability from his or her hand as the ability is activated. That player plays with that card revealed in his or her hand until it leaves the player's hand or until a step or phase that isn't an upkeep step begins, whichever comes first.");
	}
	else if(lc(ARG)==("fortify",))
	{
        Msg("{yellow}Fortify{white} is an activated ability. \"Fortify [cost]\" means \"[Cost]: Attach this Fortification to target land you control. Activate this ability only any time you could cast a sorcery.\"");
	}
	else if(lc(ARG)==("frenzy",))
	{
        Msg("{yellow}Frenzy{white} is a triggered ability. \"Frenzy N\" means \"Whenever this creature attacks and isn't blocked, it gets +N/+0 until end of turn.\"");
	}
	else if(lc(ARG)==("graft",))
	{
        Msg("{yellow}Graft{white} represents both a static ability and a triggered ability. \"Graft N\" means \"This permanent enters the battlefield with N +1/+1 counters on it\" and \"Whenever another creature enters the battlefield, if this permanent has a +1/+1 counter on it, you may move a +1/+1 counter from this permanent onto that creature.\"");
	}
	else if(lc(ARG)==("grandeur",))
	{
        Msg("{yellow}Grandeur{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("gravestorm",))
	{
        Msg("{yellow}Gravestorm{white} is a triggered ability. \"Gravestorm\" means \"When you cast this spell, put a copy of it onto the stack for each permanent that was put into a graveyard from the battlefield this turn. If the spell has any targets, you may choose new targets for any of the copies.\"");
	}
	else if(lc(ARG)==("haste",))
	{
        Msg("{yellow}Haste{white} is a static ability. If a creature has haste, it can attack even if it hasn't been controlled by its controller continuously since his or her most recent turn began. If a creature has haste, its controller can activate its activated abilities whose cost includes the tap symbol or the untap symbol even if that creature hasn't been controlled by that player continuously since his or her most recent turn began.");
	}
	else if(lc(ARG)==("haunt",))
	{
        Msg("{yellow}Haunt{white}is a triggered ability. \"Haunt\" on a permanent means \"When this permanent is put into a graveyard from the battlefield, exile it haunting target creature.\" \"Haunt\" on an instant or sorcery spell means \"When this spell is put into a graveyard during its resolution, exile it haunting target creature.\"");
	}
	else if(lc(ARG)==("hellbent",))
	{
        Msg("{yellow}Hellbent{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("hexproof",))
	{
        Msg("{yellow}Hexproof{white} is a static ability. \"Hexproof\" on a permanent means \"This permanent can't be the target of spells or abilities that permanent's controller opponents control.\". \"Hexproof\" on a player means \"This player can't be the target of spells or abilities that player's opponents control.\".");
	}
	else if(lc(ARG)==("hideaway",))
	{
        Msg("{yellow}Hideaway{white} represents a static ability and a triggered ability. \"Hideaway\" means \"This permanent enters the battlefield tapped\" and \"When this permanent enters the battlefield, look at the top four cards of your library. Exile one of them face down and put the rest on the bottom of your library in any order. The exiled card gains ÔAny player who has controlled the permanent that exiled this card may look at this card in the exile zone.'\"");
	}
	else if(lc(ARG)==("horsemanship",))
	{
        Msg("{yellow}Horsemanship{white} is a static ability. A creature with horsemanship can't be blocked by creatures without horsemanship. A creature with horsemanship can block a creature with or without horsemanship.");
	}
	else if(lc(ARG)==("imprint",))
	{
        Msg("{yellow}Imprint{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("infect",))
	{
        Msg("{yellow}Infect{white} is a static ability. Damage dealt to a player by a source with infect doesn't cause that player to lose life. Rather, it causes the player to get that many poison counters. Damage dealt to a creature by a source with infect isn't marked on that creature. Rather, it causes that many -1/-1 counters to be put on that creature.");
	}
	else if(lc(ARG)==("intimidate",))
	{
        Msg("{yellow}Intimidate{white} is a static ability. A creature with intimidate can't be blocked except by artifact creatures and/or creatures that share a color with it.");
	}
   	else if(lc(ARG)==("kicker",))
	{
        Msg("{yellow}Kicker{white} is a static ability that functions. \"Kicker [cost]\" means \"You may pay an additional [cost] as you cast this spell.\"");
	}
	else if(lc(ARG)==("kinship",))
	{
        Msg("{yellow}Kinship{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("landfall",))
	{
        Msg("{yellow}Landfall{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("landwalk",))
	{
        Msg("{yellow}Landwalk{white} is a static ability and a generic term that appears within an object's rules text as \"[type]walk\", where [type] is usually a subtype, but can be the card type land, any land type, any supertype, or any combination thereof.  A creature with landwalk is unblockable as long as the defending player controls at least one land with the specified subtype (as in \"islandwalk\"), with the specified supertype (as in \"legendary landwalk\"), without the specified supertype (as in \"nonbasic landwalk\"), or with both the specified supertype and the specified subtype (as in \"snow swampwalk\").");
	}
	else if(lc(ARG)==("level","up",))
	{
        Msg("{yellow}Level up{white} up is an activated ability. \"Level up [cost]\" means \"[Cost]: Put a level counter on this permanent. Activate this ability only any time you could cast a sorcery.\"");
	}
	else if(lc(ARG)==("lifelink",))
	{
        Msg("{yellow}Lifelink{white} is a static ability. Damage dealt by a source with lifelink causes that source's controller, or its owner if it has no controller, to gain that much life (in addition to any other results that damage causes). ");
	}
	else if(lc(ARG)==("madness",))
	{
        Msg("{yellow}Madness{white} is a keyword that represents both a static and a triggered ability. \"Madness [cost]\" means \"If a player would discard this card, that player discards it, but may exile it instead of putting it into his or her graveyard\" and \"When this card is exiled this way, its owner may cast it by paying [cost] rather than paying its mana cost. If that player doesn't, he or she puts this card into his or her graveyard.\"");
	}
	else if(lc(ARG)==("metalcraft",))
	{
        Msg("{yellow}Metalcraft{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("modular",))
	{
        Msg("{yellow}Modular{white} represents both a static ability and a triggered ability. \"Modular N\" means \"This permanent enters the battlefield with N +1/+1 counters on it\" and \"When this permanent is put into a graveyard from the battlefield, you may put a +1/+1 counter on target artifact creature for each +1/+1 counter on this permanent.\"");
	}
	else if(lc(ARG)==("morph",))
	{
        Msg("{yellow}Morph{white} is a static ability. \"Morph [cost]\" means \"You may cast this card as a 2/2 face-down creature, with no text, no name, no subtypes, no expansion symbol, and no mana cost by paying {3} rather than paying its mana cost.\"");
	}
	else if(lc(ARG)==("multikicker",))
	{
        Msg("{yellow}Multikicker{white} is a variant of the {yellow}kicker{white} ability. \"Multikicker [cost]\" means \"You may pay an additional [cost] any number of times as you cast this spell.\" A multikicker cost is a kicker cost.");
	}
	else if(lc(ARG)==("ninjutsu",))
	{
        Msg("{yellow}Ninjutsu{white} is an activated ability. \"Ninjutsu [cost]\" means \"[Cost], Reveal this card from your hand, Return an unblocked attacking creature you control to its owner's hand: Put this card onto the battlefield from your hand tapped and attacking.\"");
	}	
	else if(lc(ARG)==("offering",))
	{
        Msg("{yellow}Offering{white} is a static ability. \"[Subtype] offering\" means \"You may cast this card any time you could cast an instant by sacrificing a [subtype] permanent. If you do, the total cost to cast this card is reduced by the sacrificed permanent's mana cost.\"");
	}
	else if(lc(ARG)==("persist",))
	{
        Msg("{yellow}Persist{white} is a triggered ability. \"Persist\" means \"When this permanent is put into a graveyard from the battlefield, if it had no -1/-1 counters on it, return it to the battlefield under its owner's control with a -1/-1 counter on it.\"");
	}
	else if(lc(ARG)==("phasing",))
	{
        Msg("{yellow}Phasing{white} is a static ability. During each player's untap step, before the active player untaps his or her permanents, all phased-in permanents with phasing that player controls \"phase out\". Simultaneously, all phased-out permanents that had phased out under that player's control \"phase in\".");
	}
	else if(lc(ARG)==("poisonous",))
	{
        Msg("{yellow}Poisonous{white} is a triggered ability. \"Poisonous N\" means \"Whenever this creature deals combat damage to a player, that player gets N poison counters.\"");
	}
	else if(lc(ARG)==("proliferate",))
	{
        Msg("To {yellow}proliferate{white} means to choose any number of permanents and/or players that have a counter, then give each exactly one additional counter of a kind that permanent or player already has. ");
	}
	else if(lc(ARG)==("protection",))
	{
        Msg("{yellow}Protection{white} is a static ability, written \"Protection from [quality].\" A permanent or player with protection can't be targeted by spells with the stated quality and can't be targeted by abilities from a source with the stated quality. A permanent or player with protection can't be enchanted by Auras that have the stated quality. Such Auras attached to the permanent or player with protection will be put into their owners' graveyards as a state-based action. A permanent with protection can't be equipped by Equipment that have the stated quality or fortified by Fortifications that have the stated quality. Such Equipment or Fortifications become unattached from that permanent as a state-based action, but remain on the battlefield. Any damage that would be dealt by sources that have the stated quality to a permanent or player with protection is prevented. Attacking creatures with protection can't be blocked by creatures that have the stated quality.");
	}
	else if(lc(ARG)==("provoke",))
	{
        Msg("{yellow}Provoke{white} is a triggered ability. \"Provoke\" means \"Whenever this creature attacks, you may choose to have target creature defending player controls block this creature this combat if able. If you do, untap that creature.\"");
	}
	else if(lc(ARG)==("prowl",))
	{
        Msg("{yellow}Prowl{white} is a static ability. \"Prowl [cost]\" means \"You may pay [cost] rather than pay this spell's mana cost if a player was dealt combat damage this turn by a source that, at the time it dealt that damage, was under your control and had any of this spell's creature types.\"");
	}
	else if(lc(ARG)==("radiance",))
	{
        Msg("{yellow}Radiance{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("rampage",))
	{
        Msg("{yellow}Rampage{white} is a triggered ability. \"Rampage N\" means \"Whenever this creature becomes blocked, it gets +N/+N until end of turn for each creature blocking it beyond the first.\"");
	}
	else if(lc(ARG)==("reach",))
	{
        Msg("{yellow}Reach{white} is a static ability. A creature with flying can't be blocked except by creatures with flying and/or reach.");
	}
	else if(lc(ARG)==("rebound",))
	{
        Msg("{yellow}Rebound{white} is a static ability that functions and may create a delayed triggered ability. \"Rebound\" means \"If this spell was cast from your hand, instead of putting it into your graveyard as it resolves, exile it and, at the beginning of your next upkeep, you may cast this card from exile without paying its mana cost.\"");
	}
	else if(lc(ARG)==("recover",))
	{
        Msg("{yellow}Recover{white} is a triggered ability. \"Recover [cost]\" means \"When a creature is put into your graveyard from the battlefield, you may pay [cost]. If you do, return this card from your graveyard to your hand. Otherwise, exile this card.\"");
	}
	else if(lc(ARG)==("regenerate",))
	{
        Msg("
        If the effect of a resolving spell or ability {yellow}regenerates{white} a permanent, it creates a replacement effect that protects the permanent the next time it would be destroyed this turn. In this case, \"Regenerate [permanent]\" means \"The next time [permanent] would be destroyed this turn, instead remove all damage marked on it and tap it. If it's an attacking or blocking creature, remove it from combat.\" If the effect of a static ability {yellow}regenerates{white} a permanent, it replaces destruction with an alternate effect each time that permanent would be destroyed. In this case, \"Regenerate [permanent]\" means \"Instead remove all damage marked on [permanent] and tap it. If it's an attacking or blocking creature, remove it from combat.\"");
	}
	else if(lc(ARG)==("reinforce",))
	{
        Msg("{yellow}Reinforce{white} is an activated ability. \"Reinforce NÑ[cost]\" means \"[Cost], Discard this card: Put N +1/+1 counters on target creature.\" ");
	}        
	else if(lc(ARG)==("replicate",))
	{
        Msg("{yellow}Replicate{white}represents both a static ability and a triggered ability. \"Replicate [cost]\" means \"As an additional cost to cast this spell, you may pay [cost] any number of times\" and \"When you cast this spell, if a replicate cost was paid for it, copy it for each time its replicate cost was paid. If the spell has any targets, you may choose new targets for any of the copies.\"");
	}
	else if(lc(ARG)==("retrace",))
	{
        Msg("{yellow}Retrace{white} is a static ability that functions while the card with retrace is in a player's graveyard. \"Retrace\" means \"You may cast this card from your graveyard by discarding a land card as an additional cost to cast it.\"");
	}
	else if(lc(ARG)==("ripple",))
	{
        Msg("{yellow}Ripple{white}is a triggered ability. \"Ripple N\" means \"When you cast this spell, you may reveal the top N cards of your library, or, if there are fewer than N cards in your library, you may reveal all the cards in your library. If you reveal cards from your library this way, you may cast any of those cards with the same name as this spell without paying their manon the bottom of your library in any order.\"");
	}
	else if(lc(ARG)==("sacrifice",))
	{
        Msg("To {yellow}sacrifice{white} a permanent, its controller moves it from the battlefield directly to its owner's graveyard. A player can't sacrifice something that isn't a permanent, or something that's a permanent he or she doesn't control. Sacrificing a permanent doesn't destroy it, so regeneration or other effects that replace destruction can't affect this action. ");
	}
	else if(lc(ARG)==("scry",))
	{
        Msg("To \"{yellow}scry{white}scry N\" means to look at the top N cards of your library, put any number of them on the bottom of your library in any order, and put the rest on top of your library in any order. ");
	}
	else if(lc(ARG)==("shadow",))
	{
        Msg("{yellow}Shadow{white} is a static ability. A creature with shadow can't be blocked by creatures without shadow, and a creature  without shadow can't be blocked by creatures with shadow.");
	}
	else if(lc(ARG)==("shroud",))
	{
        Msg("{yellow}Shroud{white} is a static ability. \"Shroud\" means \"This permanent or player can't be the target of spells or abilities.\"");
	}
	else if(lc(ARG)==("soulshift",))
	{
        Msg("{yellow}Soulshift{white} is a triggered ability. \"Soulshift N\" means \"When this permanent is put into a graveyard from the battlefield, you may return target Spirit card with converted mana cost N or less from your graveyard to your hand.\"");
	}
	else if(lc(ARG)==("splice",))
	{
        Msg("{yellow}Splice{white} is a static ability. \"Splice onto [subtype] [cost]\" means \"You may reveal this card from your hand as you cast a [subtype] spell. If you do, copy this card's text box onto that spell and pay [cost] as an additional cost to cast that spell.\"");
	}
	else if(lc(ARG)==("split","second",))
	{
        Msg("{yellow}Split second{white} is a static ability. \"Split second\" means \"As long as this spell is on the stack, players can't cast other spells or activate abilities that aren't mana abilities.\"");
	}
	else if(lc(ARG)==("storm",))
	{
        Msg("{yellow}Storm{white} is a triggered ability. \"Storm\" means \"When you cast this spell, put a copy of it onto the stack for each other spell that was cast before it this turn. If the spell has any targets, you may choose new targets for any of the copies.\"");
	}
	else if(lc(ARG)==("sunburst",))
	{
        Msg("{yellow}Sunburst{white} is a static ability. \"Sunburst\" means \"If this object is entering the battlefield from the stack as a creature, it enters the battlefield with a +1/+1 counter on it for each color of mana spent to cast it. If this object is entering the battlefield from the stack and isn't entering the battlefield as a creature, it enters the battlefield with a charge counter on it for each color of mana spent to cast it.\"");
	}
	else if(lc(ARG)==("suspend",))
	{
        Msg("{yellow}Suspend{white} represents a static and two triggered abilities. \"Suspend NÑ[cost]\" means \"If you could begin to cast this card by putting it onto the stack from your hand, you may pay [cost] and exile it with N time counters on it. This action doesn't use the stack,\" and \"At the beginning of your upkeep, if this card is suspended, remove a time counter from it,\" and \"When the last time counter is removed from this card, if it's exiled, play it without paying its mana cost if able. If you can't, it remains exiled. If you cast a creature spell this way, it gains haste until you lose control of the spell or the permanent it becomes.\" ");
	}
	else if(lc(ARG)==("sweep",))
	{
        Msg("{yellow}Sweep{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("tap",))
	{
        Msg("To {yellow}tap{white} a permanent, turn it sideways from an upright position. Only untapped permanents can be tapped.");
	}
	else if(lc(ARG)==("threshold",))
	{
        Msg("{yellow}Threshold{white} is an ability word. The card itself explains the referred ability.");
	}
	else if(lc(ARG)==("trample",))
	{
        Msg("{yellow}Trample{white} is a static ability. The controller of an attacking creature with trample first assigns damage to the creature(s) blocking it. Once all those blocking creatures are assigned lethal damage, any remaining damage is assigned as its controller chooses among those blocking creatures and the player or planeswalker the creature is attacking. When checking for assigned lethal damage, take into account damage already marked on the creature and damage from other creatures that's being assigned during the same combat damage step, but not any abilities or effects that might change the amount of damage that's actually dealt. The attacking creature's controller need not assign lethal damage to all those blocking creatures but in that case can't assign any damage to the player or planeswalker it's attacking.");
	}
	else if(lc(ARG)==("transfigure",))
	{
        Msg("{yellow}Transfigure{white} is an activated ability. \"Transfigure [cost]\" means \"[Cost], Sacrifice this permanent: Search your library for a creature card with the same converted mana cost as this permanent and put it onto the battlefield. Then shuffle your library. Activate this ability only any time you could cast a sorcery.\"");
	}
	else if(lc(ARG)==("transmute",))
	{
        Msg("{yellow}Transmute{white} is an activated ability that functions only while the card with transmute is in a player's hand. \"Transmute [cost]\" means \"[Cost], Discard this card: Search your library for a card with the same converted mana cost as the discarded card, reveal that card, and put it into your hand. Then shuffle your library. Activate this ability only any time you could cast a sorcery.\"");
	}
	else if(lc(ARG)==("totem","armor",))
	{
        Msg("{yellow}Totem armor{white} is a static ability. \"Totem armor\" means \"If enchanted permanent would be destroyed, instead remove all damage marked on it and destroy this Aura.\"");
	}
	else if(lc(ARG)==("typecycling",))
	{
        Msg("{yellow}Typecycling{white} is a variant of the {yellow}cycling{white} ability. \"[Type]cycling [cost]\" means \"[Cost], Discard this card: Search your library for a [type] card, reveal it, and put it into your hand. Then shuffle your library.\"");
	}	
	else if(lc(ARG)==("unearth",))
	{
        Msg("{yellow}Unearth{white} is an activated ability. \"Unearth [cost]\" means \"[Cost]: Return this card from your graveyard to the battlefield. It gains haste. Exile it at the beginning of the next end step. If it would leave the battlefield, exile it instead of putting it anywhere else. Activate this ability only any time you could cast a sorcery.\"");
	}
	else if(lc(ARG)==("untap",))
	{
        Msg("To {yellow}untap{white} a permanent, rotate it back to the upright position from a sideways position. Only tapped permanents can be untapped.");
	}
	else if(lc(ARG)==("vanishing",))
	{
        Msg("{yellow}Vanishing{white} represents a static and two triggered abilities. \"Vanishing N\" means \"This permanent enters the battlefield with N time counters on it,\" \"At the beginning of your upkeep, if this permanent has a time counter on it, remove a time counter from it,\" and \"When the last time counter is removed from this permanent, sacrifice it.\"");
	}
	else if(lc(ARG)==("vigilance",))
	{
        Msg("{yellow}Vigilance{white} is a static ability. Attacking doesn't cause creatures with vigilance to tap.");
	}
	else if(lc(ARG)==("wither",))
	{
        Msg("{yellow}Wither{white}  is a static ability. Damage dealt to a creature by a source with wither isn't marked on that creature. Rather, it causes that many -1/-1 counters to be put on that creature.");
	}
    else
    {
        Msg("{red}Unable to find keyword!");
    }
}