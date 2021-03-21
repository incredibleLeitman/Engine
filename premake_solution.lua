include "./tools/premake/premake_customization/solution_items.lua"

workspace "Engine"
	architecture "x86_64"
	startproject "Editor"

	configurations
	{
		"Debug",
		"Release",
		"Deploy"
	}

	solution_items
	{
		".editorconfig"
	}

	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Include directories relative to root folder (solution directory)
IncludeDir = {}
IncludeDir["GLFW"] = "%{wks.location}/Engine/dependencies/GLFW/include"
IncludeDir["Glad"] = "%{wks.location}/Engine/dependencies/Glad/include"
IncludeDir["ImGui"] = "%{wks.location}/Engine/dependencies/imgui"
IncludeDir["glm"] = "%{wks.location}/Engine/dependencies/glm"
IncludeDir["stb_image"] = "%{wks.location}/Engine/dependencies/stb_image"
IncludeDir["entt"] = "%{wks.location}/Engine/dependencies/entt/include"
IncludeDir["yaml_cpp"] = "%{wks.location}/Engine/dependencies/yaml-cpp/include"
IncludeDir["ImGuizmo"] = "%{wks.location}/Engine/dependencies/ImGuizmo"
IncludeDir["spdlog"] = "%{wks.location}/Engine/dependencies/spdlog/include"

group "Dependencies"
	include "tools/premake"
	include "Engine/dependencies/GLFW"
	include "Engine/dependencies/Glad"
	include "Engine/dependencies/imgui"
	include "Engine/dependencies/yaml-cpp"

group ""
	include "Engine"
	include "Application"
	include "Editor"
