"Fetch Quest" by "Bart Massey and the students of PSU Interactive Fiction Spring 2025"

When play begins, say "(Thanks to DeepSeek with help selecting spell components.)"

The Deepening Glade is a room. "The forest stretches up into the hills around you. The setting sun filters through, lighting the small grassy glade in which you stand. A very small [stream] flows from north to south along the eastern edge. In the center of the glade, large and prominent, is a massive and ancient [Stone Table]."

The stream is fixed in place in the Glade. The description is "The [water]s of the crystal stream glide gently by. Its shallow blue-green shadows absorb your attention for a moment."  Instead of entering the stream, say "The stream is too small to swim in."

The blue-green water is part of the stream. Instead of doing anything with the blue-green water: say "The water seems so peaceful. You leave it to travel on its way."

The Stone Table is fixed in place and undescribed in the Glade. The description is "The table's massive legs are rooted in the earth. Its huge round top is inscribed with many [arcane runes]."

The arcane runes are part of the Stone Table. The description is "[first time]You are new to magic, but… [only]The runes seem to outline a spell for creating a [quotation mark]fetch[quotation mark]. [first time]What that is you are not sure, but you know one way to find out: make one![line break][only]The spell appears to require consuming five components: [some mustard seed], [some Dragon Tree sap], [some quicksilver], [a wax effigy], and [a Mandrake root]." Understand "top" as the arcane runes.

A spell component is a kind of thing. A spell component is always edible. After examining a spell component: say "[The noun] glows with an almost tangible mystic energy."

Section 1 - Down The Winding Path

The Winding Path is east of the Glade. "You find yourself in what looks like the remains of a forest. The trees are all dead, a few of them fallen over. You feel an overwhelming sense of dread emanating from this former forest. You see a [stump][if wax effigy is on the stump], with [a wax effigy] clumsily laid on top of it[end if]."

The stump is a supporter in the Winding Path. The description of the stump is "It is an old rotting stump covered in moss. But it is surprisingly still hard and stable enough to support things."

[Squish values modeled after beverage heat values in "Disenchantment Bay"]
Squish is a kind of value. The squishes are unmarred, squished, unrecognizable.

