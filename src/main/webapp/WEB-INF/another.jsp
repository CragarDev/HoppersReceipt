<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.Date, java.util.Calendar" %>
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
						<meta charset="UTF-8">
						<title>Another Page</title>
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
							<h2 class="text-danger">Just another test page?</h2>
							<br>
							<h2 class="text-center">
								<c:out value="${ 450 * 65 }" />
								<c:out value="${ jumping }" />Jacks
							</h2>
							<br>
							<p class="text-end">Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>

							<p class="w-100"></p>
							<br>
							<!-- Using c:tags.... -->
							<c:set value="JSTL Core Tags Example" var="pageTitle" />
							<c:out value="${pageTitle}" />
							<br>
							<!-- from Baeldung -->
							

							<!-- choose/when/otherwise -->
							
							<c:set value="<%= Calendar.getInstance().get(Calendar.SECOND)%>" var="seconds" />
							<c:choose>
								<c:when test="${seconds le 30 }">
									<c:out value="${seconds} is less than 30" />
								</c:when>
								<c:when test="${seconds eq 30 }">
									<c:out value="${seconds} is equal to 30" />
								</c:when>
								<c:otherwise>
									<c:out value="${seconds} is greater than 30" />
								</c:otherwise>
							</c:choose>

	

							<p class="w-100"></p>

							<!-- Inserting a for loop into your jsp -->
							<% for(int i=0; i < 5; i++) { %>
								<h1 class="text-center">
									<%= i %>
								</h1>
								<p class="text-center">Just testing the tags...</p>
								<% } %>
									<p>
										The time is:
										<%= new Date() %>
									</p>

									<p class="w-100"></p>

									<h3>${ myList }</h3>

									<c:forEach var="name" items="${myList}">
										<p>
											<c:out value="${name}"></c:out>
										</p>
									</c:forEach>

									<p class="w-100"></p>
									<!-- == button == -->
									<a class="btn btn-danger float-end mb-3" href="/home">Home</a>
									<p class="w-100"></p>

									<!-- Dropdown buttons -->

									<!-- Example single danger button -->
									<div class="btn-group">
										<button type="button" class="btn btn-danger dropdown-toggle"
											data-bs-toggle="dropdown" aria-expanded="false">
											Action
										</button>
										<ul class="dropdown-menu">
											<li><a class="dropdown-item" href="/side/today">Action</a></li>
											<li><a class="dropdown-item" href="/side/tomorrow">Another action</a></li>
											<li><a class="dropdown-item" href="#">Something else here</a></li>
											<li>
												<hr class="dropdown-divider">
											</li>
											<li><a class="dropdown-item" href="#">Separated link</a></li>
										</ul>
									</div>

									<!-- Example split warning button -->
									<div class="btn-group">
										<button type="button" class="btn btn-warning">Action</button>
										<button type="button"
											class="btn btn-warning dropdown-toggle dropdown-toggle-split"
											data-bs-toggle="dropdown" aria-expanded="false">
											<span class="visually-hidden">Toggle Dropdown</span>
										</button>
										<ul class="dropdown-menu">
											<li><a class="dropdown-item" href="/side/today">Action</a></li>
											<li><a class="dropdown-item" href="/side/tomorrow">Another action</a></li>
											<li><a class="dropdown-item" href="#">Something else here</a></li>
											<li>
												<hr class="dropdown-divider">
											</li>
											<li><a class="dropdown-item" href="#">Separated link</a></li>
										</ul>
									</div>

									<!-- Large button groups (default and split) -->
									<div>
										<div class="btn-group">
											<button class="btn btn-secondary btn-lg dropdown-toggle" type="button"
												data-bs-toggle="dropdown" aria-expanded="false">
												Large button
											</button>
											<ul class="dropdown-menu">
												<li><a class="dropdown-item" href="/side/today">Action</a></li>
												<li><a class="dropdown-item" href="/side/tomorrow">Another action</a>
												</li>
												<li><a class="dropdown-item" href="#">Something else here</a></li>
												<li>
													<hr class="dropdown-divider">
												</li>
												<li><a class="dropdown-item" href="#">Separated link</a></li>
											</ul>
										</div>
										<div class="btn-group">
											<button class="btn btn-secondary btn-lg" type="button">
												Large split button
											</button>
											<button type="button"
												class="btn btn-lg btn-secondary dropdown-toggle dropdown-toggle-split"
												data-bs-toggle="dropdown" aria-expanded="false">
												<span class="visually-hidden">Toggle Dropdown</span>
											</button>
											<ul class="dropdown-menu">
												<li><a class="dropdown-item" href="/side/today">Action</a></li>
												<li><a class="dropdown-item" href="/side/tomorrow">Another action</a>
												</li>
												<li><a class="dropdown-item" href="#">Something else here</a></li>
												<li>
													<hr class="dropdown-divider">
												</li>
												<li><a class="dropdown-item" href="#">Separated link</a></li>
											</ul>
										</div>
									</div>

									<!-- Small button groups (default and split) -->
									<div>

										<div class="btn-group">
											<button class="btn btn-success btn-sm dropdown-toggle" type="button"
												data-bs-toggle="dropdown" aria-expanded="false">
												Small button
											</button>
											<ul class="dropdown-menu">
												<li><a class="dropdown-item" href="/side/today">Action</a></li>
												<li><a class="dropdown-item" href="/side/tomorrow">Another action</a>
												</li>
												<li><a class="dropdown-item" href="#">Something else here</a></li>
												<li>
													<hr class="dropdown-divider">
												</li>
												<li><a class="dropdown-item" href="#">Separated link</a></li>
											</ul>
										</div>
										<div class="btn-group">
											<button class="btn btn-success btn-sm" type="button">
												Small split button
											</button>
											<button type="button"
												class="btn btn-sm btn-success dropdown-toggle dropdown-toggle-split"
												data-bs-toggle="dropdown" aria-expanded="false">
												<span class="visually-hidden">Toggle Dropdown</span>
											</button>
											<ul class="dropdown-menu">
												<li><a class="dropdown-item" href="/side/today">Action</a></li>
												<li><a class="dropdown-item" href="/side/tomorrow">Another action</a>
												</li>
												<li><a class="dropdown-item" href="#">Something else here</a></li>
												<li>
													<hr class="dropdown-divider">
												</li>
												<li><a class="dropdown-item" href="#">Separated link</a></li>
											</ul>
										</div>
									</div>

									<p class="w-100"></p>





						</div>
						<!-- End of Container -->
					</body>

					</html>