#pragma once
#include "Engine/Core/Base.h"

#ifdef HZ_PLATFORM_WINDOWS

extern Engine::Application* Engine::CreateApplication();

int main(int argc, char** argv)
{
	// TODO: reintegrate / fix submodules

	// TODO: automate
	Engine::Log::Init();

	// TODO: strip PROFILE, ASSERT and other macros...
	HZ_PROFILE_BEGIN_SESSION("Startup", "Profile-Startup.json");
	auto app = Engine::CreateApplication();
	HZ_PROFILE_END_SESSION();

	HZ_PROFILE_BEGIN_SESSION("Runtime", "Profile-Runtime.json");
	app->Run();
	HZ_PROFILE_END_SESSION();

	HZ_PROFILE_BEGIN_SESSION("Shutdown", "Profile-Shutdown.json");
	delete app;
	HZ_PROFILE_END_SESSION();
}

#endif
