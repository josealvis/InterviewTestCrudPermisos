(function(e){function t(t){for(var s,n,i=t[0],l=t[1],c=t[2],p=0,f=[];p<i.length;p++)n=i[p],Object.prototype.hasOwnProperty.call(r,n)&&r[n]&&f.push(r[n][0]),r[n]=0;for(s in l)Object.prototype.hasOwnProperty.call(l,s)&&(e[s]=l[s]);u&&u(t);while(f.length)f.shift()();return o.push.apply(o,c||[]),a()}function a(){for(var e,t=0;t<o.length;t++){for(var a=o[t],s=!0,i=1;i<a.length;i++){var l=a[i];0!==r[l]&&(s=!1)}s&&(o.splice(t--,1),e=n(n.s=a[0]))}return e}var s={},r={app:0},o=[];function n(t){if(s[t])return s[t].exports;var a=s[t]={i:t,l:!1,exports:{}};return e[t].call(a.exports,a,a.exports,n),a.l=!0,a.exports}n.m=e,n.c=s,n.d=function(e,t,a){n.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:a})},n.r=function(e){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},n.t=function(e,t){if(1&t&&(e=n(e)),8&t)return e;if(4&t&&"object"===typeof e&&e&&e.__esModule)return e;var a=Object.create(null);if(n.r(a),Object.defineProperty(a,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var s in e)n.d(a,s,function(t){return e[t]}.bind(null,s));return a},n.n=function(e){var t=e&&e.__esModule?function(){return e["default"]}:function(){return e};return n.d(t,"a",t),t},n.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},n.p="/";var i=window["webpackJsonp"]=window["webpackJsonp"]||[],l=i.push.bind(i);i.push=t,i=i.slice();for(var c=0;c<i.length;c++)t(i[c]);var u=l;o.push([0,"chunk-vendors"]),a()})({0:function(e,t,a){e.exports=a("56d7")},"034f":function(e,t,a){"use strict";var s=a("85ec"),r=a.n(s);r.a},2778:function(e,t,a){"use strict";var s=a("34a2"),r=a.n(s);r.a},"34a2":function(e,t,a){},"56d7":function(e,t,a){"use strict";a.r(t);a("e260"),a("e6cf"),a("cca6"),a("a79d");var s=a("a026"),r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{attrs:{id:"app"}},[a("p",[a("router-link",{attrs:{to:"/requestList"}},[e._v("List of request time off")]),a("router-link",{attrs:{to:"/edit"}},[e._v("Create new request")])],1),a("router-view")],1)},o=[],n={name:"App",components:{}},i=n,l=(a("034f"),a("2877")),c=Object(l["a"])(i,r,o,!1,null,null,null),u=c.exports,p=a("4380"),f=a("8c4f"),m=a("5f5b"),d=a("b1e0"),v=(a("f9e3"),a("2dd8"),function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"container-fluid"},[e._m(0),e._m(1),a("table",{staticClass:"table"},[e._m(2),a("tbody",e._l(e.timeOffRequestList,(function(t,s){return a("tr",{key:t.Id},[a("th",{attrs:{scope:"row"}},[e._v(e._s(s+1))]),a("td",[e._v(e._s(t.employeeName))]),a("td",[e._v(e._s(t.employeeLastname))]),a("td",[e._v(e._s(t.type.name))]),a("td",[e._v(e._s(e._f("dateFormat")(new Date(t.requestDate),"YYYY/MM/DD")))]),a("td",[e._v(e._s(e._f("dateFormat")(new Date(t.requestDate),"YYYY/MM/DD")))])])})),0)])])}),h=[function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"container"},[a("h1",{staticClass:"display-4"},[e._v("Fluid jumbotron")]),a("p",{staticClass:"lead"},[e._v("This is a modified jumbotron that occupies the entire horizontal space of its parent.")])])},function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"row"},[a("div",{staticClass:"col-sm"},[e._v(" One of three columns ")]),a("div",{staticClass:"col-sm"},[e._v(" One of three columns ")]),a("div",{staticClass:"col-sm"},[a("button",{staticClass:"btn btn-primary",attrs:{type:"submit"}},[e._v("Add Time off request")])])])},function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("thead",[a("tr",[a("th",{attrs:{scope:"col"}},[e._v("#")]),a("th",{attrs:{scope:"col"}},[e._v("Employee Name")]),a("th",{attrs:{scope:"col"}},[e._v("Employee LastName")]),a("th",{attrs:{scope:"col"}},[e._v("Type of Time Off")]),a("th",{attrs:{scope:"col"}},[e._v("Start Date")]),a("th",{attrs:{scope:"col"}},[e._v("End Date")]),a("th",{attrs:{scope:"col"}},[e._v("Action")])])])}],_=a("bc3a"),y=a.n(_),b={name:"Home",data:function(){return{timeOffRequestList:[],errors:[]}},created:function(){var e=this;y.a.get("https://localhost:44399/test").then((function(t){console.log(t.data),e.timeOffRequestList=t.data})).catch((function(t){e.errors.push(t)}))}},g=b,C=(a("2778"),Object(l["a"])(g,v,h,!1,null,"b4ff507a",null)),N=C.exports,O=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"container-fluid"},[a("h1",{staticClass:"display-4"},[e._v("Fluid jumbotron")]),a("form",{on:{submit:e.checkForm}},[e.errors.length?a("div",{staticClass:"alert alert-danger",attrs:{role:"alert"}},[a("b",[e._v("Please correct the following error(s):")]),a("ul",e._l(e.errors,(function(t,s){return a("li",{key:s},[e._v(e._s(t))])})),0)]):e._e(),a("div",{staticClass:"form-group"},[a("label",{attrs:{for:"name"}},[e._v("Employee Name")]),a("input",{directives:[{name:"model",rawName:"v-model",value:e.firstName,expression:"firstName"}],staticClass:"form-control",attrs:{id:"employeeFirstName",type:"text",name:"employeeFirstName"},domProps:{value:e.firstName},on:{input:function(t){t.target.composing||(e.firstName=t.target.value)}}}),a("small",{staticClass:"form-text text-muted",attrs:{id:"name"}},[e._v("We'll never share your email with anyone else.")])]),a("div",{staticClass:"form-group"},[a("label",{attrs:{for:"name"}},[e._v("Employee Lastname")]),a("input",{directives:[{name:"model",rawName:"v-model",value:e.lastName,expression:"lastName"}],staticClass:"form-control",attrs:{id:"employeeFirstName",type:"text",name:"employeeLastName"},domProps:{value:e.lastName},on:{input:function(t){t.target.composing||(e.lastName=t.target.value)}}}),a("small",{staticClass:"form-text text-muted",attrs:{id:"name"}},[e._v("We'll never share your email with anyone else.")])]),a("div",{staticClass:"input-group mb-3"},[e._m(0),a("select",{directives:[{name:"model",rawName:"v-model",value:e.selectedType,expression:"selectedType"}],staticClass:"custom-select",attrs:{id:"inputGroupSelect01"},on:{change:function(t){var a=Array.prototype.filter.call(t.target.options,(function(e){return e.selected})).map((function(e){var t="_value"in e?e._value:e.value;return t}));e.selectedType=t.target.multiple?a:a[0]}}},[a("option",{attrs:{disabled:"",value:""}},[e._v("Choose...")]),e._l(e.timeOffTypes,(function(t,s){return a("option",{key:s,domProps:{value:t.id}},[a("div",{on:{click:function(a){return e.console.log(t.id)}}},[e._v(e._s(t.name))])])}))],2)]),a("div",[a("label",{attrs:{for:"example-datepicker"}},[e._v("Choose a date")]),a("b-form-datepicker",{staticClass:"mb-2",attrs:{id:"example-datepicker"},model:{value:e.requestDate,callback:function(t){e.requestDate=t},expression:"requestDate"}}),a("p",[e._v("Value: '"+e._s(e.requestDate)+"'")])],1),e._m(1),a("button",{staticClass:"btn btn-primary",attrs:{type:"button"},on:{click:e.checkForm}},[e._v("Submit")])]),e._v(" "+e._s(e.selectedType)+" ")])},k=[function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"input-group-prepend"},[a("label",{staticClass:"input-group-text",attrs:{for:"inputGroupSelect01"}},[e._v("Time Off Type")])])},function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"form-group form-check"},[a("input",{staticClass:"form-check-input",attrs:{type:"checkbox",id:"exampleCheck1"}}),a("label",{staticClass:"form-check-label",attrs:{for:"exampleCheck1"}},[e._v("Check me out")])])}],x={name:"Home",data:function(){return{timeOffTypes:[],errors:[],firstName:null,lastName:null,age:null,movie:null,selectedType:null,requestDate:null}},methods:{checkForm:function(e){this.firstName&&this.lastName&&this.selectedType&&this.requestDate?this.saveChanges():(this.errors=[],this.firstName||this.errors.push("Employee name required."),this.lastName||this.errors.push("Employee lastname required."),this.selectedType||this.errors.push("A time off type has to be selected."),this.requestDate||this.errors.push("Request date required."),e.preventDefault())},saveChanges:function(){console.log("ok"),y()({method:"post",url:"https://localhost:44399/TimeOffReques/Post/",data:{Id:0,EmployeeName:this.firstName,EmployeeLastname:this.lastName,Type:{id:this.selectedType},RequestDate:this.requestDate},headers:{"Content-Type":"application/json"}}).then((function(e){console.log(e)})).catch((function(e){console.log(e)}))}},created:function(){var e=this;y.a.get("https://localhost:44399/TimeOffType/GetAll/").then((function(t){e.timeOffTypes=t.data})).catch((function(t){e.errors.push(t)}))}},T=x,q=(a("f2bd"),Object(l["a"])(T,O,k,!1,null,"62c65e5a",null)),w=q.exports;s["default"].use(m["a"]),s["default"].use(d["a"]),s["default"].use(f["a"]),s["default"].use(p["a"]),s["default"].config.productionTip=!1;var D=[{path:"/requestList",component:N},{path:"/edit",component:w}],E=new f["a"]({routes:D});new s["default"]({router:E,render:function(e){return e(u)}}).$mount("#app")},"85ec":function(e,t,a){},a20d:function(e,t,a){},f2bd:function(e,t,a){"use strict";var s=a("a20d"),r=a.n(s);r.a}});
//# sourceMappingURL=app.9eda75ae.js.map