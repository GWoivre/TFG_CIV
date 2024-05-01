local iBuilding = GameInfoTypes.BUILDING_CASINO
local RequiredCivilization = GameInfoTypes.CIVILIZATION_GWG_VEGAS

function CasinoIncome(iPlayer)
	local pPlayer = Players[iPlayer] -- sacamos al jugador
	if pPlayer:GetCivilizationType() ~= RequiredCivilization then return end -- si no es la civilizacion de las Vegas termina
	if not pPlayer:IsAlive() then return end -- si esta muerto termina
	for pCity in pPlayer:Cities() do -- por cada ciudad que tenemos
		if pCity:HasBuilding(iBuilding) then -- ver si tenemos un casino en esa ciudad
			local val = pPlayer:GetTreasury():GetGoldBalance() -- Cogemos el valor original
			local rand = math.random(0,5) -- cogemos un valor aleatorio entre 0 y 5
			Player:GetTreasury():SetGoldBalance(val + rand) -- lo añadimos al balance original
		end
	end
end
GameEvents.PlayerTurnStarted.Add(CasinoIncome) -- Y por ultimo lo añadimos al GameEvents de PlayerTurnStarted queriendo decir que esto se activa al inicio de cada turno del jugador
