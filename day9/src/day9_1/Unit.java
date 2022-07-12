package day9_1;

public class Unit {
	int currentHP;
	int x;
	int y;
}
interface Fightable extends Movable, Attackable { }
interface Movable {
	void move(int x, int y);
}
interface Attackable {
	void attack(Unit u);
}
