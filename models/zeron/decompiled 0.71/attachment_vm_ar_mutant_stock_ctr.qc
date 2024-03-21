// Created by Crowbar 0.71

$modelname "ar47_stock.mdl"

$bodygroup "slide"
{
	studio "ar47_stock.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "zeron\weapons\ar47"
$cbox 0 0 0 0 0 0

$bbox -8.148 -0.715 -4.319 0 0.715 0.626

$definebone "tag_sling" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_RH" "" 0 0 0 0 0 0 0 0 0 0 0 0

$bonemerge "tag_sling"


$sequence "reference" {
	"ar47_stock.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
