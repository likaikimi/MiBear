<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MiBear.Web.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="https://unpkg.com/vue"></script>
</head>
<body>
    <div id="app">
        {{message}}
    </div>
    <div id="app-2">
        <span v-bind:title="message">鼠标悬停几秒钟查看此处动态绑定的提示信息！
        </span>
    </div>
    <div id="app-3">
        <p v-if="seen">现在你看到我了</p>
    </div>
    <div id="app-4">
        <ol>
            <li v-for="todo in todos">{{todo.text}}
            </li>
        </ol>
    </div>
    <div id="app-5">
        <p>{{message}}</p>
        <button v-on:click="reverseMessage">逆转消息</button>
    </div>
    <div id="app-6">
        <p>{{message}}</p>
        <input v-model="message" />
    </div>

    <script>
        var app = new Vue({
            el: '#app',
            data: {
                message: 'Hello vue!'
            }
        })

        var app2 = new Vue({
            el: '#app-2',
            data: {
                message: '页面加载于 ' + new Date()
            }
        })

        var app3 = new Vue({
            el: '#app-3',
            data: {
                seen: true
            }
        })

        var app4 = new Vue({
            el: "#app-4",
            data: {
                todos: [
                    { text: '学习 javascript' },
                    { text: '学习 Vue' },
                    { text: '整个牛项目' }
                ]
            }
        })

        var app5 = new Vue({
            el: '#app-5',
            data: { message: 'Hello Vue.js' },
            methods: {
                reverseMessage: function () {
                    this.message = this.message.split('').reverse().join('')
                }
            }
        })

        var app6 = new Vue({
            el: '#app-6',
            data: {
                message: 'Hello Vue!'
            }
        })
    </script>
</body>
</html>
