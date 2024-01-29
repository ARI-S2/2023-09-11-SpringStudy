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
margin-top: 50px
}
</style>
</head>
<body>
<div class="container">
    <div class="row">
		<table class="table">
			<tr>
				<th class="text-center">사번</th>
				<th class="text-center">이름</th>
				<th class="text-center">성별</th>
				<th class="text-center">부서</th>
				<th class="text-center">근무지</th>
			</tr>
			<tr v-for="vo in sawon" v-on-click=detail_data(vo)> 
				<th class="text-center" v-if="vo.loc=='서울'"></th>
				<th class="text-center" v-if="vo.loc=='서울'">{{vo.name}}</th>
				<th class="text-center" v-if="vo.loc=='서울'">{{vo.sex}}</th>
				<th class="text-center" v-if="vo.loc=='서울'">{{vo.dept}}</th>
				<th class="text-center" v-if="vo.loc=='서울'">{{vo.loc}}</th>
			</tr>
		</table>
    </div>
</div>
<script>
// Vue 객체 생성과 마운트
let app = Vue.createApp({
    data() {
        return {
        	sawon:[
        		{"sabun":1,"name":'홍길동',"sex":'남자',"dept":'개발부',"loc":'서울'},
        		{"sabun":2,"name":'심청이',"sex":'여자',"dept":'인사부',"loc":'경기'},
        		{"sabun":3,"name":'박문수',"sex":'남자',"dept":'개발부',"loc":'서울'},
        		{"sabun":4,"name":'이순신',"sex":'남자',"dept":'개발부',"loc":'서울'},
        		{"sabun":5,"name":'강감찬',"sex":'남자',"dept":'개발부',"loc":'서울'}
        	]
        };
    }
}).mount('.container');
// 특정 DOM 요소에 마운트
const mountedApp = app.mount('.container');
</script>
</body>
</html>
