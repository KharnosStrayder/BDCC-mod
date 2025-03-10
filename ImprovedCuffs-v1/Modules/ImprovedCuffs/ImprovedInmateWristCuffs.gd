extends ItemBase

func _init():
	id = "improvedinmatewristcuffs"

func getVisibleName():
	return "Improved Iron wrist Cuffs"
	
func getDescription():
	return "Bulky metal restraints. Can be locked to bind arms together"

func getClothingSlot():
	return InventorySlot.Wrists

func getBuffs():
	return [
		buff(Buff.RestrainedArmsBuff),
		]

func getTakeOffScene():
	return "CuffTuggingScene"

func getTags():
	return [ItemTag.BDSMRestraint, ItemTag.SoldByGeneralVendomat]

func getPrice():
	return 6

func getSellPrice():
	return 1

func isRestraint():
	return true

func generateRestraintData():
	restraintData = RestraintHandCuffs.new()
	restraintData = RestraintUnremovable.new()

func getForcedOnMessage(isPlayer = true):
	if(isPlayer):
		return getAStackNameCapitalize()+" were locked onto your arms, just below your elbows, with a chain connecting them"
	else:
		return getAStackNameCapitalize()+" were locked onto {receiver.nameS} arms, just below {receiver.his} elbows, with a chain connecting them"

func getUnriggedParts(_character):
	return {
		"wrist.L": ["res://Inventory/UnriggedModels/Cuff/CuffModel.tscn"],
		"wrist.R": ["res://Inventory/UnriggedModels/Cuff/CuffModel.tscn"],
	}

func updateDoll(doll: Doll3D):
	doll.setArmsCuffed(true)

func getInventoryImage():
	return "res://Images/Items/bdsm/cuff.png"
