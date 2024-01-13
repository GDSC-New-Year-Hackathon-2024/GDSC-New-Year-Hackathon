import 'package:bonfire/bonfire.dart';
import 'package:gdsc_newyear_q/pages/meta/player/knight_player_sheet.dart';
import '/pages/meta/game.dart';
import '/pages/meta/player/game_player.dart';
import '/pages/meta/utils/constants/game_consts.dart';
import '/pages/meta/utils/enums/map_id_enum.dart';
import '/pages/meta/utils/enums/show_in_enum.dart';
import '/pages/meta/utils/sensors/exit_map_sensor.dart';
import '/pages/meta/player/pirate_sprite_sheet.dart';
import '/pages/meta/player/knight_player_sheet.dart';
import 'package:flutter/material.dart';
import '/pages/meta/player/enemy_player.dart';

class MapBiome1 extends StatelessWidget {
  final ShowInEnum showInEnum;

  const MapBiome1({Key? key, this.showInEnum = ShowInEnum.left})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(),
      ),
      player: GamePlayer(
        _getInitPosition(),
        PirateSpriteSheet.getAnimation(),
        initDirection: showInEnum.direction,
      ),
      map: WorldMapByTiled(
        // MultiScenarioAssets.mapBiome1,
        MultiScenarioAssets.mapBiome1,
        forceTileSize: Vector2.all(defaultTileSize),
        objectsBuilder: {
          'sensorLeft': (p) => ExitMapSensor(
            'sensorLeft',
            p.position,
            p.size,
            _exitMap,
          ),
          'sensorRight': (p) => ExitMapSensor(
            'sensorRight',
            p.position,
            p.size,
            _exitMap,
          ),
          'enemy': (x) => EnemyPlayer(_getInitPosition(), KnightSpriteSheet.playerAnimations(),),
        },
      ),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        zoom: getZoomFromMaxVisibleTile(context, defaultTileSize, 20),
      ),
      progress: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.black,
      ),
    );
  }

  Vector2 _getInitPosition() {
    switch (showInEnum) {
      case ShowInEnum.left:
        return Vector2(defaultTileSize * 2, defaultTileSize * 10);
      case ShowInEnum.right:
        return Vector2(defaultTileSize * 27, defaultTileSize * 12);
      case ShowInEnum.top:
        return Vector2.zero();
      case ShowInEnum.bottom:
        return Vector2.zero();
      default:
        return Vector2.zero();
    }
  }

  void _exitMap(String value) {
    if (value == 'sensorRight') {
      selectMap(MapBiomeId.biome2);
    }
  }
}