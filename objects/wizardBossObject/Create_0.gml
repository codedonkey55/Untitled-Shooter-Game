/// @description Insert description here
// You can write your code in this editor
hp = maxhp;

playerObject.allowStartWalking = false;

startFightDelay = 100;
hasFightStarted = false;

attackDelay = startFightDelay;
iceBulletDelay = startFightDelay;
waveAttackAmount = 1;
waveAttackCount = waveAttackAmount;
chosenAttack = 1;
path_start(level5BossPath, 1.5, path_action_continue, true);
path_end();