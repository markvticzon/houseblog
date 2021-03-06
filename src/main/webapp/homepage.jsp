<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog Site</title>
<link rel="stylesheet"
  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
  crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body id="homepage">
  <!--Navigation Bar-->
	<% if(session.getAttribute("username") == null){
		 String site = new String("./login.jsp");
	     response.setStatus(response.SC_MOVED_TEMPORARILY);
	     response.setHeader("Location", site); 
		}
	%>
  <%@include file="navigation_bars/user-nav.html" %>

  <!--Homepage-->
  <!--Search bar-->
  <div class="container mt-5 mb-5">
    <div class="row align-items-center">
      <div class="col align-self-center">
         <form class="col">
           <div class="form-inline">
                <div class="input-group mb-3 w-100">
                  <input type="text" class="form-control" placeholder="Search Title" aria-label="Searh Title" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-outline-secondary" id="search" type="submit">Search</button>
                    </div>
                </div>
			</div>
        </form>
      </div>
    </div>
  </div>

    <!-- Add Blog -->
    <div class="container">
      <div class="container">
        <form action="" method="post">
          <div class="form-group">
            <input type="text" name="title" value="" placeholder="Blog Title">
          </div>
          <div class="form-group">
            <textarea class="form-control" name="name" rows="8" cols="80" placeholder="Write Something..."></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Post</button>
        </form>
    </div>

    <!--Blog Cards -->
    <div class="container mt-3 mb-3">
      <div class="card">
        <div class="card-header">
          Title
        </div>
        <div class="card-body mh-100">
          <blockquote class="blockquote mb-0">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper eget nulla facilisi etiam dignissim. Quam lacus suspendisse faucibus interdum posuere lorem ipsum. Et ultrices neque ornare aenean euismod elementum. Suspendisse in est ante in. Vitae tempus quam pellentesque nec nam aliquam. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. In est ante in nibh mauris. Massa massa ultricies mi quis hendrerit dolor magna eget est. Faucibus pulvinar elementum integer enim. Odio tempor orci dapibus ultrices in iaculis. Ut consequat semper viverra nam libero. Malesuada fames ac turpis egestas integer eget aliquet nibh. Suspendisse ultrices gravida dictum fusce. Ante in nibh mauris cursus mattis molestie a iaculis.</p>
          </blockquote>
        </div>
      </div>
    </div>
    
        <div class="container mt-3 mb-3">
      <div class="card">
        <div class="card-header">
          Title
        </div>
        <div class="card-body mh-100">
          <blockquote class="blockquote mb-0">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper eget nulla facilisi etiam dignissim. Quam lacus suspendisse faucibus interdum posuere lorem ipsum. Et ultrices neque ornare aenean euismod elementum. Suspendisse in est ante in. Vitae tempus quam pellentesque nec nam aliquam. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. In est ante in nibh mauris. Massa massa ultricies mi quis hendrerit dolor magna eget est. Faucibus pulvinar elementum integer enim. Odio tempor orci dapibus ultrices in iaculis. Ut consequat semper viverra nam libero. Malesuada fames ac turpis egestas integer eget aliquet nibh. Suspendisse ultrices gravida dictum fusce. Ante in nibh mauris cursus mattis molestie a iaculis.</p>
          </blockquote>
        </div>
      </div>
    </div>
    
        <div class="container mt-3 mb-3">
      <div class="card">
        <div class="card-header">
          Title
        </div>
        <div class="card-body mh-100">
          <blockquote class="blockquote mb-0">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper eget nulla facilisi etiam dignissim. Quam lacus suspendisse faucibus interdum posuere lorem ipsum. Et ultrices neque ornare aenean euismod elementum. Suspendisse in est ante in. Vitae tempus quam pellentesque nec nam aliquam. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. In est ante in nibh mauris. Massa massa ultricies mi quis hendrerit dolor magna eget est. Faucibus pulvinar elementum integer enim. Odio tempor orci dapibus ultrices in iaculis. Ut consequat semper viverra nam libero. Malesuada fames ac turpis egestas integer eget aliquet nibh. Suspendisse ultrices gravida dictum fusce. Ante in nibh mauris cursus mattis molestie a iaculis.</p>
          </blockquote>
        </div>
      </div>
    </div>
    
        <div class="container mt-3 mb-3">
      <div class="card">
        <div class="card-header">
          Title
        </div>
        <div class="card-body mh-100">
          <blockquote class="blockquote mb-0">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper eget nulla facilisi etiam dignissim. Quam lacus suspendisse faucibus interdum posuere lorem ipsum. Et ultrices neque ornare aenean euismod elementum. Suspendisse in est ante in. Vitae tempus quam pellentesque nec nam aliquam. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. In est ante in nibh mauris. Massa massa ultricies mi quis hendrerit dolor magna eget est. Faucibus pulvinar elementum integer enim. Odio tempor orci dapibus ultrices in iaculis. Ut consequat semper viverra nam libero. Malesuada fames ac turpis egestas integer eget aliquet nibh. Suspendisse ultrices gravida dictum fusce. Ante in nibh mauris cursus mattis molestie a iaculis.</p>
          </blockquote>
        </div>
      </div>
    </div>
</body>
</html>
