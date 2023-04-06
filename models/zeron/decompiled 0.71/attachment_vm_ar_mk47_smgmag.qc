
$modelname "attachment_vm_ar_mk47_smgmag.mdl"

$bodygroup "mag"
{
	studio "mutangsmgmag.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0


$mostlyopaque

$cdmaterials "models\weapons\pmag\"
$cdmaterials "viper\MW\weapons\akilo47\"

$cbox 0 0 0 0 0 0

$bbox -2.948 -0.583 -7.138 3.202 0.583 0.771

$definebone "tag_mag_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_mag1" "tag_mag_attach" -1.324 0 0.184 0 0 0 0 0 0 0 0 0
$definebone "j_mag2" "tag_mag_attach" -1.324 0 0.184 0 0 0 0 0 0 0 0 0
$definebone "j_bullet" "j_mag1" 0.095 -0.144 0.332 0 0 0 0 0 0 0 0 0
$definebone "j_bullet2" "j_mag1" 0.095 0.182 0.167 0 0 0 0 0 0 0 0 0
$definebone "j_bullet2_secondary" "j_mag2" 0.095 0.182 0.167 0 0 0 0 0 0 0 0 0
$definebone "j_bullet_secondary" "j_mag2" 0.095 -0.144 0.332 0 0 0 0 0 0 0 0 0

$bonemerge "tag_mag_attach"
$bonemerge "j_mag1"
$bonemerge "j_bullet"


$sequence "reference" {
	"attachment_vm_ar_mk47_pmag_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
