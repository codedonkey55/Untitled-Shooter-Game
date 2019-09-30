/// @description Insert description here
// You can write your code in this editor
enum explosionSprites {
	explosion,
	verticalSmall,
	vertical,
	vortex,
	roundExplosion,
}

explosion_sprite[explosionSprites.explosion] = explosionSprite;
explosion_sprite[explosionSprites.verticalSmall] = verticalExplosionSmallSprite;
explosion_sprite[explosionSprites.vertical] = verticalExplosionSprite;
explosion_sprite[explosionSprites.vortex] = roundVortexSprite;
explosion_sprite[explosionSprites.roundExplosion] = roundExplosionSprite;

randomize();