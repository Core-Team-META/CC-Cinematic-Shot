Assets {
  Id: 2243570422191074978
  Name: "Cinematic Camera"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5708963390589053760
      Objects {
        Id: 5708963390589053760
        Name: "Cinematic Camera"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 7813625753899988696
        UnregisteredParameters {
          Overrides {
            Name: "cs:Camera"
            ObjectReference {
              SubObjectId: 13912550773912606550
            }
          }
          Overrides {
            Name: "cs:StartEvent"
            String: "StartCinematic"
          }
          Overrides {
            Name: "cs:StartBinding"
            String: "ability_extra_20"
          }
          Overrides {
            Name: "cs:CancelEvent"
            String: "CancelCinematic"
          }
          Overrides {
            Name: "cs:CancelBinding"
            String: "ability_extra_22"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 7813625753899988696
        Name: "ClientContext"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5708963390589053760
        ChildIds: 5324318743788043909
        ChildIds: 13912550773912606550
        ChildIds: 8040731693685784623
        ChildIds: 600881316001777211
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 5324318743788043909
        Name: "CinematicCamera"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7813625753899988696
        UnregisteredParameters {
          Overrides {
            Name: "cs:BlackScreenImage"
            ObjectReference {
              SubObjectId: 7402431478770102711
            }
          }
          Overrides {
            Name: "cs:RootGroup"
            ObjectReference {
              SubObjectId: 5708963390589053760
            }
          }
          Overrides {
            Name: "cs:KeyframesGroup"
            ObjectReference {
              SubObjectId: 8040731693685784623
            }
          }
          Overrides {
            Name: "cs:Camera"
            ObjectReference {
              SubObjectId: 13912550773912606550
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 5953479355169459741
          }
        }
      }
      Objects {
        Id: 13912550773912606550
        Name: "CinematicCamera"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7813625753899988696
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 8040731693685784623
        Name: "Keyframes"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7813625753899988696
        ChildIds: 3809165354602791174
        ChildIds: 18180443024701187227
        ChildIds: 13646434381079978315
        ChildIds: 17119301177384142300
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 3809165354602791174
        Name: "Group"
        Transform {
          Location {
            X: 1767.88428
            Y: 81.7633514
            Z: 298.703461
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8040731693685784623
        ChildIds: 5567289561262921396
        ChildIds: 15057643479511428955
        ChildIds: 87270600871052874
        UnregisteredParameters {
          Overrides {
            Name: "cs:Target"
            ObjectReference {
              SelfId: 2373590296256410997
            }
          }
          Overrides {
            Name: "cs:ScreenFade"
            Bool: false
          }
          Overrides {
            Name: "cs:Snap"
            Bool: false
          }
          Overrides {
            Name: "cs:PrePause"
            Float: 0
          }
          Overrides {
            Name: "cs:Duration"
            Float: 4
          }
          Overrides {
            Name: "cs:PostPause"
            Float: 0
          }
          Overrides {
            Name: "cs:EasingEquation"
            String: "LINEAR"
          }
          Overrides {
            Name: "cs:EasingDirection"
            String: "INOUT"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 5567289561262921396
        Name: "Camera"
        Transform {
          Location {
            X: -680.544067
            Y: -491.763367
            Z: 6.10351563e-05
          }
          Rotation {
            Yaw: 39.5573883
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3809165354602791174
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 15057643479511428955
        Name: "Camera"
        Transform {
          Location {
            X: -67.8842773
            Y: -641.763367
          }
          Rotation {
            Yaw: 97.4999161
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3809165354602791174
        UnregisteredParameters {
          Overrides {
            Name: "cs:IgnoreRotation"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 87270600871052874
        Name: "Camera"
        Transform {
          Location {
            X: 352.081055
            Y: -241.183212
          }
          Rotation {
            Yaw: 159.433716
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3809165354602791174
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 18180443024701187227
        Name: "Group"
        Transform {
          Location {
            X: 1767.88428
            Y: 81.7633514
            Z: 298.703461
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8040731693685784623
        ChildIds: 14492513890424716403
        ChildIds: 16802933784365634396
        ChildIds: 8058287786118036645
        UnregisteredParameters {
          Overrides {
            Name: "cs:Target"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:ScreenFade"
            Bool: false
          }
          Overrides {
            Name: "cs:Snap"
            Bool: false
          }
          Overrides {
            Name: "cs:PrePause"
            Float: 0
          }
          Overrides {
            Name: "cs:Duration"
            Float: 3
          }
          Overrides {
            Name: "cs:PostPause"
            Float: 0
          }
          Overrides {
            Name: "cs:EasingEquation"
            String: "LINEAR"
          }
          Overrides {
            Name: "cs:EasingDirection"
            String: "INOUT"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 14492513890424716403
        Name: "Camera"
        Transform {
          Location {
            X: 252.115723
            Y: 338.236633
            Z: 6.10351563e-05
          }
          Rotation {
            Yaw: -159.11058
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18180443024701187227
        UnregisteredParameters {
          Overrides {
            Name: "cs:IgnoreRotation"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 16802933784365634396
        Name: "Camera"
        Transform {
          Location {
            X: 144.359985
            Y: 469.493286
            Z: 6.10351563e-05
          }
          Rotation {
            Pitch: -33.7499313
            Yaw: -133.525375
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18180443024701187227
        UnregisteredParameters {
          Overrides {
            Name: "cs:IgnoreRotation"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 8058287786118036645
        Name: "Camera"
        Transform {
          Location {
            X: 2.11572266
            Y: 568.236633
            Z: 6.10351563e-05
          }
          Rotation {
            Pitch: -33.7498436
            Yaw: 50.7222519
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18180443024701187227
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 13646434381079978315
        Name: "Group"
        Transform {
          Location {
            X: 191.562897
            Y: 1318.43701
            Z: 1125.55981
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8040731693685784623
        ChildIds: 3290368381541540928
        ChildIds: 15631288371299875888
        UnregisteredParameters {
          Overrides {
            Name: "cs:Target"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:ScreenFade"
            Bool: false
          }
          Overrides {
            Name: "cs:Snap"
            Bool: false
          }
          Overrides {
            Name: "cs:PrePause"
            Float: 0
          }
          Overrides {
            Name: "cs:Duration"
            Float: 3
          }
          Overrides {
            Name: "cs:PostPause"
            Float: 0
          }
          Overrides {
            Name: "cs:EasingEquation"
            String: "LINEAR"
          }
          Overrides {
            Name: "cs:EasingDirection"
            String: "INOUT"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 3290368381541540928
        Name: "Camera"
        Transform {
          Location {
            X: 796.013184
            Y: -640.936096
            Z: -868.068481
          }
          Rotation {
            Yaw: 23.7032967
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13646434381079978315
        UnregisteredParameters {
          Overrides {
            Name: "cs:IgnoreRotation"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 70
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 15631288371299875888
        Name: "Camera"
        Transform {
          Location {
            X: -3.05175781e-05
          }
          Rotation {
            Pitch: -27.0825386
            Yaw: -28.362896
            Roll: 10.9713507
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13646434381079978315
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 45
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 17119301177384142300
        Name: "Group"
        Transform {
          Location {
            X: 500
            Y: -50
            Z: 190
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8040731693685784623
        ChildIds: 261154903656980213
        ChildIds: 13600013661959674295
        ChildIds: 11615761198154569276
        UnregisteredParameters {
          Overrides {
            Name: "cs:Target"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:ScreenFade"
            Bool: false
          }
          Overrides {
            Name: "cs:Snap"
            Bool: false
          }
          Overrides {
            Name: "cs:PrePause"
            Float: 0
          }
          Overrides {
            Name: "cs:Duration"
            Float: 3
          }
          Overrides {
            Name: "cs:PostPause"
            Float: 0
          }
          Overrides {
            Name: "cs:EasingEquation"
            String: "LINEAR"
          }
          Overrides {
            Name: "cs:EasingDirection"
            String: "INOUT"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 261154903656980213
        Name: "Camera"
        Transform {
          Location {
            X: 10
            Y: 760
            Z: 610
          }
          Rotation {
            Pitch: -45
            Yaw: -73.1771851
            Roll: -33.750061
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17119301177384142300
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 13600013661959674295
        Name: "Camera"
        Transform {
          Location {
            X: 80
            Y: 150
            Z: 120
          }
          Rotation {
            Pitch: -45
            Yaw: -118.177338
            Roll: 56.2498665
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17119301177384142300
        UnregisteredParameters {
          Overrides {
            Name: "cs:IgnoreRotation"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 11615761198154569276
        Name: "Camera"
        Transform {
          Location {
            X: -170
            Y: -180.000015
          }
          Rotation {
            Pitch: -2.18118668
            Yaw: -124.965981
            Roll: -63.038559
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17119301177384142300
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
        }
      }
      Objects {
        Id: 600881316001777211
        Name: "BlackScreen"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7813625753899988696
        ChildIds: 7402431478770102711
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 7402431478770102711
        Name: "BlackScreen"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 600881316001777211
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
            }
            Color {
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 70
}
