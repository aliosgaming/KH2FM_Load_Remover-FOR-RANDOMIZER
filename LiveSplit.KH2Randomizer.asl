//v2.4
state("DUMMY", "NOVERSIONFOUND"){}

state("KINGDOM HEARTS II FINAL MIX", "EPIC-1.0.0.9")
{
	byte black : "KINGDOM HEARTS II FINAL MIX.exe", 0xABAE07;
	byte loadscreen : "KINGDOM HEARTS II FINAL MIX.exe", 0x743350;
	bool load : "KINGDOM HEARTS II FINAL MIX.exe", 0x8EBFF3;
	uint start : "KINGDOM HEARTS II FINAL MIX.exe", 0xBEE0F0, 0x1AC;
	byte world : "KINGDOM HEARTS II FINAL MIX.exe", 0x716DF8;
	byte room : "KINGDOM HEARTS II FINAL MIX.exe", 0x716DF9;
	byte evt : "KINGDOM HEARTS II FINAL MIX.exe", 0x716E00;
	byte btlend : "KINGDOM HEARTS II FINAL MIX.exe", 0x2A0F720;
}

state("KINGDOM HEARTS II FINAL MIX", "EPIC-1.0.0.10")
{
	byte black : "KINGDOM HEARTS II FINAL MIX.exe", 0xABAE47;
	byte loadscreen : "KINGDOM HEARTS II FINAL MIX.exe", 0x743350;
	bool load : "KINGDOM HEARTS II FINAL MIX.exe", 0x8EC053;
	uint start : "KINGDOM HEARTS II FINAL MIX.exe", 0xBEE130, 0x1AC;
	byte world : "KINGDOM HEARTS II FINAL MIX.exe", 0x716DF8;
	byte room : "KINGDOM HEARTS II FINAL MIX.exe", 0x716DF9;
	byte evt : "KINGDOM HEARTS II FINAL MIX.exe", 0x716E00;
	byte btlend : "KINGDOM HEARTS II FINAL MIX.exe", 0x2A0F760;
}

state("KINGDOM HEARTS II FINAL MIX", "STEAM-1.0.0.1")
{
	byte black : "KINGDOM HEARTS II FINAL MIX.exe", 0xABB347;
	byte loadscreen : "KINGDOM HEARTS II FINAL MIX.exe", 0x7435D0;
	bool load : "KINGDOM HEARTS II FINAL MIX.exe", 0x8EC543;
	uint start : "KINGDOM HEARTS II FINAL MIX.exe", 0xBEE630, 0x1AC;
	byte world : "KINGDOM HEARTS II FINAL MIX.exe", 0x717008;
	byte room : "KINGDOM HEARTS II FINAL MIX.exe", 0x717009;
	byte evt : "KINGDOM HEARTS II FINAL MIX.exe", 0x717010;
	byte btlend : "KINGDOM HEARTS II FINAL MIX.exe", 0x2A0FC60;
}

state("KINGDOM HEARTS II FINAL MIX", "STEAM-1.0.0.2")
{
	byte black : "KINGDOM HEARTS II FINAL MIX.exe", 0xABB3C7;
	byte loadscreen : "KINGDOM HEARTS II FINAL MIX.exe", 0x7435D0;
	bool load : "KINGDOM HEARTS II FINAL MIX.exe", 0x8EC5B3;
	uint start : "KINGDOM HEARTS II FINAL MIX.exe", 0xBEE6B0, 0x1AC;
	byte world : "KINGDOM HEARTS II FINAL MIX.exe", 0x717008;
	byte room : "KINGDOM HEARTS II FINAL MIX.exe", 0x717009;
	byte evt : "KINGDOM HEARTS II FINAL MIX.exe", 0x717010;
	byte btlend : "KINGDOM HEARTS II FINAL MIX.exe", 0x2A0FCE0;
}

state("KINGDOM HEARTS II FINAL MIX", "RE-FINED")
{
	byte black : "KINGDOM HEARTS II FINAL MIX.exe", 0xAB8BC7;
	byte loadscreen : "KINGDOM HEARTS II FINAL MIX.exe", 0x741320;
	bool load : "KINGDOM HEARTS II FINAL MIX.exe", 0x8E9DA3;
	uint start : "KINGDOM HEARTS II FINAL MIX.exe", 0x00BEBD90, 0x1AC;
	uint roomTransition : "KINGDOM HEARTS II FINAL MIX.exe", 0x715568;
	byte world : "KINGDOM HEARTS II FINAL MIX.exe", 0x714DB8;
	byte room : "KINGDOM HEARTS II FINAL MIX.exe", 0x714DB9;
	byte evt : "KINGDOM HEARTS II FINAL MIX.exe", 0x714DC0;
	byte prevWorld : "KINGDOM HEARTS II FINAL MIX.exe", 0x714DE8;
	byte prevRoom : "KINGDOM HEARTS II FINAL MIX.exe", 0x714DE9;
	byte btlend : "KINGDOM HEARTS II FINAL MIX.exe", 0x2A0D3E0;
}

