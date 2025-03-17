
var projectName = '少儿编程教育网站系统';
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
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

{
	name: '我的收藏',
	url: '../storeup/list.jsp'
}
]


var indexNav = [

{
	name: '热门资讯',
	url: './pages/remenzixun/list.jsp'
}, 
{
	name: '课程信息',
	url: './pages/kechengxinxi/list.jsp'
}, 
{
	name: '成果展示',
	url: './pages/chengguozhanshi/list.jsp'
}, 
{
	name: '学习资料',
	url: './pages/xuexiziliao/list.jsp'
}, 

{
	name: '论坛信息',
	url: './pages/forum/list.jsp'
}, 
]

var adminurl =  "http://localhost:8080/jspmd88x4/index.jsp";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"课程类型","menuJump":"列表","tableName":"kechengleixing"}],"menu":"课程类型管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"热门资讯","menuJump":"列表","tableName":"remenzixun"}],"menu":"热门资讯管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"课程信息","menuJump":"列表","tableName":"kechengxinxi"}],"menu":"课程信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"报名信息","menuJump":"列表","tableName":"baomingxinxi"}],"menu":"报名信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"成果展示","menuJump":"列表","tableName":"chengguozhanshi"}],"menu":"成果展示管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学习资料","menuJump":"列表","tableName":"xuexiziliao"}],"menu":"学习资料管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"论坛管理","tableName":"luntanguanli"}],"menu":"论坛管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"客服管理","tableName":"kefuguanli"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"lunbotuguanli"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"热门资讯列表","menuJump":"列表","tableName":"remenzixun"}],"menu":"热门资讯模块"},{"child":[{"buttons":["查看","报名"],"menu":"课程信息列表","menuJump":"列表","tableName":"kechengxinxi"}],"menu":"课程信息模块"},{"child":[{"buttons":["查看"],"menu":"成果展示列表","menuJump":"列表","tableName":"chengguozhanshi"}],"menu":"成果展示模块"},{"child":[{"buttons":["查看"],"menu":"学习资料列表","menuJump":"列表","tableName":"xuexiziliao"}],"menu":"学习资料模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","修改","删除","支付"],"menu":"报名信息","menuJump":"列表","tableName":"baomingxinxi"}],"menu":"报名信息管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"热门资讯列表","menuJump":"列表","tableName":"remenzixun"}],"menu":"热门资讯模块"},{"child":[{"buttons":["查看","报名"],"menu":"课程信息列表","menuJump":"列表","tableName":"kechengxinxi"}],"menu":"课程信息模块"},{"child":[{"buttons":["查看"],"menu":"成果展示列表","menuJump":"列表","tableName":"chengguozhanshi"}],"menu":"成果展示模块"},{"child":[{"buttons":["查看"],"menu":"学习资料列表","menuJump":"列表","tableName":"xuexiziliao"}],"menu":"学习资料模块"}],"roleName":"用户","tableName":"yonghu"}]


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
