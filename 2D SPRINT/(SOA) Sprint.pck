GDPC                                                                                   res://(SOA)SPRINT.tscn  �      �&      ��G�@��4�rJ)��<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexO      �      �p��<f��r�g��.�   res://Node2D.tscn   `*      �      ������V����j^   res://Node2D2.gd.remap  �c      "       u��K�M�;_9V ����   res://Node2D2.gdc   J      w      ��tcm7�iޖ�   res://default_env.tres  �M      �       um�`�N��<*ỳ�8   res://floor2.gd.remap   �c      !       (g�Դ �7��v��P   res://floor2.gdc@N      �       ߑ/��~f�x�_��.   res://icon.png  0d      i      ����󈘥Ey��
�   res://icon.png.import   �\      �      �����%��(#AB�    res://new_rectangleshape2d.tres 0_      U       ��X�@�}eD�q/L   res://player2.gd.remap   d      "       <���+b`�b/H��Ȏ   res://player2.gdc   �_      	      ��b9��z(�b�����   res://project.binary�q             S���0�eռT��kk    [gd_scene load_steps=9 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://player2.gd" type="Script" id=2]
[ext_resource path="res://floor2.gd" type="Script" id=3]

[sub_resource type="GDScript" id=1]
script/source = "extends KinematicBody2D

# Declare member variables here. Examples:
var gravity = 100
var velocity = Vector2(0,0)
# var b = \"text\"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_slide(Vector2(0,gravity))

	if Input.is_action_pressed(\"Left2\"):
		velocity.x = -600
	elif Input.is_action_pressed(\"Right2\"):
		velocity.x = 600
	else:
		velocity.x = 0
		
		
	if Input.is_action_pressed(\"Up2\"):
		velocity.y = -480
	elif Input.is_action_pressed(\"Down2\"):
		velocity.y  = 400
	else:
		velocity.y = 0
		
	move_and_slide(velocity)
	
	pass
		 "

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 163.928, 153.182 )

[sub_resource type="CanvasItemMaterial" id=5]

[sub_resource type="CanvasItemMaterial" id=3]

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 25.9189, 17.7661 )

[node name="Node2D" type="Node2D"]
position = Vector2( 7.4043, 12.4891 )

[node name="PREDATOR" type="KinematicBody2D" parent="."]
position = Vector2( 2130.31, 751.967 )
scale = Vector2( 0.28, 0.28 )
collision/safe_margin = 53.045
script = SubResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="PREDATOR"]
modulate = Color( 1, 0.0941176, 0, 1 )
self_modulate = Color( 1, 0.0941176, 0, 1 )
show_behind_parent = true
position = Vector2( -6931.14, -2282.48 )
scale = Vector2( 5.07585, 4.78632 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="PREDATOR"]
modulate = Color( 1, 0, 0, 0.164706 )
self_modulate = Color( 1, 0.890196, 0, 1 )
show_behind_parent = true
position = Vector2( -6949.56, -2255.02 )
shape = SubResource( 2 )

[node name="PREY" type="KinematicBody2D" parent="."]
modulate = Color( 0, 1, 0.0390625, 1 )
self_modulate = Color( 0, 1, 0.0392157, 1 )
show_behind_parent = true
light_mask = 11
material = SubResource( 5 )
use_parent_material = true
position = Vector2( 2729.22, 763.901 )
scale = Vector2( 0.28, 0.28 )
collision/safe_margin = 152.0
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="PREY"]
modulate = Color( 0, 1, 0.0392157, 1 )
self_modulate = Color( 0, 1, 0.368627, 1 )
show_behind_parent = true
position = Vector2( -6931.14, -2282.48 )
scale = Vector2( 5.07585, 4.78632 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="PREY"]
modulate = Color( 1, 0, 0, 0.164706 )
self_modulate = Color( 1, 0.890196, 0, 1 )
show_behind_parent = true
position = Vector2( -6949.56, -2255.02 )
shape = SubResource( 2 )

