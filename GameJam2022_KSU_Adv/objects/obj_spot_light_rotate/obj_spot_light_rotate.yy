{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_spot_light_rotate",
  "spriteId": {
    "name": "spr_light_spot",
    "path": "sprites/spr_light_spot/spr_light_spot.yy",
  },
  "solid": false,
  "visible": false,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_light_demo",
    "path": "objects/obj_light_demo/obj_light_demo.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"Rotate","varType":3,"value":"True","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"Light_Type","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"\"Spot Light\"",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"Light_Color","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"$E9FFD400",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"Light_Angle","path":"objects/obj_light/obj_light.yy",},"objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"value":"45",},
  ],
  "parent": {
    "name": "Demo",
    "path": "folders/Objects/lighting_library/Demo.yy",
  },
}