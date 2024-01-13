import 'package:bonfire/bonfire.dart';
import '/pages/meta/utils/constants/game_consts.dart';
import '/pages/meta/player/knight_player_sheet.dart';
class EnemyPlayer extends SimpleEnemy with BlockMovementCollision {
  static const sizePlayer = defaultTileSize * 1.5;
  double baseSpeed = sizePlayer * 2;

  EnemyPlayer(Vector2 position, SimpleDirectionAnimation? spriteSheet,
      {Direction initDirection = Direction.right})
      : super(
    animation: spriteSheet,
    size: Vector2.all(sizePlayer),
    position: Vector2(defaultTileSize * 2.5, defaultTileSize * 10.5),
    initDirection: initDirection,
    life: 100,
    speed: sizePlayer * 2,
  );

  // @override
  // void onJoystickChangeDirectional(JoystickDirectionalEvent event) {
  //   if (event.directional != JoystickMoveDirectional.IDLE) {
  //     speed = baseSpeed * event.intensity;
  //   }
  //   super.onJoystickChangeDirectional(event);
  // }



  @override
  Future<void> onLoad() {
    add(
      RectangleHitbox(
        size: Vector2(sizePlayer * 0.5, sizePlayer / 3),
        position: Vector2(sizePlayer * 0.25, sizePlayer * 0.7),
      ),
    );
    return super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);
    this.seeAndMoveToPlayer();
    radiusVision: sizePlayer * 2;
  }

}