[node name="floor2" type="KinematicBody2D" parent="."]
position = Vector2( -5533.57, -963.223 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor2"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor2"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor11" type="KinematicBody2D" parent="."]
position = Vector2( -5458.25, -1200.2 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor11"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor11"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor13" type="KinematicBody2D" parent="."]
position = Vector2( -5906.09, -894.355 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor13"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor13"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor14" type="KinematicBody2D" parent="."]
position = Vector2( -5164.96, -1224.34 )
rotation = 0.010472
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor14"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor14"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor3" type="KinematicBody2D" parent="."]
position = Vector2( -6008.14, -1336.44 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor3"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor3"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor8" type="KinematicBody2D" parent="."]
position = Vector2( -5306.68, -856.328 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor8"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor8"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor9" type="KinematicBody2D" parent="."]
position = Vector2( -5710.64, -1119.86 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor9"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor9"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor12" type="KinematicBody2D" parent="."]
position = Vector2( -5137.49, -961.262 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor12"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor12"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor10" type="KinematicBody2D" parent="."]
position = Vector2( -5544.04, -1395.94 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor10"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor10"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor4" type="KinematicBody2D" parent="."]
position = Vector2( -5425.77, -1270.8 )
rotation = -3.15032
scale = Vector2( 5.19536, 1.16196 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor4"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.86, 1157.41 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor4"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor5" type="KinematicBody2D" parent="."]
position = Vector2( -6103.92, -933.496 )
rotation = -0.00176995
scale = Vector2( 5.06752, 1.12107 )

[node name="Sprite" type="Sprite" parent="floor5"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1220.88, 1114.93 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="floor6" type="KinematicBody2D" parent="."]
position = Vector2( -6103.92, -933.496 )
rotation = -0.00176995
scale = Vector2( 5.06752, 1.12107 )

[node name="Sprite" type="Sprite" parent="floor6"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1379.14, 1156.44 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="floor7" type="KinematicBody2D" parent="."]
position = Vector2( -6103.92, -933.496 )
rotation = -0.00176995
scale = Vector2( 5.06752, 1.12107 )

[node name="Sprite" type="Sprite" parent="floor7"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1273.56, 933.745 )
scale = Vector2( 0.259234, 0.24948 )
texture = ExtResource( 1 )
         [gd_scene load_steps=9 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://player2.gd" type="Script" id=2]
[ext_resource path="res://floor2.gd" type="Script" id=3]

[sub_resource type="GDScript" id=1]
script/source = "extends KinematicBody2D

# Declare member variables here. Examples:
var gravity = 100
var velocity = Vector2(0,0)
# var b = \"text\"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_slide(Vector2(0,gravity))

	if Input.is_action_pressed(\"Left2\"):
		velocity.x = -600
	elif Input.is_action_pressed(\"Right2\"):
		velocity.x = 600
	else:
		velocity.x = 0
		
		
	if Input.is_action_pressed(\"Up2\"):
		velocity.y = -480
	elif Input.is_action_pressed(\"Down2\"):
		velocity.y  = 400
	else:
		velocity.y = 0
		
	move_and_slide(velocity)
	
	pass
		 "

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 163.928, 153.182 )

[sub_resource type="CanvasItemMaterial" id=5]

[sub_resource type="CanvasItemMaterial" id=3]

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 25.9189, 17.7661 )

[node name="Node2D" type="Node2D"]
position = Vector2( 7.4043, 12.4891 )

[node name="PREDATOR" type="KinematicBody2D" parent="."]
position = Vector2( 2664.55, 964.437 )
scale = Vector2( 0.28, 0.28 )
collision/safe_margin = 30.976
script = SubResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="PREDATOR"]
modulate = Color( 1, 0.0941176, 0, 1 )
self_modulate = Color( 1, 0.0941176, 0, 1 )
show_behind_parent = true
position = Vector2( -6931.14, -2282.48 )
scale = Vector2( 5.07585, 4.78632 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="PREDATOR"]
modulate = Color( 1, 0, 0, 0.164706 )
self_modulate = Color( 1, 0.890196, 0, 1 )
show_behind_parent = true
position = Vector2( -6949.56, -2255.02 )
shape = SubResource( 2 )

[node name="PREY" type="KinematicBody2D" parent="."]
modulate = Color( 0, 1, 0.0390625, 1 )
self_modulate = Color( 0, 1, 0.0392157, 1 )
show_behind_parent = true
light_mask = 11
material = SubResource( 5 )
use_parent_material = true
position = Vector2( 2564.09, 775.002 )
scale = Vector2( 0.28, 0.28 )
collision/safe_margin = 30.976
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="PREY"]
modulate = Color( 0, 1, 0.0392157, 1 )
self_modulate = Color( 0, 1, 0.368627, 1 )
show_behind_parent = true
position = Vector2( -6931.14, -2282.48 )
scale = Vector2( 5.07585, 4.78632 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="PREY"]
modulate = Color( 1, 0, 0, 0.164706 )
self_modulate = Color( 1, 0.890196, 0, 1 )
show_behind_parent = true
position = Vector2( -6949.56, -2255.02 )
shape = SubResource( 2 )

[node name="floor2" type="KinematicBody2D" parent="."]
position = Vector2( -5533.57, -963.223 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor2"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor2"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor13" type="KinematicBody2D" parent="."]
position = Vector2( -5820.41, -875.315 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor13"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor13"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor3" type="KinematicBody2D" parent="."]
position = Vector2( -6008.14, -1336.44 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor3"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor3"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor8" type="KinematicBody2D" parent="."]
position = Vector2( -5251.3, -898.522 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor8"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor8"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor9" type="KinematicBody2D" parent="."]
position = Vector2( -5710.64, -1119.86 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor9"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor9"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor10" type="KinematicBody2D" parent="."]
position = Vector2( -5513.1, -1400.7 )
scale = Vector2( 5.01996, 1.213 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor10"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.5, 1154.24 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor10"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor4" type="KinematicBody2D" parent="."]
position = Vector2( -5432.52, -1173.42 )
scale = Vector2( 5.19536, 1.16196 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="floor4"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1218.86, 1157.41 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="floor4"]
position = Vector2( 1218.77, 1154.9 )
scale = Vector2( 0.331139, 0.647363 )
shape = SubResource( 4 )

[node name="floor5" type="KinematicBody2D" parent="."]
position = Vector2( -6103.92, -933.496 )
rotation = -0.00176995
scale = Vector2( 5.06752, 1.12107 )

[node name="Sprite" type="Sprite" parent="floor5"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1220.88, 1114.93 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="floor6" type="KinematicBody2D" parent="."]
position = Vector2( -6103.92, -933.496 )
rotation = -0.00176995
scale = Vector2( 5.06752, 1.12107 )

[node name="Sprite" type="Sprite" parent="floor6"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1379.61, 1147.95 )
scale = Vector2( 0.259234, 0.281124 )
texture = ExtResource( 1 )

[node name="floor7" type="KinematicBody2D" parent="."]
position = Vector2( -6103.92, -933.496 )
rotation = -0.00176995
scale = Vector2( 5.06752, 1.12107 )

[node name="Sprite" type="Sprite" parent="floor7"]
modulate = Color( 0, 0, 0, 1 )
material = SubResource( 3 )
position = Vector2( 1273.56, 933.745 )
scale = Vector2( 0.259234, 0.24948 )
texture = ExtResource( 1 )
      GDSC         #   �      ������Ӷ   ������϶   �������϶���   �����϶�   �������Ŷ���   ����׶��   �������������Ӷ�   ����¶��   ����������������Ҷ��   ζ��   ϶��   d                Left2      ,        Right2        Up2    X        Down2                            	                           	      
                      !      (      2      3      <      C      L      R      U      [      \      ]      f      m      v      |            �      �       �   !   �   "   �   #   3YYY;�  Y;�  �  P�  R�  QYYYYY0�  PQV�  -YYY0�  P�  QV�  �  P�  P�  R�  QQY�  &�  T�  P�  QV�  �  T�	  �  �  '�  T�  P�  QV�  �  T�	  �  �  (V�  �  T�	  �  �  �  �  &�  T�  P�  QV�  �  T�
  �  �  '�  T�  P�  QV�  �  T�
  �  �  (V�  �  T�
  �  �  �  �  P�  Q�  �  -�  `         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC                   ������������τ�   �����϶�                                                    	      
                           3YYYYYYY0�  PQV�  -YYYYY`            GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[gd_resource type="RectangleShape2D" format=2]

[resource]
extents = Vector2( 0, 0 )
           GDSC      
   1   �      ������������τ�   ������϶   �������϶���   �����϶�   �������Ŷ���   ����׶��   �������������Ӷ�   ����¶��   ����������������Ҷ��   ζ��   ϶��   d                Left   X        Right      �        Up     �        Down   �                                                	      
   	      
                                                !      "      #      $      %      +      -      .      /      6      @      A      J       Q   !   Z   "   `   #   c   $   i   %   j   &   k   '   t   (   {   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   YYYYYYY�  YYYYYY3YYY;�  Y;�  �  P�  R�  QYYYYY0�  PQV�  -YYY0�  P�  QV�  �  P�  P�  R�  QQY�  &�  T�  P�  QV�  �  T�	  �  �  '�  T�  P�  QV�  �  T�	  �  �  (V�  �  T�	  �  �  �  �  &�  T�  P�  QV�  �  T�
  �  �  '�  T�  P�  QV�  �  T�
  �	  �  (V�  �  T�
  �  �  �  �  P�  Q�  �  -�  Y`       [remap]

path="res://Node2D2.gdc"
              [remap]

path="res://floor2.gdc"
               [remap]

path="res://player2.gdc"
              �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         2D shoot-off   application/run/main_scene         res://Node2D.tscn      application/config/icon         res://icon.png     input/ui_down              deadzone  ���Q��?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script         
   input/Leftd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/Rightd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/Upd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         
   input/Downd              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            input/Right2d              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script               deadzone      ?   input/Left2d              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script               deadzone      ?	   input/Up2d              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script               deadzone      ?   input/Down2d              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script               deadzone      ?)   rendering/environment/default_environment          res://default_env.tres  GDPC