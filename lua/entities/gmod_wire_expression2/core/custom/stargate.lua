/*
  Stargate Expression2 Lib
  Created by AlexALX (c) 2012
*/
if (E2Lib==nil) then return end
E2Lib.RegisterExtension("stargate", true)

e2function string entity:stargateAddress()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return "" end
	return this:GetGateAddress() or ""
end

e2function string wirelink:stargateAddress()
	if not IsValid(this) or not this.IsStargate then return "" end
	return this:GetGateAddress() or ""
end

e2function void entity:stargateSetAddress(string address)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:SetGateAddress(address)
end

e2function void wirelink:stargateSetAddress(string address)
	if not IsValid(this) or not this.IsStargate then return end
	this:SetGateAddress(address)
end

e2function string entity:stargateGroup()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return "" end
	return this:GetGateGroup() or ""
end

e2function string wirelink:stargateGroup()
	if not IsValid(this) or not this.IsStargate then return "" end
	return this:GetGateGroup() or ""
end

e2function void entity:stargateSetGroup(string group)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:SetGateGroup(group)
end

e2function void wirelink:stargateSetGroup(string group)
	if not IsValid(this) or not this.IsStargate then return end
	this:SetGateGroup(group)
end

e2function string entity:stargateName()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return "" end
	return this:GetGateName() or ""
end

e2function string wirelink:stargateName()
	if not IsValid(this) or not this.IsStargate then return "" end
	return this:GetGateName() or ""
end

e2function void entity:stargateSetName(string name)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:SetGateName(name)
end

e2function void wirelink:stargateSetName(string name)
	if not IsValid(this) or not this.IsStargate then return end
	this:SetGateName(name)
end

e2function number entity:stargatePrivate()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return -1 end
	local ret = this:GetPrivate()
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function number wirelink:stargatePrivate()
	if not IsValid(this) or not this.IsStargate then return -1 end
	local ret = this:GetPrivate()
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function void entity:stargateSetPrivate(number bool)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:SetPrivate(bool)
end

e2function void wirelink:stargateSetPrivate(number bool)
	if not IsValid(this) or not this.IsStargate then return end
	this:SetPrivate(bool)
end

e2function number entity:stargateLocal()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return -1 end
	local ret = this:GetLocale()
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function number wirelink:stargateLocal()
	if not IsValid(this) or not this.IsStargate then return -1 end
	local ret = this:GetLocale()
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function void entity:stargateSetLocal(number bool)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:SetLocale(bool)
end

e2function void wirelink:stargateSetLocal(number bool)
	if not IsValid(this) or not this.IsStargate then return end
	this:SetLocale(bool)
end

e2function number entity:stargateBlocked()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return -1 end
	local ret = this:GetBlocked()
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function number wirelink:stargateBlocked()
	if not IsValid(this) or not this.IsStargate then return -1 end
	local ret = this:GetBlocked()
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function void entity:stargateSetBlocked(number bool)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:SetBlocked(bool)
end

e2function void wirelink:stargateSetBlocked(number bool)
	if not IsValid(this) or not this.IsStargate then return end
	this:SetBlocked(bool)
end

e2function number entity:stargateGalaxy()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return -1 end
	local ret = this:GetGalaxy()
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function number wirelink:stargateGalaxy()
	if not IsValid(this) or not this.IsStargate then return -1 end
	local ret = this:GetGalaxy()
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function void entity:stargateSetGalaxy(number bool)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:SetGalaxy(bool)
end

e2function void wirelink:stargateSetGalaxy(number bool)
	if not IsValid(this) or not this.IsStargate then return end
	this:SetGalaxy(bool)
end

/* I think this function is like exploit - we can openiris from target gate for example... So i disable it.
e2function entity entity:stargateTarget()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return nil end
	if (IsValid(this.Target) and (not this.Target:GetPrivate() or isOwner(self.Target,this) or self.player:IsAdmin())) then
		return this.Target
	else
		return nil
	end
end

e2function entity wirelink:stargateTarget()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return nil end
	if (IsValid(this.Target) and (not this.Target:GetPrivate() or isOwner(self.Target,this) or self.player:IsAdmin())) then
		return this.Target
	else
		return nil
	end
end */

