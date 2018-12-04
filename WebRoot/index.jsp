<%@page import="com.dqz.entity.ProductCategory"%>
<%@page import="com.dqz.entity.Turns"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  <title>Home</title>
  <link rel="shortcut icon" href="favicon.ico">
  <link href="css/style.css" media="screen" rel="stylesheet" type="text/css">
  <link href="css/grid.css" media="screen" rel="stylesheet" type="text/css">
  <script src="js/jquery-1.7.2.min.js" ></script>
  <script src="js/html5.js" ></script>
  <script src="js/jflow.plus.js" ></script>
  <script src="js/jquery.carouFredSel-5.2.2-packed.js"></script>
  <script>
	$(document).ready(function(){
	    $("#myController").jFlow({
			controller: ".control", // must be class, use . sign
			slideWrapper : "#jFlowSlider", // must be id, use # sign
			slides: "#slider",  // the div where all your sliding divs are nested in
			selectedWrapper: "jFlowSelected",  // just pure text, no sign
			width: "984px",  // this is the width for the content-slider
			height: "480px",  // this is the height for the content-slider
			duration: 400,  // time in miliseconds to transition one slide
			prev: ".slidprev", // must be class, use . sign
			next: ".slidnext", // must be class, use . sign
			auto: true
    });
  });
  </script>
  <script>
	$(function() {
	  $('#list_product').carouFredSel({
		prev: '#prev_c1',
		next: '#next_c1',
		auto: false
	  });
          $('#list_product2').carouFredSel({
		prev: '#prev_c2',
		next: '#next_c2',
		auto: false
	  });
	  $(window).resize();
	});
  </script>
  <script>
       $(document).ready(function(){
	      $("button").click(function(){
		     $(this).addClass('click')
	      });
       });
  </script>
</head>
<body>
  <div class="container_12">
    <div id="top">
     
    </div><!-- #top -->

    <div class="clear"></div>

    <header id="branding">
      <div class="grid_3">
        <hgroup>
          <h1 id="site_logo" ><a href="index.html" title=""><img src="images/2.jpg" alt="美丽音世界"/></a></h1>
          <h2 id="site_description">美丽音世界</h2>
        </hgroup>
      </div><!-- .grid_3 -->

      <div class="grid_3">
        <form class="search">
         
	</form>
      </div><!-- .grid_3 -->

      <div class="grid_6">
        <ul id="cart_nav">
          <li>
            <a class="cart_li" href="#">购物车<span>$0.00</span></a>
            <ul class="cart_cont">
              <li class="no_border"><p>最近添加的项目</p></li>
              <li>
                <a href="product_page.html" class="prev_cart"><div class="cart_vert"><img src="images/cart_img.png" alt="" title="" /></div></a>
                <div class="cont_cart">
                  <h4>Caldrea Linen and Room Spray</h4>
                  <div class="price">1 x $399.00</div>
                </div>
                <a title="close" class="close" href="#"></a>
                <div class="clear"></div>
              </li>
              
              <li>
                <a href="product_page.html" class="prev_cart"><div class="cart_vert"><img src="images/produkt_slid1.png" alt="" title="" /></div></a>
                <div class="cont_cart">
                  <h4>Caldrea Linen and Room Spray</h4>
                  <div class="price">1 x $399.00</div>
                </div>
                <a title="close" class="close" href="#"></a>
                <div class="clear"></div>
              </li>
	      <li class="no_border">
		<a href="shopping_cart.html" class="view_cart">查看购物车</a>
		<a href="checkout.html" class="checkout">结账</a>
	      </li>
            </ul>
          </li>
        </ul>
      <!--   https://192.168.1.250/svn/projects/1601/
               先更新再提交 -->

        <nav class="private">
          <ul>
            <li><a href="#">我的账户</a></li>
		<li class="separator">|</li>
            <li><a href="#">我的收藏</a></li>
		<li class="separator">|</li>
          </ul>
        </nav><!-- .private -->
      </div><!-- .grid_6 -->
    </header><!-- #branding -->
  </div><!-- .container_12 -->

  <div class="clear"></div>

  <div id="block_nav_primary">
    <div class="container_12">
      <div class="grid_12">
        <nav class="primary">
          <ul>
 <li class="curent"><a href="index.html">首页</a></li>
   <% List<ProductCategory> c=(List<ProductCategory>)request.getAttribute("cate");
    if(c==null||c.size()<=0){
    out.print("没有分类");
}
else{
for(int i=0;i<c.size();i++){
ProductCategory ca=c.get(i);
 %>
  <li><a href="catalog_grid.html"><%=ca.getC_name() %></a></li>
           <!--  <li><a href="catalog_grid.html">电钢琴</a></li>
            <li>
              <a href="catalog_grid.html">吉他</a></li>
            <li><a href="catalog_grid.html">二胡</a></li>
            <li><a href="catalog_grid.html">葫芦丝</a></li>
            <li><a href="catalog_grid.html">架子鼓 </a></li>
            <li><a href="catalog_grid.html">口琴</a></li> -->
	   
	  <% }}%>
	    <li> <a href="#">所有页面</a> <ul class="sub">
                <li><a href="index.html">首页</a></li>
                <li><a href="text_page.html">Typography and basic styles</a></li>
		<li><a href="catalog_grid.html">Catalog (grid view)</a></li>
		<li><a href="catalog_list.html">Catalog (list type view)</a></li>
		<li><a href="product_page.html">Product view</a></li>
		<li><a href="shopping_cart.html">Shoping cart</a></li>
		<li><a href="checkout.html">Proceed to checkout</a></li>
		<li><a href="compare.html">Products comparison</a></li>
		<li><a href="login.html">Login</a></li>
		<li><a href="contact_us.html">Contact us</a></li>
		<li><a href="404.html">404</a></li>
		<li><a href="blog.html">Blog posts</a></li>
		<li><a href="blog_post.html">Blog post view</a></li>
              </ul>
            </li>
          </ul>
        </nav><!-- .primary -->
      </div><!-- .grid_12 -->
    </div><!-- .container_12 -->
  </div><!-- .block_nav_primary -->

    
      

  <div class="clear"></div>
 <div class="container_12">
    <div class="grid_12">
        <div class="slidprev"><span>Prev</span></div>
        <div class="slidnext"><span>Next</span></div>
        
        <div id="slider">
