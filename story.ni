"Fetch Quest" by "Bart Massey and the students of PSU Interactive Fiction Spring 2025"

When play begins, say "(Thanks to DeepSeek with help selecting spell components.)"

The Deepening Glade is a room. "The forest stretches up into the hills around you. The setting sun filters through, lighting the small grassy glade in which you stand. A very small [stream] flows from north to south along the eastern edge. In the center of the glade, large and prominent, is a massive and ancient [Stone Table]."

The stream is fixed in place in the Glade. The description is "The [water]s of the crystal stream glide gently by. Its shallow blue-green shadows absorb your attention for a moment."  Instead of entering the stream, say "The stream is too small to swim in."

The blue-green water is part of the stream. Instead of doing anything with the blue-green water: say "The water seems so peaceful. You leave it to travel on its way."

The Stone Table is fixed in place and undescribed in the Glade. The description is "The table's massive legs are rooted in the earth. Its huge round top is inscribed with many [arcane runes]."

The arcane runes are part of the Stone Table. The description is "[first time]You are new to magic, but… [only]The runes seem to outline a spell for creating a [quotation mark]fetch[quotation mark]. [first time]What that is you are not sure, but you know one way to find out: make one![line break][only]The spell appears to require consuming five components: [some mustard seed], [some Dragon Tree sap], [some quicksilver], [a wax effigy], and [a Mandrake root]." Understand "top" as the arcane runes.

A spell component is a kind of thing. A spell component is always edible. After examining a spell component: say "[The noun] glows with an almost tangible mystic energy."

Section 1 - Down The Winding Path

The Winding Path is east of the Glade.

The wax effigy is a spell component.

Section 2 - Down The Rising Path

The Rising Path is west of the Glade.

Some Dragon Tree sap is a spell component.

Section 3 - Down The Upstream Path

The Upstream Path is north of the Glade.

A Mandrake root is a spell component.

Section 4 - Down The Downstream Path

The Downstream Path is south of the Glade.

Some mustard seed is a spell component.

Section 5 - Down The Widdershins Path


The Widdershins Path is northwest of the glade.  "This section of the forest is thick with trees and shrubs.  Someone thought it made an excellent social space, though, as they have constructed a nice [picnic table] and [BBQ grill] here.  The dirt path leads southeast back toward the glade."

The picnic table is a fixed in place supporter in the Widdershins Path.  The description is "This picnic table, expertly crafted of sustainably-sourced redwood, boasts a natural charm and durability that's perfect for scary places like the Widdershins Path. [if blanket is on the picnic table]A blanket lies on the table. It is folded neatly, and it has a tacky red and blue checkered pattern.[end if] [if basket is on the picnic table] A charming little picnic basket sits on the table."

A blanket is a thing on the picnic table. The description is "A red and blue checkered picnic blanket. It is thin and well-worn, but is the perfect size to throw over an escaping animal."

The BBQ grill is a fixed in place supporter in the Widdershins Path.  The description is "A heavy-duty combo grill stands here - sleek and sturdy, with side-by-side gas and charcoal fireboxes.  Cast iron grates rest above dual heat sources, and a stainless steel warming rack hovers overhead.  Vents and adjustable trays offer precise temperature control.  A side burner waits for sauces or sides.  The scent of past cookouts lingers faintly in the air. [if net is on the BBQ grill]A net lies coiled on top of the warming rack.[end if]"

A net is a thing on the BBQ grill.  The description is "A circular net made of tough, knotted rope, its edges lined with heavy lead weights.  Designed to be thrown, it spreads wide in the air before crashing down to entangle its target. The mesh is coarse but flexible, and a set of braided cords trails from the center - ready to be yanked to cinch it tight."  It is undescribed.

An ingot is a fixed in place thing on top of the picnic table.  The printed name is "ingot of quicksilver".  The description is "This is a strange ingot, cool and unnaturally smooth.  Its surface gleams with a muted, silvery luster that seems to ripple like frozen liquid.  Though clearly solid, it catches the light in a way that feels almost alive - like it’s holding motion just beneath its metallic skin.  You sense that this is no ordinary metal; it hums with latent energy, dense and unnerving."

Instead of taking the ingot:
	say "As your fingers brush the cool surface, the ingot shudders, then quivers.  With a metallic squelch, it ripples like molten mercury, sprouts stubby pseudopods, and leaps away in a panic.  It clinks to the ground, jiggles indignantly, and darts down the path toward the glade, leaving a faint shimmer in its wake.";
	now ingot is off-stage;
	now slime is in the glade;
	
Instead of throwing the net at the ingot:
	say "As the net settles on top of the ingot, the ingot shudders, then quivers.  With a metallic squelch, it ripples like molten mercury, sprouts stubby pseudopods, squeezes between the strands of rope in the net, and leaps away in a panic.  It clinks to the ground, jiggles indignantly, and darts down the path toward the glade, leaving a faint shimmer in its wake. The slime has worn a hole into the net, much bigger than the pre-existing holes. It is useless to you now.";
	now ingot is off-stage;
	now slime is in the glade;
	now the net is off-stage;

