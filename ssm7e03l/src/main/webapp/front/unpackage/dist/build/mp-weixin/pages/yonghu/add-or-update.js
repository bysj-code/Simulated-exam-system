(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/yonghu/add-or-update"],{"31e4":function(e,n,t){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=u(t("a34a"));function u(e){return e&&e.__esModule?e:{default:e}}function i(e,n,t,r,u,i,a){try{var o=e[i](a),c=o.value}catch(s){return void t(s)}o.done?n(c):Promise.resolve(c).then(r,u)}function a(e){return function(){var n=this,t=arguments;return new Promise((function(r,u){var a=e.apply(n,t);function o(e){i(a,r,u,o,c,"next",e)}function c(e){i(a,r,u,o,c,"throw",e)}o(void 0)}))}}var o=function(){Promise.all([t.e("common/vendor"),t.e("components/w-picker/w-picker")]).then(function(){return resolve(t("0096"))}.bind(null,t)).catch(t.oe)},c={data:function(){return{ruleForm:{yonghuming:"",mima:"",xingming:"",xingbie:"",touxiang:"",shouji:"",youxiang:""},xingbieOptions:[],xingbieIndex:0,user:{}}},components:{wPicker:o},computed:{},onLoad:function(n){var t=this;return a(r.default.mark((function u(){var i,a,o,c;return r.default.wrap((function(u){while(1)switch(u.prev=u.next){case 0:return i=e.getStorageSync("nowTable"),u.next=3,t.$api.session(i);case 3:if(a=u.sent,t.user=a.data,t.xingbieOptions="男,女".split(","),t.ruleForm.userid=e.getStorageSync("userid"),n.refid&&(t.ruleForm.refid=n.refid),!n.id){u.next=14;break}return t.ruleForm.id=n.id,u.next=12,t.$api.info("yonghu",t.ruleForm.id);case 12:a=u.sent,t.ruleForm=a.data;case 14:if(!n.cross){u.next=42;break}o=e.getStorageSync("crossObj"),u.t0=r.default.keys(o);case 17:if((u.t1=u.t0()).done){u.next=42;break}if(c=u.t1.value,"yonghuming"!=c){u.next=22;break}return t.ruleForm.yonghuming=o[c],u.abrupt("continue",17);case 22:if("mima"!=c){u.next=25;break}return t.ruleForm.mima=o[c],u.abrupt("continue",17);case 25:if("xingming"!=c){u.next=28;break}return t.ruleForm.xingming=o[c],u.abrupt("continue",17);case 28:if("xingbie"!=c){u.next=31;break}return t.ruleForm.xingbie=o[c],u.abrupt("continue",17);case 31:if("touxiang"!=c){u.next=34;break}return t.ruleForm.touxiang=o[c],u.abrupt("continue",17);case 34:if("shouji"!=c){u.next=37;break}return t.ruleForm.shouji=o[c],u.abrupt("continue",17);case 37:if("youxiang"!=c){u.next=40;break}return t.ruleForm.youxiang=o[c],u.abrupt("continue",17);case 40:u.next=17;break;case 42:t.styleChange();case 43:case"end":return u.stop()}}),u)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},xingbieChange:function(e){this.xingbieIndex=e.target.value,this.ruleForm.xingbie=this.xingbieOptions[this.xingbieIndex]},touxiangTap:function(){var e=this;this.$api.upload((function(n){e.ruleForm.touxiang=e.$base.url+"upload/"+n.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=this;return a(r.default.mark((function n(){return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(e.ruleForm.yonghuming){n.next=3;break}return e.$utils.msg("用户名不能为空"),n.abrupt("return");case 3:if(e.ruleForm.mima){n.next=6;break}return e.$utils.msg("密码不能为空"),n.abrupt("return");case 6:if(e.ruleForm.xingming){n.next=9;break}return e.$utils.msg("姓名不能为空"),n.abrupt("return");case 9:if(!e.ruleForm.youxiang||e.$validate.isEmail(e.ruleForm.youxiang)){n.next=12;break}return e.$utils.msg("邮箱应输入邮件格式"),n.abrupt("return");case 12:if(!e.ruleForm.id){n.next=17;break}return n.next=15,e.$api.update("yonghu",e.ruleForm);case 15:n.next=19;break;case 17:return n.next=19,e.$api.add("yonghu",e.ruleForm);case 19:e.$utils.msgBack("提交成功");case 20:case"end":return n.stop()}}),n)})))()},optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var n=new Date,t=n.getFullYear(),r=n.getMonth()+1,u=n.getDate();return"start"===e?t-=60:"end"===e&&(t+=2),r=r>9?r:"0"+r,u=u>9?u:"0"+u,"".concat(t,"-").concat(r,"-").concat(u)},toggleTab:function(e){this.$refs[e].show()}}};n.default=c}).call(this,t("543d")["default"])},"33a6":function(e,n,t){"use strict";(function(e){t("b497");r(t("66fd"));var n=r(t("f109"));function r(e){return e&&e.__esModule?e:{default:e}}e(n.default)}).call(this,t("543d")["createPage"])},"91c6":function(e,n,t){"use strict";var r;t.d(n,"b",(function(){return u})),t.d(n,"c",(function(){return i})),t.d(n,"a",(function(){return r}));var u=function(){var e=this,n=e.$createElement;e._self._c},i=[]},"9f5a":function(e,n,t){"use strict";var r=t("ae6e"),u=t.n(r);u.a},ae6e:function(e,n,t){},ec76:function(e,n,t){"use strict";t.r(n);var r=t("31e4"),u=t.n(r);for(var i in r)"default"!==i&&function(e){t.d(n,e,(function(){return r[e]}))}(i);n["default"]=u.a},f109:function(e,n,t){"use strict";t.r(n);var r=t("91c6"),u=t("ec76");for(var i in u)"default"!==i&&function(e){t.d(n,e,(function(){return u[e]}))}(i);t("9f5a");var a,o=t("f0c5"),c=Object(o["a"])(u["default"],r["b"],r["c"],!1,null,"43f08be4",null,!1,r["a"],a);n["default"]=c.exports}},[["33a6","common/runtime","common/vendor"]]]);