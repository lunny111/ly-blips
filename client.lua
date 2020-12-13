local blips = {
  {title="Market",colour=2, id=52, x= 25.8929, y= -1346.71, z = 28.597},
  {title="Market",colour=2, id=52, x= -48.1829, y= -1756.99, z = 28.500},
  {title="Market",colour=2, id=52, x= -707.769, y= -913.886, z = 18.315},
  {title="Market",colour=2, id=52, x= 1960.89, y= 3741.38, z = 32.34},
  {title="Market",colour=2, id=52, x= 2678.28, y= 3280.92, z = 55.24},
  {title="Market",colour=2, id=52, x= 1163.24, y= -323.212, z = 68.3051},
  {title="Market",colour=2, id=52, x= 374.225, y= 326.717, z = 102.800},
  {title="Tekel",colour=2, id=79, x= -1223.69, y= -907.031, z = 11.426},
  {title="Tekel",colour=2, id=79, x= -1487.15, y= -380.113, z = 39.2634},
  {title="Tekel",colour=2, id=79, x= -2968.44, y= 391.29, z = 14.2},
  {title="Tekel",colour=2, id=79, x= 1165.36, y= 2709.07, z = 37.2},
  {title="Tekel",colour=2, id=79, x= -2968.44, y= 391.29, z = 14.2},
  {title="Tekel",colour=2, id=79, x= 1165.36, y= 2709.07, z = 37.2},
  }
  
        local x = false
  RegisterCommand('blipac',function()
    x = not x
      for _, info in pairs(blips) do
        if x then
          info.blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
          SetBlipSprite(info.blip, info.id)
          SetBlipDisplay(info.blip, 4)
          SetBlipScale(info.blip, 0.5)
          SetBlipColour(info.blip, info.colour)
          SetBlipAsShortRange(info.blip, true)
          BeginTextCommandSetBlipName("STRING")
          AddTextComponentString(info.title)
          EndTextCommandSetBlipName(info.blip)
        else
          RemoveBlip(info.blip)
      end
    end
  end)