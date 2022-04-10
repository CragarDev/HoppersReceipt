<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date" %>
	<!-- Here we have to import the Date class. -->
	<!-- You will put the import in the first line of the jsp tag. Use the import attribute -->

	<!-- c:out ; c:forEach ; c:if -->
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!-- Formatting (like dates) -->
		<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			<!-- form:form -->
			<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
				<!-- for rendering errors on PUT routes -->
				<%@ page isErrorPage="true" %>

					<!DOCTYPE html>

					<html>

					<head>
						<meta charset="UTF-8" />
						<title>Craig Burke - Templating Testing</title>
						<!-- Bootstrap -->
						<!-- CSS only -->
						<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
							rel="stylesheet"
							integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
							crossorigin="anonymous" />
						<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
							integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
							crossorigin="anonymous"></script>
						<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
							integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
							crossorigin="anonymous"></script>
						<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
						<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
					</head>

					<body>
						<div class="container">
							<!-- Beginning of Container -->
							<h2 class="text-danger">Hello Cragar,<br> You are Home....?</h2>
							<br />
							<p>
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque autem.
							</p>
							<p class="w-100"></p>

							<!-- Playing with dropdown hrefs... -->
							<!-- 
							<div class="dropdown">
								<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
									data-bs-toggle="dropdown" aria-expanded="false">
									Text Only side Pages
								</button>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
									<li><a class="dropdown-item" href="/side">side</a></li>
									<li><a class="dropdown-item" href="/side/today">today</a></li>
									<li><a class="dropdown-item" href="/side/tomorrow">tomorrow</a></li>
								</ul>
							</div> -->

							<div class="dropdown">
								<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
									id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
									Daikichi Quotes
								</a>

								<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
									<!-- <li><a class="dropdown-item" href="/side">side</a></li> -->
									<li><a class="dropdown-item" href="/side/today">today</a></li>
									<li><a class="dropdown-item" href="/side/tomorrow">tomorrow</a></li>
								</ul>
							</div>

							<!-- <div class="dropdown">
								<a id="my-dropdown" href="#" class="btn btn-primary dropdown-toggle"
									data-toggle="dropdown">Dropdown</a>

								<ul class="dropdown-menu">
									<li><a href="/side">side</a></li>
									<li><a href="#">CSS</a></li>
									<li><a href="#">JavaScript</a></li>
								</ul>

							</div> -->

							<p class="w-100"></p>

							<p class="w-100"></p>
							<!-- == button == -->
							<a class="btn btn-danger float-end mb-3" href="/another">Another</a>
							<p class="w-100"></p>


							<!-- Inserting a for loop into your jsp -->

							<% for (int i=0; i < 5; i++) { %>
								<h1 class="text-center">
									<%=i%>
								</h1>
								<p>Just testing the tags...</p>
								<% } %>
									<p>The time is: <%=new Date()%>
									</p>

									<p class="w-100"></p>
									<div class="container bg-warning">
										<h2 class="text-center">Testing JSTL</h2>
										<div class="container text-center">
											<!-- JSP tags...  -->
											<!-- Creating a for loop -->
											<% for (int i=0; i<10; i++) { %>
												<h1">
													<%=i * 6%>
														</h1>

														<p class="w-100"></p>
														<h3>Hello</h3>

														<c:out value="${ something}"></c:out>
														<% } %>
										</div>
									</div>
									<h1>
										Twenty plus thirty is:
										<h1>
											<h2>
												<c:out value="${ 20 + 30 }" />
											</h2>

											<p class="w-100"></p>

											<h1>Fruit of the Day</h1>
											<h2>
												<c:out value="${fruit}" />
											</h2>

											<p class="w-100"></p>


										</h1>
									</h1>
						</div>
						<!-- End of Container -->
					</body>

					</html>