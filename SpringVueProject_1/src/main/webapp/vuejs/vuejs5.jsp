<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<div class="container" id=app1>
    <div class="row">
		<div class="col-sm-7">
			<table class="table">
				<tr>
					<th class="text-center">순위</th>
					<th class="text-center"></th>
					<th class="text-center">영화명</th>
					<th class="text-center">감독</th>
					<th class="text-center">장르</th>
				</tr>
				<tr v-for="vo in movie_list" v-on:click="detail(vo)">
					<td class="text-center">{{vo.rank}}</td>
					<td class="text-center">
						<img :src="'https://www.kobis.or.kr'+vo.thumbUrl" style="width: 30px;height: 30px">
					</td>
					<td class="text-center">{{vo.movieNm}}</td>
					<td class="text-center">{{vo.director}}</td>
					<td class="text-center">{{vo.genre}}</td>
				</tr>
			</table>
		</div>
		<div class="col-sm-5" v-if="isShow">
			<table class="table">
				<tr>
					<td width="30%" class="text-center" rowspan="7">
					<img :src="'https://www.kobis.or.kr'+movie_detail.thumbUrl" style="width: 100%;height: 100%">
					</td>
					<td colspan="2">
					<h3>{{movie_detail.movieNm}}</h3>
					</td>
				</tr>
				<tr>
					<td width=20%>감독</td>
					<td width=20%>{{movie_detail.director}}</td>
				</tr>
				<tr>
					<td width=20%>장르</td>
					<td width=20%>{{movie_detail.genre}}</td>
				</tr>
				<tr>
					<td width=20%>등급</td>
					<td width=20%>{{movie_detail.WatchGradeNm}}</td>
				</tr>
				<tr>
					<td width=20%>국가</td>
					<td width=20%>{{movie_detail.repNationCd}}</td>
				</tr>
				<tr>
					<td width=20%>순위</td>
					<td width=20%>{{movie_detail.rank}}</td>
				</tr>
				<tr>
					<td width=20%>상태</td>
					<td width=20%>{{movie_detail.moviePrdStat}}</td>
				</tr>
			</table>
		</div>
    </div>
</div>
<script src="movie.js"></script>
</body>
</html>