state("PCSX2", "EMULATOR")
{
	byte black : "pcsx2.exe", 0x0123E4E4, 0x3B3;
	byte load : "pcsx2.exe", 0x0123E4F4, 0x708;
	uint start : "pcsx2.exe", 0x011E4D78, 0x610;
	uint startup_menus : "pcsx2.exe", 0x0123E53C, 0x3CC;
	byte keyholetransition : "pcsx2.exe", 0x123E4EC, 0x220;
	byte world : "pcsx2.exe", 0x0123E46C, 0xAE0;
	byte room : "pcsx2.exe", 0x0123E46C, 0xAE1;
	byte evt : "pcsx2.exe", 0x0123E46C, 0xAE8;
	byte prevWorld : "pcsx2.exe", 0x0123E46C, 0xB10;
	byte prevRoom : "pcsx2.exe", 0x0123E46C, 0xB11;
	byte btlend : "pcsx2.exe", 0x01244CE4, 0xC0;
}

state("PCSX2", "EMULATOR-EX")
{
	byte black : "pcsx2.exe", 0x0127F8A4, 0x3B3;
	byte load : "pcsx2.exe", 0x127F8B4, 0x708;
	uint start : "pcsx2.exe", 0x01266D78, 0x660;
	uint startup_menus : "pcsx2.exe", 0x127F8FC, 0x3CC;
	byte keyholetransition : "pcsx2.exe", 0x127F8AC, 0x220;
	byte world : "pcsx2.exe", 0x0127F82C, 0xAE0;
	byte room : "pcsx2.exe", 0x0127F82C, 0xAE1;
	byte evt : "pcsx2.exe", 0x0127F82C, 0xAE8;
	byte prevWorld : "pcsx2.exe", 0x0127F82C, 0xB10;
	byte prevRoom : "pcsx2.exe", 0x0127F82C, 0xB11;
	byte btlend : "pcsx2.exe", 0x012860A4, 0xC0;
}

init
{
	vars.infinalfights = 0;
	vars.pcversion = false;

	Thread.Sleep(4000);

    var memsize = modules.First().ModuleMemorySize;
	if (memsize == 47538176) {
		version = "EMULATOR";
	}
	else if (memsize == 47816704) {
		version = "EMULATOR-EX";
	}
	else if (game.MainWindowTitle.Contains("Re:Fined")) {
		version = "RE-FINED";
	}
	else {
        var ba = modules.First().BaseAddress;
        var scanner = new SignatureScanner(game, ba, memsize);
        var target = new SigScanTarget(0, "4B 48 32 4A 3A"); //"KH2J:"
        var offset = scanner.Scan(target).ToInt64() - ba.ToInt64();
        switch (offset.ToString("X")) {
            case "9A9330": //Epic 1.0.0.10
                version = "EPIC-1.0.0.10";
                vars.pcversion = true;
                break;
            case "9A92F0": //Epic 1.0.0.9
                version = "EPIC-1.0.0.9";
                vars.pcversion = true;
                break;
            case "9A98B0": //Steam 1.0.0.2 or Steam 1.0.0.2_JP
                version = "STEAM-1.0.0.2";
                vars.pcversion = true;
                break;
            case "9A9830": //Steam 1.0.0.1
                version = "STEAM-1.0.0.1";
                vars.pcversion = true;
                break;
            default:
                version = "NOVERSIONFOUND";
                break;
        }
	}
	print(version);
}

start 
{
	if (vars.pcversion) {
		if (current.start == 0 && old.start == 132) {
			return true;
		}
	}
	else if (version == "EMULATOR") {
		if (current.startup_menus == 0 && old.startup_menus == 2) {
			if (current.start == 2844832) {
				return true;
			}
		}
	}
	else if (version == "EMULATOR-EX") {
		if (current.startup_menus == 0) {
			if (current.start == 2844832) {
				return true;
			}
		}
	}
}

isLoading
{
	if (vars.pcversion) {
		return (current.black == 128 || current.load && current.loadscreen != 3);
	}
	else if (version == "EMULATOR" || version == "EMULATOR-EX") {
		if (current.prevWorld == 4 && current.prevRoom == 26) {
			if (current.black == 128) {
				return true;
			}
			if (current.black == 0 && current.load != 0) {
				return true;
			}
		}
		if (current.prevWorld != 4 && current.prevRoom != 26) {
			return ((current.black == 128 || current.load != 0) && current.keyholetransition == 0);
		}
		return false;
	}
}

split
{
	if(old.btlend !=4 && current.world==18 && current.room==20 && current.evt==74 && current.btlend==4) {
		return true;
	}
}

exit
{
	timer.IsGameTimePaused = true;
}
