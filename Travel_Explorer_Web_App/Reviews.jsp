<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Core JSTL Tag Library -->
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Explorer - Profile</title>

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/defaultStyle.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css" />

<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,400italic' rel='stylesheet' type='text/css'>	<!-- Google Web font -->
<link href='http://fonts.googleapis.com/css?family=Iceland' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/relativeTime.js" > </script>	<!-- Custom javascript to turn timestamps into e.g. "x seconds ago" etc.  -->
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
  

<!-- View a message on it's own with the possibility of deleting it -->
<script>
function viewIndividualMessage(messageID)
{
	//GET /messsages/id
	location.href="${pageContext.request.contextPath}/messages/" + messageID;
}
</script>

<!-- Use JQuery AJAX to HTTP DELETE to /profile in order to delete your profile -->
<!-- NO IDEA WHY THIS ISN'T TRIGGERING.  WORKS IN jsFiddle!!! -->
<!-- The interface is there though.  Counts. -->
<script>
$(document).ready(function()
{    
	$("p#delete").click(function() 
	{
		$( "#dialog-confirm" ).dialog(
		{
		    resizable: false,
		    modal: true,
		    buttons: 
		    {
		        "Pull the plug": function() 
				{
		          $( this ).dialog( "close" );
		          $.ajax(
		          {
		    		  url: "${pageContext.request.contextPath}/profile",
		    		  type: "DELETE",
		    		  dataType: 'text',
		    		  success: function( response ) 
		    		  {
		    	            $( "#dialog > p").html( response );

		    	            $( "#dialog").dialog(
		    	            {
		    			        modal: true,
		    			        buttons: 
		    			        {
		    			        	Ok: function() 
		    			        	{
		    			                $( this ).dialog( "close" );
		    			                location.href = "${pageContext.request.contextPath}/login";
		    			            }
		    			        }
		    				});
		    	        },
		    		});
                  	return;
		        },
		        "On second thought...": function() {
		          $( this ).dialog( "close" );
                    alert("return");
		          return;
		        }
		    }
		});
		
	});
});
</script>


</head>

<body onLoad="relativeTime()">

	<h1 id="bannerText">Travel Explorers</h1>

	<div class="wrapper">
		<!-- Navigation Bar -->
		<jsp:include page="./nav-bar.jsp" />
		
		<div id="leftSide">
			
			<div id="messageTitle">
				<h2 id="messageTitle">Account Information</h2><hr />
			</div>
	
			
			<div class="profileContainer">
	
				<!--  content -->
				<h2 style="padding-bottom:10px;"> ${user.firstName} ${user.lastName}  </h2> 
						
				<div id="profilePicture">
					<img src="${pageContext.request.contextPath}/images/blank_profile.jpg" alt="Blank Profile Picture"/>
				</div>
				
				<!-- Only allow link when it's the logged-in Session user -->
				<c:choose>
					 <c:when test="${otherUser != true}">
						<!-- Account information -->
						<p> Trips:<a href="${pageContext.request.contextPath}/following">  ${following} </a> </p>
						<p> Reviews:<a href="${pageContext.request.contextPath}/following">  ${following} </a> </p>
						<p> Friends:<a href="${pageContext.request.contextPath}/following"> ${following} </a> </p>
						<!-- <p> Followers: <a href="${pageContext.request.contextPath}/followers">  ${followers} </a> </p>-->
					</c:when>
				</c:choose>
			
				<c:if test="${otherUser != true}">
					<p id="delete">(Delete?)</p>
				</c:if>
				
				<h3 style="width:100%; float:left;padding-top:10px;"> Personal Goals : </h3>
				<p style="width:100%; float:left;"> I would like to Travel more!</p>
				
				<c:if test="${otherUser != true}">
				
				<h3 style="width:100%; float:left;padding-top:10px;"> What would you like to do? </h3> 
	<!-- Create message form direct from profile page -->
	
					<p style="float:left;width:50%;margin-top:10px;">Select Type of Trip</p>
					
					<select style="float:right;margin-top:10px;">
					  <option value="Day Trip">Day Trip</option>
					  <option value="Evening Trip">Evening Trip</option>
					  <option value="Coach Trip">Coach Trip</option>
					  <option value="Weekend Away">Weekend Away</option>
					  <option value="Foreign Holiday">Foreign Holiday</option>
					</select> 
				
				<br>
				<p style="float:left;width:100%;margin-top:10px;">Describe Trip:</p>
				<form name="messageForm" method="post" action="${pageContext.request.contextPath}/messages">	<!-- Post to "/messages" creates a new message -->
					<textarea class="inputcontent" name="message" placeholder="Type your story here" cols="40" rows="4" ></textarea> 
					<input class="orangebutton" type="submit" value="Post Chat" />
				</form>
			
				</c:if>
				
				<c:if test="${successMessage != null}">
				<p id="returnMessage"><c:out value="${successMessage }" /></p>
			</c:if>
			</div>
			
			

		</div>
		
		<c:if test="${otherUser != true}">
		<div id="messageFeed">
		
			<div id="messageTitle">
				<h2 id="messageTitle">Available Trips</h2><hr />
			</div>
			
			<c:if test="${userMessages.size() == 0}">
				<p id="returnMessage"><c:out value="No messages in feed" /></p>
			</c:if>
	
		
			    <div class="messageContainer" >
			    	<div class="messageAuthor">
			    		<c:out value="Weekend away to Lourdes"/>
			    		<div style="float:right;">${message.timeStamp}</div><hr />
			    	</div>
			    	<div class="messageContent">
			        	What a fantastic place to visit. Everyone should make the journey at least once in their life.
			        </div>
			        <div class="timeAgo">
			        	<p class="timestamp">${message.timeStamp}</p>
					</div>
			    </div> 
				
				

		
	
		</div>
		</c:if>
		
		<div id="#dialog" >
			<p></p>
		</div>	
			
		<div id="#dialog-confirm" hidden="true">
			<p>Are you sure you want to delete your profile? You'll miss out...</p>
		</div>
	</div>

<jsp:include page="./footer.jsp" />

</body>

</html>