<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/vue@3"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
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
.images{
	cursor:pointer;
}
</style>
</head>
<body>
<div class="container" id=app>
    <div class="row">
		<div class="col-sm-8">
			<div class="col-md-3" v-for="vo in food_list">
				<div class="thumbnail">
			          <img :src="'https://www.menupan.com'+vo.poster" alt="Lights" style="width:100%" 
			          class="images" v-on:click="detail(vo.fno)">
			          <div class="caption">
			            <p></p>
			          </div>
			        </a>
			      </div>
		      </div>
		</div>
		<div class="col-sm-4" v-show="isShow">
			<table class="table">
				<tr>
					<td class="text-center" rowspan="7">
						<img :src="'https://www.menupan.com'+food_detail.poster" alt="Lights" style="width:100%">
					</td>
					<td colspan="2">
						<h3>{{food_detail.name}}&nbsp;<span style="color: orange">{{food_detail.score}}</span></h3>
				</tr>
			</table>
		</div>
	</div>
</div>
<script src="../js/food.js">
</script>
</body>
</html>