
var projectName = '高校生活服务平台';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.html'
},

{
	name: '考试记录',
	url: '../examrecord/list.html'
}, 
{
	name: '错题本',
	url: '../examrecord/wrong.html'
},
]


var indexNav = [

{
	name: '宿舍公告',
	url: './pages/sushegonggao/list.html'
}, 
{
	name: '自习室',
	url: './pages/zixishi/list.html'
}, 

{
	name: '论坛',
	url: './pages/forum/list.html'
}, 
{
	name: '试卷列表',
	url: './pages/exampaper/list.html'
}, 
{
	name: '校园公告',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/ssm2a90b/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"维修师傅","menuJump":"列表","tableName":"weixiushifu"}],"menu":"维修师傅管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"宿舍公告","menuJump":"列表","tableName":"sushegonggao"}],"menu":"宿舍公告管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"自习室","menuJump":"列表","tableName":"zixishi"}],"menu":"自习室管理"},{"child":[{"buttons":["查看","修改","删除","报表"],"menu":"预约信息","menuJump":"列表","tableName":"yuyuexinxi"}],"menu":"预约信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"设备报修","menuJump":"列表","tableName":"shebeibaoxiu"}],"menu":"设备报修管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"维修信息","menuJump":"列表","tableName":"weixiuxinxi"}],"menu":"维修信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"维修评价","menuJump":"列表","tableName":"weixiupingjia"}],"menu":"维修评价管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试卷管理","tableName":"exampaper"}],"menu":"试卷管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试题管理","tableName":"examquestion"}],"menu":"试题管理"},{"child":[{"buttons":["查看","删除"],"menu":"论坛管理","tableName":"forum"}],"menu":"论坛管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"校园公告","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"考试记录","tableName":"examrecord"},{"buttons":["新增","查看","修改","删除"],"menu":"错题本","tableName":"examfailrecord"},{"buttons":["新增","查看","修改","删除"],"menu":"试卷列表","tableName":"exampaperlist"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"宿舍公告列表","menuJump":"列表","tableName":"sushegonggao"}],"menu":"宿舍公告模块"},{"child":[{"buttons":["查看","预约"],"menu":"自习室列表","menuJump":"列表","tableName":"zixishi"}],"menu":"自习室模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"预约信息","menuJump":"列表","tableName":"yuyuexinxi"}],"menu":"预约信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"设备报修","menuJump":"列表","tableName":"shebeibaoxiu"}],"menu":"设备报修管理"},{"child":[{"buttons":["查看","支付","评价"],"menu":"维修信息","menuJump":"列表","tableName":"weixiuxinxi"}],"menu":"维修信息管理"},{"child":[{"buttons":["查看"],"menu":"维修评价","menuJump":"列表","tableName":"weixiupingjia"}],"menu":"维修评价管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"宿舍公告列表","menuJump":"列表","tableName":"sushegonggao"}],"menu":"宿舍公告模块"},{"child":[{"buttons":["查看","预约"],"menu":"自习室列表","menuJump":"列表","tableName":"zixishi"}],"menu":"自习室模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"buttons":["查看","维修"],"menu":"设备报修","menuJump":"列表","tableName":"shebeibaoxiu"}],"menu":"设备报修管理"},{"child":[{"buttons":["查看"],"menu":"维修信息","menuJump":"列表","tableName":"weixiuxinxi"}],"menu":"维修信息管理"},{"child":[{"buttons":["查看"],"menu":"维修评价","menuJump":"列表","tableName":"weixiupingjia"}],"menu":"维修评价管理"},{"child":[{"buttons":["查看","删除"],"menu":"在线沟通","tableName":"chat"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"宿舍公告列表","menuJump":"列表","tableName":"sushegonggao"}],"menu":"宿舍公告模块"},{"child":[{"buttons":["查看","预约"],"menu":"自习室列表","menuJump":"列表","tableName":"zixishi"}],"menu":"自习室模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"维修师傅","tableName":"weixiushifu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
