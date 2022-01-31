state("DUMMY", "NOVERSIONFOUND"){}

state("PCSX2", "EMULATOR")
{
	uint black : "pcsx2.exe", 0x0123E4E4, 0x3B0;
	byte load : "pcsx2.exe", 0x0123E4F4, 0x708;
	uint start : "pcsx2.exe", 0x011E4D78, 0x610;
	uint startup_menus : "pcsx2.exe", 0x0123E53C, 0x3CC;
}

state("KINGDOM HEARTS II FINAL MIX", "GLOBAL")
{
	byte black : "KINGDOM HEARTS II FINAL MIX.exe", 0xAB8BC7;
	bool load : "KINGDOM HEARTS II FINAL MIX.exe", 0x8E9DA3;
	uint start : "KINGDOM HEARTS II FINAL MIX.exe", 0x00BEBD90, 0x1AC;
	uint roomTransition : "KINGDOM HEARTS II FINAL MIX.exe", 0x715568;
}

state("PCSX2", "EMULATOR-EX")
{
	uint black : "pcsx2.exe", 0x0127F8A4, 0x3B0;
	byte load : "pcsx2.exe", 0x127F8B4, 0x708;
	uint start : "pcsx2.exe", 0x01266D78, 0x660;
	uint startup_menus : "pcsx2.exe", 0x127F8FC, 0x3CC;
}

init
{
	if(modules.First().ModuleMemorySize == 46305280){
		version = "GLOBAL";
		refreshRate = 60;
	}
	else if(modules.First().ModuleMemorySize == 47538176){
		version = "EMULATOR";
		refreshRate = 60;
	}
	else if(modules.First().ModuleMemorySize == 47816704) {
		version = "EMULATOR-EX";
		refreshRate = 60;
	}
	else {
		version = "NOVERSIONFOUND";
	}
}

start {
	if (version=="EMULATOR") {
		if (current.startup_menus == 0 && old.startup_menus == 2) {
			if (current.start == 2844832) {
				return true;
			}
		}
	}
	else if (version=="GLOBAL") {
		if (current.start == 0 && old.start == 132) {
			return true;
		}
	}
	else if (version=="EMULATOR-EX") {
		if (current.startup_menus == 0) {
			if (current.start == 2844832) {
				return true;
			}
		}
	}
}

isLoading
{
	if (version=="EMULATOR" || version=="EMULATOR-EX") {
		return (current.black == 2147483648 || current.load != 0);
	}
	else if (version=="GLOBAL") {
		return (current.black == 128 || current.load || current.roomTransition == 0);
	}
}