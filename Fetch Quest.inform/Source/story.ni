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

The Upstream Path is north of the Glade and east of the Douglas Fir. "The path meanders through the forest, sometimes closer, sometimes farther from the stream. You walk along peacefully, mesmerized by its melodic, rhythmic gurgling. A sunny meadow lies [bold type]west[roman type] of the path. An old growth douglas fir tree is on the [bold type]east[roman type] side of the path."

A Douglas Fir is east of the Upstream Path. "This enormous fir tree is definitely old growth."

A shovel is in the Douglas Fir. The description of the shovel is "This digging spade has a fine oak handle. The blade is firm and clean."
Understand "spade" as a shovel.

A Sunny Meadow is west of the Upstream Path. "The meadow is sunny, but wet and marshy. A dank, musty fragrance hangs in the air, rising from the damp soil. You hesitate to get your boots muddy, but you see a colorful patch further [bold type]west[roman type] on the far edge of the meadow. It is a sunny spot dotted by floppy rosettes of leaves adorned with purple flowers."

A backpack is a container in the Sunny Meadow.
The backpack is wearable.
The backpack contains ear muffs.
The ear muffs are wearable.
The backpack contains a flask of water.

A Mandrake Patch is west of the sunny meadow. "Mandrakes! So many mandrakes blossoming with delicate purple flowers in the wet, fecund earth. You know that just under the surface, buried within the rich loamy soil is the twisted, gnarly, forked root for which you search."

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
		if the mandrake root is unpulled and the player is not wearing the ear muffs:
			 say "As you pull up the mandrake root you hear an earsplitting shriek. As the shriek rings through your head, your vision fades. The last thing you see, before you lose consciousness, are tiny little legs scampering across the Mandrake Patch into the distance as the root waves a little fist that looks oddly like it is flipping you off. When you awaken, that mandrake root has disappeared. Lucky for you, [bold type]there are still many mandrakes remaining in the patch[roman type].";
		otherwise if the mandrake root is pulled and the player is not wearing the ear muffs:
			say "You should have learned from the last time you tried this ... You need to [bold type]wear[roman type] proper ear protection!";
		otherwise if the player carries the shovel:
			try digging the mandrake root with the shovel instead;
		otherwise:
			say "A wise sorcerer once told you not to pull a Mandrake root with your bare hands. If only you had a shovel!";
	otherwise:
		say "You cannot dig [the noun]."

Digging it with is an action applying to two things. Understand "dig [something] with [something]" as digging it with.

Check digging it with:
	if the second noun is not the shovel:
		say "[The second noun] cannot be used for digging things." instead;
	otherwise if the player does not carry the shovel:
		say "If you want to do that, you need to find a shovel." instead;
	otherwise if the noun is not the mandrake root:
		say "There is no need to dig up [the noun]." instead.

Carry out digging it with:
	try taking the mandrake root;
	now the mandrake root is pulled.

Report digging it with:
	say "You dug up a mandrake root while avoiding debilitating side-effects!"
[end Digging]

Instead of taking the Mandrake root when the player does not have the shovel:
say "A wise sorcerer once told you not to pull a Mandrake root with your bare hands. If only you had a shovel!"

Instead of taking the Mandrake root when the player is not wearing the ear muffs:
	If the mandrake root is unpulled:
		say "As you pull up the mandrake root you hear an earsplitting shriek. As the shriek rings through your head, your vision fades. The last thing you see, before you lose consciousness, are tiny little legs scampering across the Mandrake Patch into the distance as it waves a little fist that looks oddly like it is flipping you off. When you awaken, that mandrake root has disappeared. Lucky for you, [bold type]there are still many mandrakes remaining in the patch[roman type].";
		now the mandrake root is pulled;
	otherwise:
		say "You should have learned from the last time you tried this ... You need to [bold type]wear[roman type] proper ear protection!"

[Expects a mandrake root added to your inventory.]
Test mandrake with "n / e / take shovel / w / w / wear ear muffs / w / x mandrake root / take mandrake root / i"

[Expects a mandrake root added to your inventory.]
Test dig-mandrake with "n / e / take shovel / w / w / wear ear muffs / w / dig mandrake root / i"

[Expects warning when digging something other than mandrake root.]
Test dig-non-root with "n / e / take shovel / w / w / dig up ear muffs"

[Expects unsuccessful take of a mandrake root, because you do not have a shovel.]
Test no-shovel with "n / w / w / take mandrake root / i"

[Expects you are knocked unconscious by a shrieking mandrake root, because you have no ear muffs.]
Test untaken-ear-muffs with "n / e / take shovel / w / w / w / take mandrake root / i"

[Expects you are knocked unconscious by a shrieking mandrake root, because you are not wearing ear muffs.]
Test unworn-ear-muffs with "n / e / take shovel / w / w / take ear muffs / w / take mandrake root / i"

[Expects you are warned, because you are not wearing ear muffs.]
Test twice-unworn-ear-muffs with "n / e / take shovel / w / w / take ear muffs / w / take mandrake root / take mandrake root"

[Expects you succeed on third pull when you finally wear ear muffs.]
Test third-pull with "n / e / take shovel / w / w / take ear muffs / w / take mandrake root / take mandrake root / wear ear muffs / take mandrake root / i"

Section 4 - Down The Downstream Path

The Downstream Path is south of the Glade.

Some mustard seed is a spell component.

Section 5 - Down The Widdershins Path

The Widdershins Path is northwest of the glade.

Some quicksilver is a spell component.

Section 6 - Fetched

Every turn when the player is in the Glade: if all spell components are off-stage, say "You have consumed the spell components and are ready to cast! The place is here, the time is now. You realize that laying upon the table will complete the spell, so you step on up."; now the player is on the Stone Table; say "You feel a dark energy surge through you. You see a shadowy form floating above you. You realize that this apparition is you — or rather, your 'fetch'.[paragraph break]You can feel the contents of your stomach roiling in agony; you slowly lose consciousness."; end the story.