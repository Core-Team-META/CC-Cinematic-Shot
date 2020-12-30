Name: "Root"
RootId: 4781671109827199097
Objects {
  Id: 4781671109827199097
  Name: "Root"
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
  ChildIds: 16805577375719089602
  ChildIds: 11367646586856977032
  ChildIds: 5468045072130652745
  ChildIds: 15200848935840344137
  ChildIds: 15445705037976461651
  ChildIds: 13166939408216695751
  ChildIds: 15721658923682352833
  ChildIds: 4928864281470396165
  ChildIds: 2373590296256410997
  ChildIds: 15874254159075991472
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  Folder {
  }
}
Objects {
  Id: 15874254159075991472
  Name: "Cube"
  Transform {
    Location {
      X: 2007.96375
      Y: 925.070435
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 2373590296256410997
  Name: "Cube"
  Transform {
    Location {
      X: 1610
      Y: 60
      Z: 280
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 4928864281470396165
  Name: "Cinematic Camera"
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
  ParentId: 4781671109827199097
  ChildIds: 7436299772747528861
  UnregisteredParameters {
    Overrides {
      Name: "cs:Camera"
      ObjectReference {
        SelfId: 14578107122098625299
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
  InstanceHistory {
    SelfId: 4928864281470396165
    SubobjectId: 5708963390589053760
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
    WasRoot: true
  }
}
Objects {
  Id: 7436299772747528861
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
  ParentId: 4928864281470396165
  ChildIds: 4809668170171478720
  ChildIds: 14578107122098625299
  ChildIds: 7262884359701498986
  ChildIds: 219086867505007230
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 7436299772747528861
    SubobjectId: 7813625753899988696
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 219086867505007230
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
  ParentId: 7436299772747528861
  ChildIds: 7919052394948771314
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
  InstanceHistory {
    SelfId: 219086867505007230
    SubobjectId: 600881316001777211
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 7919052394948771314
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
  ParentId: 219086867505007230
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
  InstanceHistory {
    SelfId: 7919052394948771314
    SubobjectId: 7402431478770102711
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 7262884359701498986
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
  ParentId: 7436299772747528861
  ChildIds: 4575736054378745155
  ChildIds: 13131730993307282702
  ChildIds: 16631619426030635417
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 7262884359701498986
    SubobjectId: 8040731693685784623
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 16631619426030635417
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
  ParentId: 7262884359701498986
  ChildIds: 631444063546053296
  ChildIds: 13249709235068114418
  ChildIds: 12281282389881559673
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
  InstanceHistory {
    SelfId: 16631619426030635417
    SubobjectId: 17119301177384142300
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 12281282389881559673
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
  ParentId: 16631619426030635417
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
  InstanceHistory {
    SelfId: 12281282389881559673
    SubobjectId: 11615761198154569276
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 13249709235068114418
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
  ParentId: 16631619426030635417
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
  InstanceHistory {
    SelfId: 13249709235068114418
    SubobjectId: 13600013661959674295
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 631444063546053296
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
  ParentId: 16631619426030635417
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
  InstanceHistory {
    SelfId: 631444063546053296
    SubobjectId: 261154903656980213
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 13131730993307282702
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
  ParentId: 7262884359701498986
  ChildIds: 2807190194381891589
  ChildIds: 15254226246094532725
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
  InstanceHistory {
    SelfId: 13131730993307282702
    SubobjectId: 13646434381079978315
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 15254226246094532725
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
  ParentId: 13131730993307282702
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
  InstanceHistory {
    SelfId: 15254226246094532725
    SubobjectId: 15631288371299875888
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 2807190194381891589
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
  ParentId: 13131730993307282702
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
  InstanceHistory {
    SelfId: 2807190194381891589
    SubobjectId: 3290368381541540928
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 4575736054378745155
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
  ParentId: 7262884359701498986
  ChildIds: 5052586178326518513
  ChildIds: 15828999237248688926
  ChildIds: 750575161067129359
  ChildIds: 13998129505475997750
  ChildIds: 16315586282411810585
  ChildIds: 7244130212345901280
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
  InstanceHistory {
    SelfId: 4575736054378745155
    SubobjectId: 3809165354602791174
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 7244130212345901280
  Name: "Camera"
  Transform {
    Location {
      X: 2.11572266
      Y: 568.236633
      Z: 6.10351563e-05
    }
    Rotation {
      Pitch: -33.749836
      Yaw: 50.7222672
      Roll: -1.02682293e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4575736054378745155
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
  InstanceHistory {
    SelfId: 7244130212345901280
    SubobjectId: 8058287786118036645
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 16315586282411810585
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
  ParentId: 4575736054378745155
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
  InstanceHistory {
    SelfId: 16315586282411810585
    SubobjectId: 16802933784365634396
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 13998129505475997750
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
  ParentId: 4575736054378745155
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
  InstanceHistory {
    SelfId: 13998129505475997750
    SubobjectId: 14492513890424716403
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 750575161067129359
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
  ParentId: 4575736054378745155
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
  InstanceHistory {
    SelfId: 750575161067129359
    SubobjectId: 87270600871052874
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 15828999237248688926
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
  ParentId: 4575736054378745155
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
  InstanceHistory {
    SelfId: 15828999237248688926
    SubobjectId: 15057643479511428955
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 5052586178326518513
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
  ParentId: 4575736054378745155
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
  InstanceHistory {
    SelfId: 5052586178326518513
    SubobjectId: 5567289561262921396
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 14578107122098625299
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
  ParentId: 7436299772747528861
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
  InstanceHistory {
    SelfId: 14578107122098625299
    SubobjectId: 13912550773912606550
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 4809668170171478720
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
  ParentId: 7436299772747528861
  UnregisteredParameters {
    Overrides {
      Name: "cs:BlackScreenImage"
      ObjectReference {
        SelfId: 7919052394948771314
      }
    }
    Overrides {
      Name: "cs:RootGroup"
      ObjectReference {
        SelfId: 4928864281470396165
      }
    }
    Overrides {
      Name: "cs:KeyframesGroup"
      ObjectReference {
        SelfId: 7262884359701498986
      }
    }
    Overrides {
      Name: "cs:Camera"
      ObjectReference {
        SelfId: 14578107122098625299
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
  InstanceHistory {
    SelfId: 4809668170171478720
    SubobjectId: 5324318743788043909
    InstanceId: 17357519773266384903
    TemplateId: 2243570422191074978
  }
}
Objects {
  Id: 15721658923682352833
  Name: "Scenery"
  Transform {
    Location {
      Z: -50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Scenery"
  }
}
Objects {
  Id: 13166939408216695751
  Name: "Components"
  Transform {
    Location {
      Z: -50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Components"
  }
}
Objects {
  Id: 15445705037976461651
  Name: "Spawn Points"
  Transform {
    Location {
      Z: -50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Spawns"
  }
}
Objects {
  Id: 15200848935840344137
  Name: "Environment"
  Transform {
    Location {
      Z: -50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Environment"
  }
}
Objects {
  Id: 5468045072130652745
  Name: "Gameplay"
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
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Scripts"
  }
}
Objects {
  Id: 11367646586856977032
  Name: "User Interface"
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
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "User Interface"
  }
}
Objects {
  Id: 16805577375719089602
  Name: "Settings"
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
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Settings"
  }
}