[For Section 1's Blob-State Ending - If the Player attempts to eat an unrecognizable Blob.]
BlobState is a truth state that varies. BlobState is false.

The wax effigy is a spell component on the stump. The wax effigy has a squish. The squish of the wax effigy is unmarred.

[Picking up the effigy will "squish" it once each time, until it is unrecognizable.]
After taking the wax effigy:
	say "Oops, you squish it a little accidentally.";
	let the current squish be the squish of the wax effigy;
	if the current squish is not unrecognizable: 
		now the squish of the wax effigy is the squish after the current squish.


The description of the wax effigy is "[if the squish of the wax effigy is unmarred]The wax effigy looks familiar...you've never seen it before, but you can tell it's as good-looking as ever.[otherwise if the squish of the wax effigy is squished]The wax effigy looks a little squished, but you can still tell who it's supposed to be.[otherwise]The wax effigy is squished beyond recognition. Is it even still an effigy?[end if]"

After examining the wax effigy:
	if the squish of the wax effigy is not unrecognizable:
		say "Careful, it seems fragile.";

[The player can fix the wax effigy if it becomes unrecognizable.]
Fixing is an action applying to one touchable thing.
Understand "fix [something]" as fixing.

Check fixing something (called target):
	if the target is not the wax effigy:
		say "You aren't sure how to fix that." instead.
		
Report fixing the wax effigy:
	if the squish of the wax effigy is not unmarred:
		say "You sculpt the wax effigy in your own image.";
		now the squish of the wax effigy is unmarred;
	otherwise:
		say "This seems fine as-is.";

[The player can taste the wax effigy, but this will squish it.]
Instead of tasting the wax effigy:
	say "This tastes like crayons!";
	let the current squish be the squish of the wax effigy;
	if the current squish is not unrecognizable: 
		now the squish of the wax effigy is the squish after the current squish;
		say "Oops. You squished it a little."

[The wax effigy looks like anyone who looks at it!]
Instead of showing the wax effigy to someone:
	say "They look at it with a quizzical look.";
	if the squish of the wax effigy is unrecognizable:
		say "They say to you, 'Looks like a blob of wax.'";
	otherwise:
		say "They say to you, 'Yeah, that looks like me.'"

The Wizard is a man in the winding path. The description of the wizard is "The wizard has a long white beard. He is wearing a sky blue robe with a matching pointed hat. He smiles and nods mysteriously at you." [The wizard is this here to tested the showing comand for now.]

Talking to is an action applying to one visible thing. Understand "talk to [someone]" as talking to.

Check talking to: say "[The noun] doesn't reply."

Instead of talking to the wizard:
	if Blobstate is true:
		say "The wizard looks you up and down. 'You don't look so good.'";
	otherwise:
		say "The wizard smiles and nods mysteriously at you, completely ignoring whatever you've said.";

[If you eat the effigy when it's unrecognizable, you'll turn into a blob soon.]
Check eating the wax effigy:
	if the squish of the wax effigy is unrecognizable:
		say "You're not sure it's a good idea to eat a wax effigy of nobody, but you do it anyway.";
		now Blobstate is true;
		The SickStomach in one turn from now;
		The BlobEndingHappens in three turns from now;
	say "The wax squishes between your teeth. Yum." instead;

At the time when SickStomach:
	say "Your tummy begins to feel funny.";

At the time when BlobEndingHappens:
	say "You start feeling funny all over. You look down and see that your body seems to be liquefying. You are liquefying. Like the Wicked Witch of the west, you are melting. 

You start to panic. You try screaming, but your vocal cords stop working mid-scream. It isn't long before you lose your sense of touch. The next thing you know you are a blob...of flesh? Or made of wax? You are not sure. You could be a lump of clay for all you know. Regardless, you are a blob. A 'lifeless' blob of...well, something. 

You cannot talk. You cannot feel. You cannot move. You cannot breathe. Yet you are still conscious, still aware of your surroundings. You are stuck. You are trapped. 

And there is nothing you can do about it.";
	end the story ;

[Look at the effigy in every state, fix it, eat it]
Test effigy with "east / look effigy / take effigy / look effigy / taste effigy / look effigy / fix effigy / look effigy / fix effigy / eat effigy".

[Test wizard's dialgoue]
Test wizard with "east / talk to wizard / take effigy / show effigy to wizard / taste effigy / look effigy / show effigy to wizard / eat effigy / talk to wizard".

[Test blob ending by eating an unrecognizable effigy]
Test blob with "east / take effigy / drop effigy / take effigy / eat effigy / talk to wizard / wait / wait".


Section 2 - Down The Rising Path

The Rising Path is west of the Glade.

Some Dragon Tree sap is a spell component.

Section 3 - Down The Upstream Path

The Upstream Path is north of the Glade and east of the Douglas Fir. "The path meanders through the forest, sometimes closer, sometimes farther from the stream. You walk along peacefully, mesmerized by its melodic, rhythmic gurgling. [A Sunny Meadow] lies [bold type]west[roman type] of the path. An old growth [douglas fir] tree is on the [bold type]east[roman type] side of the path."

A Douglas Fir is east of the Upstream Path. "This enormous fir tree is definitely old growth. [The Upstream Path] is to the [bold type]west[roman type]."

A shovel is in the Douglas Fir. The description of the shovel is "This digging spade has a fine oak handle. The blade is firm and clean."
Understand "spade" as a shovel.

A Sunny Meadow is west of the Upstream Path. "The meadow is sunny, but wet and marshy. A dank, musty fragrance hangs in the air, rising from the damp soil. You hesitate to get your boots muddy, but you see a colorful patch further [bold type]west[roman type] on the far edge of the meadow. It is a sunny spot dotted by floppy rosettes of leaves adorned with purple flowers. [The Upstream Path] is to the [bold type]east[roman type]."

A backpack is a container in the Sunny Meadow.
The backpack is wearable.
The backpack contains earmuffs.
The earmuffs are wearable.
Understand "ear muffs" as the earmuffs.

The backpack contains a flask.
The flask contains absinthe. The description of the flask is "A slightly dented metal flask looks like it has been on quite a few adventures. Based on the slightly minty licorice odor, you think it is full of absinthe. You'd best stay away from that stuff."
Instead of drinking the flask, say "You need to keep a sharp mind on your quest. Don't touch the absinthe."
The description of the absinthe is "This liquid has a slightly minty licorice odor, so you think it is probably absinthe. You'd best stay away from that stuff!"
Instead of drinking absinthe, say "You need to keep a sharp mind on your quest. Don't touch the absinthe."
Instead of taking the absinthe, try taking the flask.

A Mandrake Patch is west of the sunny meadow. "Mandrakes! So many mandrakes blossoming with delicate purple flowers in the wet, fecund earth. You know that just under the surface, buried within the rich loamy soil is the twisted, gnarly, forked root for which you search. [A Sunny Meadow] is to the [bold type]east[roman type]."

A Mandrake root is a spell component.
The description of the Mandrake root is "The plant is beautiful, but you have heard stories of people who died horrible deaths after pulling up a mandrake root. They are probably superstitious rumors, right?"
A Mandrake root is in the Mandrake Patch.
The mandrake root can be either pulled or unpulled. The mandrake root is unpulled.

[
  Digging
  See documentation for 'Creating New Actions':
  https://inform-7-handbook.readthedocs.io/en/latest/chapter_4_actions/creating_new_actions/
]
Digging is an action applying to nothing. Understand "dig" as digging.
Understand "dig up" as digging.

Check digging:
	if the player carries the shovel:
		say "You need to be more specific about what you want to dig up.";
	otherwise:
		say "You don't have a shovel."

Root-digging is an action applying to one thing. Understand "dig [something]" and "dig up [something]" as root-digging.

Check root-digging:
	if the noun is a mandrake root:
		if the mandrake root is unpulled and the player is not wearing the earmuffs:
			 say "As you pull up the mandrake root you hear an earsplitting shriek. As the shriek rings through your head, your vision fades. The last thing you see, before you lose consciousness, are tiny little legs scampering across the Mandrake Patch into the distance as the root waves a little fist that looks oddly like it is flipping you off. When you awaken, that mandrake root has disappeared. Lucky for you, [bold type]there are still many mandrakes remaining in the patch[roman type].";
		otherwise if the mandrake root is pulled and the player is not wearing the earmuffs:
			say "You should have learned from the last time you tried this ... You need to [bold type]wear[roman type] proper ear protection!";
		otherwise if the player carries the shovel:
			try digging the mandrake root with the shovel instead;
		otherwise:
			say "A wise sorcerer once told you not to pull a Mandrake root with your bare hands. [bold type]If only you had a shovel[roman type]!";
	otherwise:
		say "You cannot dig up [the noun]."

Digging it with is an action applying to two things.
Understand "dig [something] with [something]" as digging it with.
Understand "dig up [something] with [something]" as digging it with.

Check digging it with:
	if the noun is not the mandrake root:
		say "There is no use wasting time to dig up [the noun]." instead;
	otherwise if the second noun is not the shovel:
		say "[The second noun] cannot be used for digging things. [bold type]Use a shovel instead[roman type]." instead;
	otherwise if the player does not carry the shovel:
		say "If you want to do that, [bold type]you need to find a shovel[roman type]." instead.

Carry out digging it with:
	try taking the mandrake root;
	now the mandrake root is pulled.
[end Digging]

Instead of taking the Mandrake root when the player does not have the shovel:
say "A wise sorcerer once told you not to pull a Mandrake root with your bare hands. [bold type]If only you had a shovel[roman type]!"

Instead of taking the Mandrake root when the player is not wearing the earmuffs:
	If the mandrake root is unpulled:
		say "As you pull up the mandrake root you hear an earsplitting shriek. As the shriek rings through your head, your vision fades. The last thing you see, before you lose consciousness, are tiny little legs scampering across the Mandrake Patch into the distance as it waves a little fist that looks oddly like it is flipping you off. When you awaken, that mandrake root has disappeared. Lucky for you, [bold type]there are still many mandrakes remaining in the patch[roman type].";
		now the mandrake root is pulled;
	otherwise:
		say "You should have learned from the last time you tried this ... You need to [bold type]wear[roman type] proper ear protection!"

[Expects a mandrake root added to your inventory.]
Test mandrake with "n / e / take shovel / w / w / wear earmuffs / w / x mandrake root / take mandrake root / i"

[Expects you succeed on third pull when you finally wear earmuffs.]
Test mandrake-long-way with "n / w / w / take mandrake root / e / e / e / take shovel / w / w / x flask / drink flask / take earmuffs / w / x mandrake root / take mandrake root / dig up mandrake root / wear earmuffs / dig up mandrake root with the shovel / i"

[Expects a mandrake root added to your inventory.]
Test dig-mandrake with "n / e / take shovel / w / w / wear earmuffs / w / dig mandrake root / i"

[Expects warning when digging something other than mandrake root.]
Test dig-non-root with "n / e / take shovel / w / w / dig up earmuffs"

[Expects unsuccessful take of a mandrake root, because you do not have a shovel.]
Test no-shovel with "n / w / w / take mandrake root / i"

[Expects you are knocked unconscious by a shrieking mandrake root, because you have no earmuffs.]
Test untaken-earmuffs with "n / e / take shovel / w / w / w / take mandrake root / i"

[Expects you are knocked unconscious by a shrieking mandrake root, because you are not wearing earmuffs.]
Test unworn-earmuffs with "n / e / take shovel / w / w / take earmuffs / w / take mandrake root / i"

[Expects you are warned, because you are not wearing earmuffs.]
Test twice-unworn-earmuffs with "n / e / take shovel / w / w / take earmuffs / w / take mandrake root / take mandrake root"

Section 4 - Down The Downstream Path

The Downstream Path is south of the Glade.

The Downstream Path is a room. "You can see a damp cave further south along the river."

The Cave is a dark room.   The Cave is south of the Downstream Path. "Extra Description"

The Fairy is a thing.

After going to The Downstream Path from The Cave for the first time: now The Fairy is in the Downstream Path; say "You see a fairy floating helplessly downriver."

Every turn: if the player is in a dark room and the player is carrying the fairy, say "A light is peeking out of your bag."

Every turn: If the the fairy is in the cave, now the fairy is lit; otherwise now the fairy is unlit.

Check taking the fairy when the fairy is in the cave: say "The fairy flutters out of your reach." instead.

Some mustard seed is a spell component.
Some mustard seed is in The Cave.

Section 5 - Down The Widdershins Path

The Widdershins Path is northwest of the glade.

Some quicksilver is a spell component.

Section 6 - Fetched

Every turn when the player is in the Glade: if all spell components are off-stage, say "You have consumed the spell components and are ready to cast! The place is here, the time is now. You realize that laying upon the table will complete the spell, so you step on up."; now the player is on the Stone Table; say "You feel a dark energy surge through you. You see a shadowy form floating above you. You realize that this apparition is you — or rather, your 'fetch'.[paragraph break]You can feel the contents of your stomach roiling in agony; you slowly lose consciousness."; end the story.
