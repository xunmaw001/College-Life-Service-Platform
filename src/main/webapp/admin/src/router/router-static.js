import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import adminexam from '@/views/modules/exampaperlist/exam'
    import news from '@/views/modules/news/list'
    import examfailrecord from '@/views/modules/examfailrecord/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import zixishi from '@/views/modules/zixishi/list'
    import examquestion from '@/views/modules/examquestion/list'
    import shebeibaoxiu from '@/views/modules/shebeibaoxiu/list'
    import yuyuexinxi from '@/views/modules/yuyuexinxi/list'
    import weixiuxinxi from '@/views/modules/weixiuxinxi/list'
    import exampaper from '@/views/modules/exampaper/list'
    import forum from '@/views/modules/forum/list'
    import chat from '@/views/modules/chat/list'
    import weixiushifu from '@/views/modules/weixiushifu/list'
    import sushegonggao from '@/views/modules/sushegonggao/list'
    import exampaperlist from '@/views/modules/exampaperlist/list'
    import config from '@/views/modules/config/list'
    import examrecord from '@/views/modules/examrecord/list'
    import weixiupingjia from '@/views/modules/weixiupingjia/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '校园公告',
        component: news
      }
          ,{
	path: '/examfailrecord',
        name: '错题本',
        component: examfailrecord
      }
          ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
          ,{
	path: '/zixishi',
        name: '自习室',
        component: zixishi
      }
          ,{
	path: '/examquestion',
        name: '试题管理',
        component: examquestion
      }
          ,{
	path: '/shebeibaoxiu',
        name: '设备报修',
        component: shebeibaoxiu
      }
          ,{
	path: '/yuyuexinxi',
        name: '预约信息',
        component: yuyuexinxi
      }
          ,{
	path: '/weixiuxinxi',
        name: '维修信息',
        component: weixiuxinxi
      }
          ,{
	path: '/exampaper',
        name: '试卷管理',
        component: exampaper
      }
          ,{
	path: '/forum',
        name: '论坛管理',
        component: forum
      }
          ,{
	path: '/chat',
        name: '在线沟通',
        component: chat
      }
          ,{
	path: '/weixiushifu',
        name: '维修师傅',
        component: weixiushifu
      }
          ,{
	path: '/sushegonggao',
        name: '宿舍公告',
        component: sushegonggao
      }
          ,{
	path: '/exampaperlist',
        name: '试卷列表',
        component: exampaperlist
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
          ,{
	path: '/examrecord',
        name: '考试记录',
        component: examrecord
      }
          ,{
	path: '/weixiupingjia',
        name: '维修评价',
        component: weixiupingjia
      }
        ]
  },
  {
    path: '/adminexam',
    name: 'adminexam',
    component: adminexam,
    meta: {icon:'', title:'adminexam'}
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