Instead of throwing the basket at the ingot:
	say "As the basket covers the ingot, it shudders, then quivers. With a metallic squelch, it ripples like molten mercury, sprouts stubby pseudopods, and leaps away in a panic. It clinks to the ground, jiggles indignantly, and darts down the path toward the glade, leaving a faint shimmer in its wake. The slime has worn a hole into your basket, and it is useless to you now.";
	now ingot is off-stage;
	now slime is in the glade;
	now the basket is off-stage;
	
Instead of throwing the blanket at the ingot:
	say "As the blanket flutters through the air and lands on the ingot, the ingot shudders, then quivers. With a metallic squelch, it ripples like molten mercury, sprouts stubby pseudopods, and leaps away in a panic. It clinks to the ground, jiggles indignantly, and darts down the path toward the glade, leaving a faint shimmer in its wake. The slime has worn a hole into your blanket, and it is useless to you now.";
	now ingot is off-stage;
	now slime is in the glade;
	now the blanket is off-stage;
	
netTried is a truth state that varies.  netTried is false.
basketTried is a truth state that varies.  basketTried is false.
blanketTried is a truth state that varies. blanketTried is false.

Instead of throwing the net at the slime:
	if the slime is asleep:
		say "That would probably wake it up...";
	else:
		say "As the net settles on top of the quicksilver slime, it laughs out loud and just oozes out through the openings in the net.  It laughs again, jiggling a bit, [if bagTried is true and if blanketTried is true]yawns, [end if]and darts down the path.";
		let viable-rooms be the list of rooms;
		remove the Wings from viable-rooms;
		remove the location from viable-rooms;
		let N be a random number from 1 to the number of entries in viable-rooms;
		let destination be entry N in viable-rooms;
		now slime is in destination;
		now net is in location;
		now netTried is true;
		if basketTried is true:
			now slime is asleep;
			now the printed name of slime is "sleeping quicksilver slime".

Instead of throwing the basket at the slime:
	if the slime is asleep:
		say "That would probably wake it up...";
	else:
		say "The expertly thrown basket lands atop the quicksilver slime, but falls over on its side and, before you could slide the top closed, the slime slithers out, jumps up and down, laughs, [if netTried is true and if blanketTried is true]yawns, [end if]and then darts down the path.";
		let viable-rooms be the list of rooms;
		remove the Wings from viable-rooms;
		remove the location from viable-rooms;
		let N be a random number from 1 to the number of entries in viable-rooms;
		let destination be entry N in viable-rooms;
		now slime is in destination;
		now basket is in location;
		now basketTried is true;
		if netTried is true:
			now slime is asleep;
			now the printed name of slime is "sleeping quicksilver slime".
	
Instead of throwing the blanket at the slime:
	if the slime is asleep:
		say "That would probably wake it up...";
	else:
		say "The blanket magestically flutters through the air and lands atop the quicksilver slime. Unfortunately for you, the slime soaks right through it, laughs, [if netTried is true and if bagTried is true]yawns, [end if]and then darts down the path.";
		let viable-rooms be the list of rooms;
		remove the Wings from viable-rooms;
		remove the location from viable-rooms;
		let N be a random number from 1 to the number of entries in viable-rooms;
		let destination be entry N in viable-rooms;
		now slime is in destination;
		now basket is in location;
		now blanketTried is true;
		if netTried is true:
			now slime is asleep;
			now the printed name of slime is "sleeping quicksilver slime".

Instead of taking the slime:
	if the slime is asleep:
		now slime is off-stage;
		now quicksilver is carried by the player;
		say "The sleeping quicksilver slime continues softly snoring as you attempt to pick it up.  You can't seem to get it in one piece, as it just keeps dripping between your fingers, but you do manage to get some of it.  The rest of it drains away into the dirt path.";
	else:
		say "It zigs and zags and you can't seem to get close enough to get hold of it."
	
A slime is a thing.  The printed name is "quicksilver slime".  The description is "[if slime is not asleep]A jittery blob of semi-solid metal, the quicksilver slime pulses with nervous energy. Its mirrored surface warps reflections as it quivers, barely holding its shape. It gives off a faint metallic plink now and then, as if ready to flee at any moment.[else]A blob of semi-solid metal, the quicksilver slime pulses slowly and emits a soft but rythmic snore.  Its mirrored surface warps reflections as it slowly breathes.[end if]"

The slime can be asleep or not asleep.  The slime is not asleep.

Wings is a room.

Some quicksilver is a spell component.  It is in Wings.

A bag is an open openable container in the Rising Path.  The description is "A soft cloth bag, its mouth gathered by a sturdy drawstring. The fabric is worn but intact, and the string cinches tight with a firm pull, keeping whatever’s inside secure."

Section 6 - Fetched

Every turn when the player is in the Glade: if all spell components are off-stage, say "You have consumed the spell components and are ready to cast! The place is here, the time is now. You realize that laying upon the table will complete the spell, so you step on up."; now the player is on the Stone Table; say "You feel a dark energy surge through you. You see a shadowy form floating above you. You realize that this apparition is you — or rather, your 'fetch'.[paragraph break]You can feel the contents of your stomach roiling in agony; you slowly lose consciousness."; end the story.