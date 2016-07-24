{{define "navbar"}}
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<a class="navbar-brand" href="/">beeblog</a>
		<div>
			<ul class="nav navbar-nav">
				<li {{if .IsHome}}class="active"{{end}}><a href="/">首页</a></li>
				{{if .IsLogin}}
				<li {{if .IsCategory}}class="active"{{end}}><a href="/category">分类</a></li>
				<li {{if .IsTopic}}class="active"{{end}}><a href="/topic">文章</a></li>
				{{end}}
			</ul>
		</div>

		<div class="pull-right">
			<ul class="nav navbar-nav">
				{{if .IsLogin}}
				<li><a href="/login?exit=true">退出</a></li>
				{{else}}
				<li><a href="/login">登录</a></li>
				{{end}}
			</ul>
		</div>
	</div>
</div>
{{end}}