{-
	content:
	1. list
	2. Range
	3. 由条件生成集合
	4. tuple


-}






{-
	list中元素必须同类型
	字符串也是一个list
	list中的元素可以是list,但仍要求所有list类型相同
-}


--list定义
aa = [2,3,5,66,43]
bb = "asdedf"
cc = ['a','s','d','e','d','f']


--增
-------------------------------------------------------

--合并两个list
dd = [1,2,3] ++ [3,4,5,88]
ee = "aswe" ++ "hjhj"
ff = ['w','f','z'] ++ "asas"

--在头部插入一个元素
gg = 3:[1,2,3]
hh = 3:aa
ii = 's':ee
jj = 2:4:8:[22,33,44] --实际为多次调用头部插入，这是一个语法糖



--查
-------------------------------------------------------
--用!!来进行下标查询，下标也是从0开始，有越界检查，超出范围会有错误警告
kk = [1,2,3,4,6]!!0
ll = aa!!2
mm = bb!!5



--操作
-------------------------------------------------------
--下面四个要求list不为空
nn = head [1,2,3,4,5]	--nn=1
oo = tail [1,2,3,4,5]	--oo=[2,3,4,5]
pp = last [1,2,3,4,5]	--pp=5
qq = init [1,2,3,4,5]	--qq=[1,2,3,4]

--返回长度
rr = length [1,2,3,1,2] --rr=5

--判断是否为空
ss = null [1,2,3]	--ss=False
tt = null []		--tt=True

--翻转
uu = reverse [1,2,3,4]		--uu=[4,3,2,1]

--返回前n个元素:take n [....]
--如果n大于list长度,只能得到原list
vv = take 3 [1,2,3,4,5,6]	--vv=[1,2,3]
ww = take 0 [1,2,3,4,5,6]	--ww=[]

--删除前n个元素:drop n [....]
--如果n大于list长度,则得到[]
xx = drop 3 [1,2,3,4,5]		--xx=[4,5]
yy = drop 100 [1,2,3,4,5]	--yy=[]

--最大，最小，求和，求积
--求和求积不能用于字符list
aaa = maximum [1,2,3,4]		--aaa=4
bbb = minimum [1,2,3,4]		--bbb=1
ccc = sum [1,2,3,4]			--ccc=10
ddd = product [1,2,3,4]		--ddd=24

--判断是否包含一元素
eee = elem 3 [1,2,3,4,5]	--eee=True
fff = elem 'k' "qwas"		--fff=False

--获得长度为n的元素都为e的list
abc = replicate 5 'a'		--abc="aaaaa"


--Range
---------------------------------------------------------
--尽量不对浮点数使用range，可能会不精确

--默认步长1
ggg = [1..10]  		--ggg=[1,2,3,4,5,6,7,8,9,10]
iii = ['b'..'f']	---iii=['b','c','d','e','f']

--指定步长
hhh = [3,6..14]		--hhh=[3,6,9,12]
jjj = ['b','d'..'h']--jjj=['b','d','f','h']

--无限list
--由于Haskell惰性求值，无限list的值用多少求多少

--way1
kkk = [2,4..]		--kkk=[2,4,6,8,......]
lll = take 15 kkk	--lll取kkk前15个值

--way2
--用cycle无限重复list
mmm = cycle [1,2,3]	--mmm=[1,2,3,1,2,3,1,2,3,.......]
nnn = take 15 mmm


--list comprehension(由条件生成集合)
---------------------------------------------------------
ooo = [2*x|x<-[1..10]]		--ooo=[2,4,6,8,.....,20]
ppp = [x|x<-[1..100], (mod x 9)==0]	--ppp=[9,18..99]
qqq = [if x<5 then "hihi" else "haha"|x<-[1..15],x/=10,x/=13]

rrr = [x*y+2|x<-[1,2],y<-[10,20,30,40]]
		--可以有两个变量会分别为每两个取值，所以结果共8个值





--tuple
--------------------------------------------------------
--------------------------------------------------------
--与list不同,tuple是一个类型而不是一个集合，每种长度的tuple都是单独的类型
--tuple的元素也可以是不同的类型，长度相同但对应元素类型不同的tuple也是不同类型的
--即相同类型的tuple必须有相同的长度，且对应元素类型相同
--tuple中还可以放tuple，也可以放list
--vva=[(1,2),(2,3),(3,4,5)]就不行，因为list要求类型相同，而(3,4,5)与另两个类型不同
--tuple长度不可变
--tuple长度至少为2,长度为一时会变成普通类型的数据


--tuple定义
ab = (1,2,3)
ac = (1,2,'s')
ad = ((1,2),"dede",(1,22,3,'s'),[21,32])

ae = zip [1,2,3] ["I","am","wll"]	--zip用两个list配对生成一个包含二元tuple的list
									--ae=[(1,"I"),(2,"am"),(3,"wll")]
									--两list长度不同时，以较短的那个为准


--查

--二元tuple的查询函数
af = fst (1,"sw")		--af=1
ag = snd (1,"sw")		--ag="sw"




