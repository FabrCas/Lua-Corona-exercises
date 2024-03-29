-- Generated by Level Director X v1.1.0 on lun set 16 16:00:18 2019 --
require("lib.LD_HelperX")
local M={}
-----------------------------------
function M:loadAssets()
-----------------------------------
	local assets={}
	assets.spriteSheetData={}
	assets['cannon ball_0']={file ='cannon ball.png',name='cannon ball_0',class='',aX=0.5,aY=0.5,width=276,height=278,frame=0,spriteSheetName='cannon ball',frameCount=1,
		 }
	assets['131340583-267f9f6d-ba15-42f2-968c-f0c52eb35679_0']={file ='131340583-267f9f6d-ba15-42f2-968c-f0c52eb35679.jpg',name='131340583-267f9f6d-ba15-42f2-968c-f0c52eb35679_0',class='',aX=0.5,aY=0.5,width=600,height=402,frame=0,spriteSheetName='131340583-267f9f6d-ba15-42f2-968c-f0c52eb35679',frameCount=1,
		 }
	return assets
end -- loadAssets 

------------------------------------------
function M:createLevel(LD_Helper_Instance)
------------------------------------------
	local instance=LD_Helper_Instance
	local objProps={}
	local level={}
    local obj=nil
	local k=0
	local objects = nil 
	if (instance.viewGroup == nil) then
		level.view=display.newGroup() 
	else
		level.view=instance.viewGroup
	end
	level.view.anchorChildren =false 
	display.setDefault( 'background',102/255,102/255,102/255,255/255)
	display.setDefault( "anchorX",0.5 )
	display.setDefault( "anchorY",0.5 )	
	display.setDrawMode("wireframe",false)
	level.name='livelloProva2' 
	-- Load Assets
	level.assets=self:loadAssets()
	-- Physics properties
	physics.setGravity(0,9.8) 
	physics.setDrawMode('normal')
	physics.setPositionIterations(8)	
	physics.setVelocityIterations(3)	
	level.parallaxEnabled=false
	-- Layers --
	level.layers={} 
	---- Layer 1 ------------------------------------------------------------------------------------
	level.layers['Layer 1']={} 
	level.layers['Layer 1'].view=display.newGroup() 
	level.layers['Layer 1'].name='Layer 1' 
	if (level.parallaxEnabled) then
		level.layers['Layer 1'].speed={x=0,y=0}
		level.layers['Layer 1'].repeated=false
		level.layers['Layer 1'].cullingMethod=0
	else
		level.layers['Layer 1'].cullingMethod=0 
	end
	level.layers['Layer 1'].objects={} 
	objects = {
	{name='131340583-267f9f6d-ba15-42f2-968c-f0c52eb35679_0',objType='LDImage',class='',width=320,height=352,x=160,y=240,xScale=0.533333*1,yScale=0.875622*1,assetName='131340583-267f9f6d-ba15-42f2-968c-f0c52eb35679_0',
		userProps = {},
		},
	{name='cannon ball_0',objType='LDImage',class='',width=320,height=64,x=160,y=32,xScale=1.15942*1,yScale=0.230216*1,assetName='cannon ball_0',
		userProps = {},
		},
	{name='cannon ball_3',objType='LDImage',class='',width=320,height=64,x=160,y=448,xScale=1.15942*1,yScale=0.230216*1,assetName='cannon ball_0',
		userProps = {},
		},
	}
	-- add objects to layer
	for k, objProps in pairs (objects) do
		obj = instance:createObject(level.layers['Layer 1'], objProps ,level.assets)
		if (obj and objProps.userProps) then
			obj.property = {}
			for u, userProp in pairs (objProps.userProps) do
				obj.property[userProp.name] = userProp.value 
			end 
		end 
	end
	instance:insertLayer(level,level.layers['Layer 1'])
	--level.ldVersion=1.1.0	-- Level Director Version
	-- Parallax (after layers)
	level.canvasWidth=320
	level.canvasHeight=480
	if level.parallaxEnabled then
		level.parallaxInfinite=false
		level.parallaxDamping=1
		instance:createParallax(level)
	end
	return level
end -- createLevel
return M

