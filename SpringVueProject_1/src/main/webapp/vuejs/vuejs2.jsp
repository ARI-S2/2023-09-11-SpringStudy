<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://unpkg.com/vue@3"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <input type="text" size="30" class="input-sm" v-model="msg"> 
        <h3 class="text-center">{{msg}}</h3>
    </div>
</div>
<script>
// Vue 객체 생성과 마운트
const app = Vue.createApp({
    data() {
        // 멤버변수 설정
        return {
            msg: ''
        };
    },
    beforeCreate() {
        console.log("Vue 객체 생성 전: beforeCreate() call");
    },
    created() {
        console.log("Vue 객체 생성 후: created() call");
    },
    beforeMount() {
        console.log("HTML과 데이터를 가상메모리에 올라가기 전: beforeMount() call");
    },
    mounted() {
        console.log("가상메모리에 HTML이 올라간 상태: mounted() call");
    },
    beforeUpdate() {
        console.log("변경 전: beforeUpdate() call");
    },
    updated() {
        console.log("변경 완료: updated() call");
    },
    beforeDestroy() {
        console.log("Vue 객체 메모리 해제 전: beforeDestroy() call");
    },
    destroyed() {
        console.log("Vue 객체 메모리 해제 완료: destroyed() call");
    },
    // 사용자 정의 메소드
    methods: {

    }
});

// 특정 DOM 요소에 마운트
const mountedApp = app.mount('.container');
</script>
</body>
</html>
