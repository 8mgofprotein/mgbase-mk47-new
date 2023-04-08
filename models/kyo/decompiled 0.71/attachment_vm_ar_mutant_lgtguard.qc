// Created by Crowbar 0.71

$modelname "attachment_vm_ar_mutant_lgtguard.mdl"

$bodygroup "barrel"
{
	studio "attachment_vm_ar_mutant_lgtguard.smd"
}
$bodygroup "tip"
{
	studio "attachment_vm_ar_mutant_lgtguard_attachment_vm_ar_mutant_cmmg15_muzzle.smd"
	blank
}
$bodygroup "tag_sight"
{
	studio "attachment_vm_ar_mutant_lgtguard_fs.smd"
	blank
	blank
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "models\weapons\v_models\g36c_bf4\"
$cdmaterials "models\weapons\shelbys_eft_weapons\"
$cdmaterials "viper\MW\weapons\mcharlie\"
$cdmaterials "models\weapons\mutantmbus\"
$cdmaterials ""

$attachment "muzzle" "tag_flash_attachment" 0 0 0 rotate 0 0 0
$attachment "silencer" "tag_silencer" 0 0 0 rotate 0 0 0
$attachment "laser" "tag_laser_attach" 0 0 0 rotate 0 0 0
$attachment "grip" "tag_grip_attach" 0 0 0 rotate 0 0 0
$attachment "folding_grip" "tag_folding_grip" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -2.089 -1.214 -1.224 12.697 1.214 2.289

$definebone "tag_barrel_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_flash_attachment" "tag_barrel_attach" 12.244 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_silencer" "tag_barrel_attach" 10.769 0 -0.011 0 0 0 0 0 0 0 0 0
$definebone "tag_folding_grip" "tag_barrel_attach" 3.456 0 -1.284 0 0 0 0 0 0 0 0 0
$definebone "tag_grip_attach" "tag_barrel_attach" 7.098 0 -1.284 0 0 0 0 0 0 0 0 0
$definebone "tag_laser_attach" "tag_barrel_attach" 3.74 0 1.273 0 0 0 0 0 0 0 0 0
$definebone "tag_grip_hide" "tag_barrel_attach" 2.655 0 -1.11 0 0 0 0 0 0 0 0 0
$definebone "tag_tip" "tag_barrel_attach" 10.769 0 -0.011 0 0 0 0 0 0 0 0 0


$sequence "reference" {
	"attachment_vm_ar_mutant_lgtguard_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$keyvalues
{
	qc_path 
	{
		"value"		"c:\github\source files mw\source-files-mw\attachments\assault rifles\galima\attachment_barrel.qc"
	}
	qc_path 
	{
		"value"		"c:\program files (x86)\steam\steamapps\common\garrysmod\garrysmod\addons\mgbase-mk47-new\models\kyo\decompiled 0.71\attachment_vm_ar_mutant_lgtguard.qc"
	}
}
