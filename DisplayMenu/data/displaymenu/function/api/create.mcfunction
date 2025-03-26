#> displaymenu:api/create
#
# Display menu を作成
#
# @input
#   storage displaymenu: input
#       MainHeight: float
#           メイン;DMの縦幅
#           初期値: 10
#
#       MainWidth: float
#           メイン;DMの横幅
#           初期値: 15
#
#       MainDisplayColor: string (HEX)
#           メイン;DMの色(16進数)
#           初期値: #acb3b7
#
#       MainDisplayOpacity: int (0~255)
#           メイン;DMの透過率
#           初期値: 0
#
#       BorderColor: string (HEX)
#           ボーダーの色(16進数)
#           初期値: #b8b8b8
#
#       BorderOpacity: int (0~255)
#           ボーダーの透過率
#           初期値: 50
#
#       Title: string
#           ウィンドウの名前
#           初期値: Display Menu
#
#       Icon: component
#           ウィンドウのアイコン
#           id: string
#               minecraftのアイテムID
#           component: component
#               コンポーネント
#           view: str (front or isometric)
#           初期値: {id: "grass_block", component:{}, view:"isometric"}
#
#       Billboard: string (fixed, center)
#           メイン;DMのBillboardを設定(fixedかcenter)
#           初期値: fixed
#
#       HitBoxPosition: string (center, right, left, top, bottom, top_right, top_left, bottom_right, bottom_left)
#           ヒットボックスの位置をメイン;DMのどこにするかを指定
#           初期値: center
#
#       Borderless: bool
#           ボーダーレスウィンドウにするかどうか
#           初期値: false
#
#
#
#
#
#
#       CanMenuClose: bool
#           Display MenuをUIから閉じられるかどうか
#           初期値: true
#
#
#
#
#
#
#
#
# @api


# 一時的に入力を保存することで、次の引数確認でinputを変更しても影響がないようにする
data modify storage displaymenu:_ temp.input set from storage displaymenu: input

# HeightとWidthのどちらが小さいかを保存
data modify storage simple_float: x set from storage displaymenu:_ temp.input.MainHeight
data modify storage simple_float: y set from storage displaymenu:_ temp.input.MainWidth
function displaymenu:core/util/simple_float/min
execute if data storage simple_float: {result:"x"} run data modify storage displaymenu:_ temp.min_side set value "h"
execute if data storage simple_float: {result:"y"} run data modify storage displaymenu:_ temp.min_side set value "w"

# 入力された引数を確認
function displaymenu:core/create/is_arg_correct

# 親;DMを召喚
summon minecraft:text_display ~ ~ ~ {teleport_duration:1, transformation:[0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f],text:'{"text":"█","color":"white"}',background:0,alignment:"center",text_opacity:0,Tags:["display_menu","display_menu.parent"],  \
                                     Passengers:[{id:"minecraft:text_display",teleport_duration:1, transformation:[-1f,0f,-0f,0f,0f,1f,0f,0f,0f,0f,-1f,0f,0f,0f,0f,1f],text:'{"text":"█","color":"white"}',background:0,alignment:"center",text_opacity:0,Tags:["display_menu","display_menu.children","display_menu.behind"]}, {id:"item_display", teleport_duration:1, Tags:["display_menu","display_menu.children","display_menu.node","display_menu.border","display_menu.border.root"], \
                                     Passengers: [{id:"text_display",text:'{"text": "█", "color": "white"}',background:0,alignment:"center",text_opacity:0, teleport_duration:1, Tags:["display_menu","display_menu.children","display_menu.border","display_menu.border.front","display_menu.border.x","display_menu.border.wall","display_menu.border.k"], transformation:[1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]}, {id:"text_display",text:'{"text": "█", "color": "white"}',background:0,alignment:"center",text_opacity:0, teleport_duration:1, Tags:["display_menu","display_menu.children","display_menu.border","display_menu.border.right","display_menu.border.z","display_menu.border.wall","display_menu.border.k"], transformation:[0f,0f,1f,0f,0f,1f,0f,0f,-1f,0f,0f,0f,0f,0f,0f,1f]}, {id:"text_display",text:'{"text": "█", "color": "white"}',background:0,alignment:"center",text_opacity:0, teleport_duration:1, Tags:["display_menu","display_menu.children","display_menu.border","display_menu.border.left","display_menu.border.z","display_menu.border.wall","display_menu.border.k"], transformation:[0f,0f,-1f,0f,0f,1f,0f,0f,1f,0f,0f,0f,0f,0f,0f,1f]}, {id:"text_display",text:'{"text": "█", "color": "white"}',background:0,alignment:"center",text_opacity:0, teleport_duration:1, Tags:["display_menu","display_menu.children","display_menu.border","display_menu.border.back","display_menu.border.x","display_menu.border.wall","display_menu.border.k"], transformation:[-1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,-1f,0f,0f,0f,0f,1f]}, {id:"text_display",text:'{"text": "█", "color": "white"}',background:0,alignment:"center",text_opacity:0, teleport_duration:1, Tags:["display_menu","display_menu.children","display_menu.border","display_menu.border.top","display_menu.border.x","display_menu.border.z","display_menu.border.k"], transformation:[1f,0f,0f,0f,0f,0f,1f,0f,0f,-1f,0f,0f,0f,0f,0f,1f]}, {id:"text_display",text:'{"text": "█", "color": "white"}',background:0,alignment:"center",text_opacity:0, teleport_duration:1, Tags:["display_menu","display_menu.children","display_menu.border","display_menu.border.bottom","display_menu.border.x","display_menu.border.z","display_menu.border.k"], transformation:[1f,0f,0f,0f,0f,0f,-1f,0f,0f,1f,0f,0f,0f,0f,0f,1f] }, \
                                     {id:"item_display", Tags:["display_menu","display_menu.children","display_menu.border","display_menu.border.icon","display_menu.border.m"]}, {id:"text_display", alignment:"center", Tags:["display_menu","display_menu.children","display_menu.border","display_menu.border.title","display_menu.border.m"], view_range:0},\
                                     ]}]}
                                

# キャッシュを作成
function displaymenu:core/create/cache

# メイン処理へ
execute positioned ~ ~ ~ as @e[type=text_display,limit=1,distance=..0.01] run function displaymenu:core/create/main with storage displaymenu:_ temp.input

# /summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:text_display",text:"{\"text\":\"Enter Text\",\"color\":\"#FFFFFF\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:-16777216,alignment:"center",line_width:210,default_background:false,transformation:[-1f,0f,-0f,0f,0f,1f,0f,0f,0f,0f,-1f,0f,0f,0f,0f,1f]}]}