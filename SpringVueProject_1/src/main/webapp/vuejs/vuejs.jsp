<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/vue@3"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<h3 class="text-center">{{msg}}</h3>
	</div>
</div>
<script>
// Vue 객체 생성과 마운트
const app = Vue.createApp({
	data() {
		// 멤버변수 설정
		return {
			msg: 'Hello Vue3!!'
		};
	}
});

// 특정 DOM 요소에 마운트
const mountedApp = app.mount('.container');
</script>
</body>
</html>