e2function number entity:stargateOpen()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return -1 end
	local ret = this.IsOpen
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function number wirelink:stargateOpen()
	if not IsValid(this) or not this.IsStargate then return -1 end
	local ret = this.IsOpen
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function number entity:stargateInbound()
 	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return -1 end
	local ret = !this.Outbound and this.Active
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function number wirelink:stargateInbound()
 	if not IsValid(this) or not this.IsStargate then return -1 end
	local ret = !this.Outbound and this.Active
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function number entity:stargateActive()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return -1 end
	local ret = this.NewActive
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function number wirelink:stargateActive()
	if not IsValid(this) or not this.IsStargate then return -1 end
	local ret = this.NewActive
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function void entity:stargateDial(string address)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:DialGate(string.upper(address))
end

e2function void wirelink:stargateDial(string address)
	if not IsValid(this) or not this.IsStargate then return end
	this:DialGate(string.upper(address))
end

e2function void entity:stargateDial(string address, number mode)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	if (mode>=2) then
		this:NoxDialGate(string.upper(address))
	else
		this:DialGate(string.upper(address),util.tobool(mode))
	end
end

e2function void wirelink:stargateDial(string address, number mode)
	if not IsValid(this) or not this.IsStargate then return end
	if (mode>=2) then
		this:NoxDialGate(string.upper(address))
	else
		this:DialGate(string.upper(address),util.tobool(mode))
	end
end

e2function void entity:stargateClose()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:AbortDialling()
end

e2function void wirelink:stargateClose()
	if not IsValid(this) or not this.IsStargate then return end
	this:AbortDialling()
end

e2function number entity:stargateIrisActive()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return -1 end
	local ret = this:IsBlocked(1,1)
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function number wirelink:stargateIrisActive()
	if not IsValid(this) or not this.IsStargate then return -1 end
	local ret = this:IsBlocked(1,1)
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function void entity:stargateIrisToggle()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:IrisToggle();
end

e2function void wirelink:stargateIrisToggle()
	if not IsValid(this) or not this.IsStargate then return end
	this:IrisToggle();
end

e2function void entity:stargateDHDPressButton(string char)
	if not IsValid(this) or not this.IsDHD or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:TriggerInput("Press Button",char:byte())
end

e2function void wirelink:stargateDHDPressButton(string char)
	if not IsValid(this) or not this.IsDHD then return end
	this:TriggerInput("Press Button",char:byte())
end

e2function number wirelink:stargateGetEnergyFromAddress(string address)
	if not IsValid(this) or not this.IsStargate then return -2 end
	return this:WireGetEnergy(address:upper():sub(1,9));
end

e2function number entity:stargateGetEnergyFromAddress(string address)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return -2 end
	return this:WireGetEnergy(address:upper():sub(1,9));
end

e2function number wirelink:stargateGetDistanceFromAddress(string address)
	if not IsValid(this) or not this.IsStargate then return -2 end
	return this:WireGetEnergy(address:upper():sub(1,9),true);
end

e2function number entity:stargateGetDistanceFromAddress(string address)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return -2 end
	return this:WireGetEnergy(address:upper():sub(1,9),true);
end

e2function array wirelink:stargateAddressList()
	if not IsValid(this) or not this.IsStargate then return {} end
	return this:WireGetAddresses();
end

e2function array entity:stargateAddressList()
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return {} end
	return this:WireGetAddresses();
end

e2function number stargateSystemType()
	local ret = GetConVar("stargate_group_system"):GetBool()
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function string wirelink:stargateTransmit(string value)
	if not IsValid(this) or not this.IsStargate then return end
	return this:TriggerInput("Transmit",value);
end

e2function number entity:stargateTransmit(number value)
	if not IsValid(this) or not this.IsStargate or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	return this:TriggerInput("Transmit",value);
end

e2function string entity:stargateRingAddress()
	if not IsValid(this) or not this.IsRings or not(isOwner(self,this) or self.player:IsAdmin()) then return "" end
	return this.Address or "";
end

e2function string wirelink:stargateRingAddress()
	if not IsValid(this) or not this.IsRings then return "" end
	return this.Address or "";
end

