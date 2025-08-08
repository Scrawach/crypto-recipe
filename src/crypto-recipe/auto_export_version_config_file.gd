extends "res://addons/AutoExportVersion/VersionProvider.gd"

func get_version(features: PackedStringArray, is_debug: bool, path: String, flags: int) -> String:
	return "v.%s.%s" % [get_git_commit_count(), get_git_commit_hash()]