<% List<Turns> turns=(List<Turns>)request.getAttribute("t");
if(turns==null||turns.size()<=0){
out.print("没有推荐信息");
}
else{
int xh=0;
for(int i=0;i<turns.size();i++){
Turns t=turns.get(i);
xh+=i;
 %>
<div id="slide<%=xh%>">

          <a href="pro?method=getAllByCid&cid=<%=t.getC_id() %>"> <img src="img1/<%=t.getPicurl()%>" alt="" title=""  width="1000" height="500" class="tt"/></a>
            <div class="slid_text">
              <h3 class="slid_title"><span><%=t.getTitle() %></span></h3>
            <%String[] a=t.getContents().split(",");
            
            for(int y=0;y<a.length;y++){%>
            
            <p><span><%=a[y]%></span></p>
           <%  }
             %>
            
              
         <!--      <p><span>which will helps you boost sales</span></p>
              <p><span>and receive good feedback from your clients.</span></p> -->
            </div>
  </div>
<% }}%>     
        </div><!-- .slider -->
        <div id="myController">
        <%
        for(int i=0;i<turns.size();i++){
         %>          <div class="control"><span><%=(i+1)%></span></div>
          <!-- <div class="control"><span>2</span></div>
          <div class="control"><span>3</span></div> -->
        
<%} %>
</div>
    </div><!-- .grid_12 -->
  </div><!-- .container_12 -->
  <div class="copyrights">Collect from <a href="http://www.mycodes.net/"  title="网站模板">网站模板</a></div>
  <div class="clear"></div>
  <section id="main" class="home">
    <div class="container_12">
      <div id="top_button">
        <div class="clear"></div>
      </div><!-- #top_button -->
      <div class="clear"></div>

      <div class="carousel">
        <div class="c_header">
          <div class="grid_10">
            <h2>最畅销</h2>
          </div><!-- .grid_10 -->

          <div class="grid_2">
            <a id="next_c1" class="next arows" href="#"><span>Next</span></a>
            <a id="prev_c1" class="prev arows" href="#"><span>Prev</span></a>
           </div><!-- .grid_2 -->
        </div><!-- .c_header -->

        <div class="list_carousel">

        <ul id="list_product" class="list_product">
          <li class="">
            <div class="grid_3 product">
              <img class="sale" src="images/sale.png" alt="Sale"/>
              <div class="prev">
                <a href="product_page.html"><img src="images/product_1.png" alt="" title="" /></a>
              </div><!-- .prev -->
              <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">$550.00</div>
                  <div class="price_old">$725.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>

          <li class="">
            <div class="grid_3 product">
              <img class="sale" src="images/sale.png" alt="Sale"/>
              <div class="prev">
                <a href="product_page.html"><img src="images/product_2.png" alt="" title="" /></a>
              </div><!-- .prev -->
              <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">$550.00</div>
                  <div class="price_old">$725.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>

          <li class="">
            <div class="grid_3 product">
              <div class="prev">
                <a href="product_page.html"><img src="images/product_3.png" alt="" title="" /></a>
              </div><!-- .prev -->
              <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">$550.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>

          <li class="">
            <div class="grid_3 product">
              <img class="sale" src="images/sale.png" alt="Sale"/>
              <div class="prev">
                <a href="product_page.html"><img src="images/product_4.png" alt="" title="" /></a>
              </div><!-- .prev -->
              <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">$550.00</div>
                  <div class="price_old">$725.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>

          <li class="">
            <div class="grid_3 product">
              <div class="prev">
                <a href="product_page.html"><img src="images/product_8.png" alt="" title="" /></a>
              </div><!-- .prev -->
              <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">$550.00</div>
                  <div class="price_old">$725.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>

        </ul><!-- #list_product -->
        </div><!-- .list_carousel -->
      </div><!-- .carousel -->

      <div class="carousel">
        <div class="c_header">
          <div class="grid_10">
            <h2>最潮流</h2>
          </div><!-- .grid_10 -->

          <div class="grid_2">
            <a id="next_c2" class="next arows" href="#"><span>Next</span></a>
            <a id="prev_c2" class="prev arows" href="#"><span>Prev</span></a>
          </div><!-- .grid_2 -->
        </div><!-- .c_header -->

        <div class="list_carousel">
        <ul id="list_product2" class="list_product">
          <li class="">
            <div class="grid_3 product">
              <img class="sale" src="images/sale.png" alt="Sale"/>
              <div class="prev">
                <a href="product_page.html"><img src="images/product_5.png" alt="" title="" /></a>
              </div><!-- .prev -->
              <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">$550.00</div>
                  <div class="price_old">$725.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>

          <li class="">
            <div class="grid_3 product">
              <img class="sale" src="images/sale.png" alt="Sale"/>
              <div class="prev">
                <a href="product_page.html"><img src="images/product_6.png" alt="" title="" /></a>
              </div><!-- .prev -->
              <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">$550.00</div>
                  <div class="price_old">$725.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>

          <li class="">
            <div class="grid_3 product">
              <div class="prev">
                <a href="product_page.html"><img src="images/product_7.png" alt="" title="" /></a>
              </div><!-- .prev -->
              <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">$550.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>

          <li class="">
            <div class="grid_3 product">
              <img class="sale" src="images/sale.png" alt="Sale"/>
              <div class="prev">
                <a href="product_page.html"><img src="images/produkt_slid1.png" alt="" title="" /></a>
              </div><!-- .prev -->
              <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">$550.00</div>
                  <div class="price_old">$725.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>

          <li class="">
            <div class="grid_3 product">
              <div class="prev">
                <a href="product_page.html"><img src="images/product_9.png" alt="" title="" /></a>
              </div><!-- .prev -->
              <h3 class="title">Febreze Air Effects New Zealand Springs</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">$550.00</div>
                  <div class="price_old">$725.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>

        </ul><!-- #list_product2 -->
        </div><!-- .list_carousel -->
      </div><!-- .carousel -->

      <div id="content_bottom">

        <div class="clear"></div>
      </div><!-- #content_bottom -->
      <div class="clear"></div>

    </div><!-- .container_12 -->
  </section><!-- #main -->

  <div class="clear"></div>

