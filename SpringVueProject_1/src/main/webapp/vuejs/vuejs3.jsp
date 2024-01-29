<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://unpkg.com/vue@3"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.row {
  margin: 0px auto;
  width: 100%;
}
.container{
margin-top: 50px]}
</style>
</head>
<body>
<div class="container" id=app1>
    <div class="row">
        <h3 class="text-center">{{msg}}</h3>
    </div>
</div>
<div class="container" id=app2>
    <div class="row">
        <h3 class="text-center">{{msg}}</h3>
    </div>
</div>
<script>
// Vue 객체 생성과 마운트
let app1 = Vue.createApp({
    data() {
        return {
            msg: 'Hello Vue(app1)'
        };
    },
    methods: {

    }
}).mount('#app1');

let app2 = Vue.createApp({
	data() {
		return{
			msg: 'Hello Vue(app2)'
		}
	}
}).mount('#app2'); 

// 특정 DOM 요소에 마운트
const mountedApp = app.mount('.container');
</script>
</body>
</html>
