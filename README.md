Quarry Mechanics [quarry]
=========================

By David G [kestral246@gmail.com]

This mod adds quarry mechanics to stone nodes.


![Quarry Screenshot](screenshot.png "Quarry")


What do I mean by that?
-----------------------

- Stone can now either be broken with a pickaxe (into cobble), or cut with a Quarry Hammer (into cut\_stone).

- The resulting cobble or cut\_stone nodes remain in place after digging, but since they're now falling nodes, they will fall if not supported. They can then be dug by hand to pick them up into ones inventory.

- For building, a Trowel and Mortar tool is provided. It can mortar placed cobble nodes into stonebrick nodes, and mortar placed cut\_stone nodes back into stone nodes.


Additional notes
----------------

- Cobble cannot be converted back into stone by melting it in a furnace.

- A Quarry Hammer is only able to cut out a stone if it has at least two faces open to the air (to be able to cut all its sides with the implied chisel).

- Stone, Desert Stone, Sandstone, Desert Sandstone, and Silver Sandstone are supported. Sandstone_rubble nodes are added, which correspond to cobble nodes for stone.

- Cut\_stone\_blocks can be crafted from cut\_stone.

- Stairs and slabs are supported for all stone types. However, they have to be crafted from cut or cobble versions, and then mortared into the solid versions.

- When digging stone\_with\_ore nodes, the ore lump will enter inventory, while cobble will be left behind.

- A scaffold node is provided to support the cobble and cut\_stone nodes while digging and mortaring them.

- Finally, for consistency, dirt nodes are also made falling, and the wooden pickaxe has optionally been removed and replaced with a flint pickaxe.


Dependencies
------------
default, bucket, stairs


Licenses
--------
Source code

> The MIT License (MIT)

Media (textures)

> Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
