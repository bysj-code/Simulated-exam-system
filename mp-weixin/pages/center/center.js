(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/center/center"],{"1b07":function(t,n,e){},"4c00":function(t,n,e){"use strict";(function(t){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=a(e("a34a")),u=a(e("6c3c"));function a(t){return t&&t.__esModule?t:{default:t}}function c(t,n,e,r,u,a,c){try{var i=t[a](c),o=i.value}catch(s){return void e(s)}i.done?n(o):Promise.resolve(o).then(r,u)}function i(t){return function(){var n=this,e=arguments;return new Promise((function(r,u){var a=t.apply(n,e);function i(t){c(a,r,u,i,o,"next",t)}function o(t){c(a,r,u,i,o,"throw",t)}i(void 0)}))}}var o={data:function(){return{isH5Plus:!0,user:{},tableName:"",role:"",menuList:[]}},onLoad:function(){var n=i(r.default.mark((function n(){var e,a,c;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return this.role=t.getStorageSync("role"),e=t.getStorageSync("nowTable"),n.next=4,this.$api.session(e);case 4:a=n.sent,this.user=a.data,this.tableName=e,c=u.default.list(),this.menuList=c;case 9:case"end":return n.stop()}}),n,this)})));function e(){return n.apply(this,arguments)}return e}(),onShow:function(){var n=i(r.default.mark((function n(){var e,a,c;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return this.role=t.getStorageSync("role"),e=t.getStorageSync("nowTable"),n.next=4,this.$api.session(e);case 4:a=n.sent,this.user=a.data,this.tableName=e,c=u.default.list(),this.menuList=c;case 9:case"end":return n.stop()}}),n,this)})));function e(){return n.apply(this,arguments)}return e}(),methods:{onPageTap:function(n){t.navigateTo({url:n,fail:function(){t.switchTab({url:n})}})}}};n.default=o}).call(this,e("543d")["default"])},"4f9f":function(t,n,e){"use strict";var r,u=function(){var t=this,n=t.$createElement;t._self._c},a=[];e.d(n,"b",(function(){return u})),e.d(n,"c",(function(){return a})),e.d(n,"a",(function(){return r}))},5702:function(t,n,e){"use strict";e.r(n);var r=e("4f9f"),u=e("c1c6");for(var a in u)"default"!==a&&function(t){e.d(n,t,(function(){return u[t]}))}(a);e("c089");var c,i=e("f0c5"),o=Object(i["a"])(u["default"],r["b"],r["c"],!1,null,null,null,!1,r["a"],c);n["default"]=o.exports},5961:function(t,n,e){"use strict";(function(t){e("c85e"),e("921b");r(e("66fd"));var n=r(e("5702"));function r(t){return t&&t.__esModule?t:{default:t}}t(n.default)}).call(this,e("543d")["createPage"])},c089:function(t,n,e){"use strict";var r=e("1b07"),u=e.n(r);u.a},c1c6:function(t,n,e){"use strict";e.r(n);var r=e("4c00"),u=e.n(r);for(var a in r)"default"!==a&&function(t){e.d(n,t,(function(){return r[t]}))}(a);n["default"]=u.a}},[["5961","common/runtime","common/vendor"]]]);