e2function void entity:stargateRingSetAddress(string address)
	if not IsValid(this) or not this.IsRings or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:SetRingAddress(address);
end

e2function void wirelink:stargateRingSetAddress(string address)
	if not IsValid(this) or not this.IsRings then return end
	this:SetRingAddress(address);
end

e2function void entity:stargateRingDial(string address)
	if not IsValid(this) or not this.IsRings or this.Busy or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	local adr = address:gsub("[^0-9]","");
	if (adr!="") then
		this:Dial(address);
	else
		this:Dial(" "); -- fail
	end
end

e2function void entity:stargateRingDialClosest()
	if not IsValid(this) or not this.IsRings or this.Busy or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:Dial("");
end

e2function void wirelink:stargateRingDial(string address)
	if not IsValid(this) or not this.IsRings or this.Busy then return end
	local adr = address:gsub("[^0-9]","");
	if (adr!="") then
		this:Dial(address);
	else
		this:Dial(" "); -- fail
	end
end

e2function void wirelink:stargateRingDialClosest()
	if not IsValid(this) or not this.IsRings or this.Busy then return end
	this:Dial("");
end

e2function void entity:stargateAsgardTeleport(vector origin, vector dest, number all)
	if not IsValid(this) or this:GetClass() != "transporter" or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this.TeleportEverything = util.tobool(all);
	this:Teleport(Vector(origin[1],origin[2],origin[3]), Vector(dest[1],dest[2],dest[3]));
end

e2function void wirelink:stargateAsgardTeleport(vector origin, vector dest, number all)
	if not IsValid(this) or this:GetClass() != "transporter" then return end
	this.TeleportEverything = util.tobool(all);
	this:Teleport(Vector(origin[1],origin[2],origin[3]), Vector(dest[1],dest[2],dest[3]));
end

e2function string wirelink:stargateAtlantisTPGetName()
	if not IsValid(this) or not this.IsAtlTP then return "" end
	return this.TName or "";
end

e2function void wirelink:stargateAtlantisTPSetName(string name)
	if not IsValid(this) or not this.IsAtlTP then return end
	this:SetAtlName(name,true);
end

e2function number wirelink:stargateAtlantisTPGetPrivate()
	if not IsValid(this) or not this.IsAtlTP then return -1 end
	local ret = this.TPrivate;
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function void wirelink:stargateAtlantisTPSetPrivate(number bool)
	if not IsValid(this) or not this.IsAtlTP then return end
	this:SetAtlPrivate(bool);
end

e2function void wirelink:stargateAtlantisTPTeleport(string name)
	if not IsValid(this) or not this.IsAtlTP then return end
	this.Destination = name;
	this:Teleport();
end

e2function array wirelink:stargateAtlantisTPAddressList()
	if not IsValid(this) or not this.IsAtlTP then return {} end
	return this:WireGetAddresses();
end

e2function string entity:stargateAtlantisTPGetName()
	if not IsValid(this) or not this.IsAtlTP or not(isOwner(self,this) or self.player:IsAdmin()) then return "" end
	return this.TName or "";
end

e2function void entity:stargateAtlantisTPSetName(string name)
	if not IsValid(this) or not this.IsAtlTP or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:SetAtlName(name,true);
end

e2function number entity:stargateAtlantisTPGetPrivate()
	if not IsValid(this) or not this.IsAtlTP or not(isOwner(self,this) or self.player:IsAdmin()) then return -1 end
	local ret = this.TPrivate;
	if (ret) then
		return 1
	else
		return 0
	end
end

e2function void entity:stargateAtlantisTPSetPrivate(number bool)
	if not IsValid(this) or not this.IsAtlTP or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this:SetAtlPrivate(bool);
end

e2function void entity:stargateAtlantisTPTeleport(string name)
	if not IsValid(this) or not this.IsAtlTP or not(isOwner(self,this) or self.player:IsAdmin()) then return end
	this.Destination = name;
	this:Teleport();
end

e2function array entity:stargateAtlantisTPAddressList()
	if not IsValid(this) or not this.IsAtlTP or not(isOwner(self,this) or self.player:IsAdmin()) then return {} end
	return this:WireGetAddresses();
end