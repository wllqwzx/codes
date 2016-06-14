{-
	content:
	1. 基本module的构建
	2. 分层module的构建
-}


module Mymodule.hs
(
	sphereVolume,
	sphereArea,
	cubeVolume,
	cubeArea
)where

sphereVolume :: Float -> Float
sphereVolume r = (4.0/3.0) * pi * (r^3)

sphereArea :: Folat -> Float
sphereArea r = 4 * pi * (r^2)

cubeVolume :: Float -> Float
cubeVolume s = s^3

cubeArea :: Float -> Float
cubeArea s = 6 * (s^2)


-- we can also define helper function which will not be
-- imported eg:
myhelper :: Float -> Float
myhelper x = x + x






{-
	module 也可以分层，类似于java
	eg: Data.List, Data.Map, ...
	
	1. 首先建立一个文件夹eg: Mymodules (首字母大写)
	2. 在 Mymodules中建立一些 .hs 文件的 module,
	   其名字要为 Mymodules.xxx.hs 的形式
	3. 之后就能用 import Mymodules.xxx 来引入这些分层的module了

-}