<footer>
    <div class="f_navigation">
      <div class="container_12">
        <div class="grid_3">
          <h3>联系我们</h3>
          <ul class="f_contact">
            <li>49查尔斯顿2B号Archdale</li>
            <li>+777 (100) 1234</li>
            <li>mail@example.com</li>
          </ul><!-- .f_contact -->
        </div><!-- .grid_3 -->
      
        <div class="grid_3">
          <h3>信息</h3>
          <nav class="f_menu">
            <ul>
              <li><a href="#">关于As</a></li>
              <li><a href="#">隐私政策</a></li>
              <li><a href="#">条款和条件</a></li>
              <li><a href="#">安全支付</a></li>
            </ul>
          </nav>
        </div>
        
        <div class="grid_3">
          <h3>客户服务</h3>
          <nav class="f_menu">
            <ul>
              <li><a href="contact_us.html">联系方式</a></li>
              <li><a href="#">返回</a></li>
              <li><a href="#">常问问题</a></li>
              <li><a href="#">网站地图</a></li>
            </ul>
          </nav>
        </div>
        
        <div class="grid_3">
          <h3>我的帐户</h3>
          <nav class="f_menu">
            <ul>
              <li><a href="#">我的帐户</a></li>
              <li><a href="#">订单历史</a></li>
              <li><a href="#">愿望清单</a></li>
              <li><a href="#">通讯</a></li>
            </ul>
          </nav>
        </div>
        
        <div class="clear"></div>
      </div>
    </div>
    
    <div class="f_info">
      <div class="container_12">
      <div class="grid_6">
          <div class="soc">
            <a class="google" href="#"></a>
            <a class="twitter" href="#"></a>
            <a class="facebook" href="#"></a>
          </div>
        </div>
        
        <div class="clear"></div>
      </div>
    </div>
  </footer>
 

</body>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
</html>
