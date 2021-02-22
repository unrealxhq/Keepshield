_addon.name = 'Keepshield'
_addon.author = 'Shiraj'
_addon.commands = {'shield'}--Does nothing as of yet.
_addon.version = '1.0.1'

nextPing = os.clock()

windower.register_event('prerender',function()
    if os.clock()-nextPing > 0.2 then
    local player = windower.ffxi.get_player()
    local get_items = windower.ffxi.get_items()
	
        if get_items.equipment.sub == 0 and player.status ~= 'Event' then
           windower.chat.input('//gs c update;')
        end
        if get_items.equipment.body == 0 and player.status ~= 'Event' then
           windower.chat.input('//gs c update;')
        end
        if get_items.equipment.main == 0 and player.status ~= 'Event' then
           windower.chat.input('//gs c update;')
        end
        if get_items.equipment.legs == 0 and player.status ~= 'Event' then
           windower.chat.input('//gs c update;')
        end
        if get_items.equipment.hands == 0 and player.status ~= 'Event' then
           windower.chat.input('//gs c update;')
        end
        if get_items.equipment.feet == 0 and player.status ~= 'Event' then
           windower.chat.input('//gs c update;')
        end
        if get_items.equipment.head == 0 and player.status ~= 'Event' then
           windower.chat.input('//gs c update;')
        end
        nextPing = os.clock()
    end
end)