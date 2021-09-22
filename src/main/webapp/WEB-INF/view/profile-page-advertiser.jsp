<%@ page import="net.enLearn.entity.Advertisement" %>
<%@ page import="java.util.List" %>
<%@ page import="net.enLearn.entity.Advertiser" %><%--
  Created by IntelliJ IDEA.
  User: flashminat0
  Date: 2021-07-20
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<!--Created by Yasas on 20/07/2021-->
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <meta name="robots" content="index, follow" />
    <link rel="shortcut icon" type="image/png" href="../../resources/img/favicon.png">

    <link rel="stylesheet" type="text/css" href="../../resources/css/bootstrap.css?944">
    <link rel="stylesheet" type="text/css" href="../../resources/css/style.css?1927">
    <link rel="stylesheet" type="text/css" href="../../resources/css/animate.css?8615">
    <link rel="stylesheet" type="text/css" href="../../resources/css/ionicons.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/all.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lobster+Two&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script&display=swap&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <title>profile-page-advertiser</title>



    <!-- Analytics -->

    <!-- Analytics END -->

</head>
<body>

<!-- Preloader -->
<div id="page-loading-blocs-notifaction" class="page-preloader"></div>
<!-- Preloader END -->


<!-- Main container -->
<div class="page-container">

    <!-- bloc-0 -->
    <%@include file="header.jsp"%>
    <!-- bloc-0 END -->

    <!-- bloc-19 -->
    <div class="bloc l-bloc" id="bloc-19">
        <div class="container bloc-lg">
            <div class="row">

                   <%--Advertisertesment prof--%>
                    <div class="col-lg-8" style="width: 75%; margin-left: auto" >
                            <h2 class="mg-md no-margin">
                                ${advertiser.cname}
                            </h2>
<%--                            <div class="divider-h">--%>
<%--                                <span class="divider"></span>--%>
<%--                            </div>--%>
<%--                            <div class="divider-h">--%>
<%--                                <span class="divider"></span>--%>
<%--                            </div>--%>



                            <%
                                Object obj = request.getAttribute("ad_list");
                                List<Advertisement> ad_list = null;
                                if (obj!=null){
                                    try {
                                        ad_list = (List<Advertisement>) obj;
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                } %>

                            <div class="row">
                                <div class="col">
                                    <div class="divider-h">
                                        <span class="divider"></span>
                                    </div>




                                    <div>
                                        <% if(ad_list == null || ad_list.size()==0 ){ %>
                                        <h3 class="mg-md no-margin text-lg-center">
                                            No advertisements were created yet.
                                        </h3>
                                        <% }else{ %>
                                        <h4 class="mg-md no-margin text-lg-center">
                                            Advertisement Details
                                        </h4>
                                        <%} %>
                                    </div>



                                    <div><div class="text-center">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 50" stroke-width="1" stroke="#000000" fill="none" stroke-linecap="butt" style="max-width:500px"><path d="M2,25H498"></path></svg>
                                    </div>

                                    </div>




                                    <% if (ad_list!=null && ad_list.size()>0){
                                        for (int i=0; i<ad_list.size(); i++){
                                            Advertisement advertisement = ad_list.get(i);
                                    %>
                                    <%--                            <div class="row ad-row">--%>
                                    <div class="col-lg-4">
                                        <img src="../../resources/img/lazyload-ph.png"
                                             data-src="../../resources/img/aae4217f-f6b0-4c3e-ae1f-f141fff1f68e.jpg"
                                             class="img-fluid mx-auto d-block lazyload"
                                             alt="aae4217f f6b0-4c3e-ae1f-f141fff1f68e" />
                                    </div>
                                    <div class="col">
                                        <div>
                                            <h4 class="mg-md">
                                                <% out.println(advertisement.getTitle());%>

                                            </h4>
                                            <div class="row">
                                                <div class="col">
                                                    <h6 class="mg-md">
                                                        <% out.println(advertisement.getRemainingTime());%>
                                                    </h6>
                                                </div>
                                                <div class="col">
                                                    <h6 class="mg-md">
                                                        <%--                                                Time it showed--%>
                                                    </h6>
                                                </div>


                                            </div>

                                            <div class="row">
                                                <div class="col">
                                                    <p class="mg-md">
                                                        <% out.println(advertisement.getDescription());%>
                                                    </p>
                                                </div>

                                                <br><br>
                                                <div class="text-center">
                                                    <div class="row">
                                                        <div class="col">
                                                            <form id="form_22097"  data-form-type="blocs-form" action="/advertisers/update" method="GET" >
                                                                <%
                                                                    String inp =
                                                                            "<input type=\"hidden\" id=\"advertisementId\" name=\"advertisementId\" value=\""+advertisement.getId()+"\">";
                                                                    out.println(inp);
                                                                %>
                                                                <button class="btn btn-success" type="submit" style="width: 30%;margin-left: 30%;">
                                                                    Update
                                                                </button>
                                                            </form>

                                                            <%--                                                <a href="/advertisers/update" class="btn btn-success" data-toggle="modal" data-target="/advertisers/update" >Update</a><br>--%>
                                                        </div>
                                                        <div class="col">
                                                            <form id="form_22098"  data-form-type="blocs-form" action="/advertisers/delete" method="GET" >
                                                                <%
                                                                    out.println(inp);
                                                                %>

                                                                <button class="btn btn-danger" onclick="if (!(confirm('Do you want to delete this advertisement?'))) return false" type="submit" style="width: 30%;margin-left: 30%;">
                                                                    Delete
                                                                </button>
                                                            </form>

                                                            <%--                                                <a href="/advertisers/delete" class="btn btn-danger" data-toggle="modal" data-target="/advertisers/delete">Delete</a>--%>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="row">
                                                    <div class="col">
                                                        <div class="divider-h">
                                                            <span class="divider"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--                                </div>--%>

                                    </div>
                                    <%}
                                    }%>

                                </div>
                            </div>

                        </div st>

                    <%--Advertiser prof--%>
                    <div class="col-lg-8" style="width: 25%; margin-right: auto">
                        <img src="../../resources/img/lazyload-ph.png" data-src="../../resources/img/6ebaea84-c314-4dec-80fb-b4cac9fb3f63.jpg" class="img-fluid rounded-circle mx-auto d-block lazyload" alt="b8d67043 5e4a-48ad-ad45-92f0a1352dc7" />
                        <br><br>
                        <p><u><b>${advertiser.cname}</b></u></p>
                        <br>
                        <p>${advertiser.email}</p>
                        <p>${advertiser.contact_no}</p>


                        <% Advertiser advertiser = (Advertiser) request.getAttribute("advertiser");
                        %>
                        <br>
                        <div class="text-center">
                            <div class="row">
                                <div class="col">
                                    <form id="form_22097"  data-form-type="blocs-form" action="/advertisers/update-profile" method="GET" >
                                        <%
                                            String in =
                                                    "<input type=\"hidden\" id=\"advertisementId\" name=\"advertiserId\" value=\""+advertiser.getId()+"\">";
                                            out.println(in);
                                        %>
                                        <button class="btn btn-success" type="submit" >
                                            Update
                                        </button>
                                    </form>

                                    <%--                                                <a href="/advertisers/update" class="btn btn-success" data-toggle="modal" data-target="/advertisers/update" >Update</a><br>--%>
                                </div>
                                <div class="col">
                                    <form id="form_22098"  data-form-type="blocs-form" action="/advertisers/delete-profile" method="GET" >
                                        <%
                                            out.println(in);
                                        %>

                                        <button class="btn btn-danger" type="submit" onclick="if (!(confirm('Do you really want to delete your profile?'))) return false"  >
                                            Delete
                                        </button>
                                    </form>

                                    <%--                                                <a href="/advertisers/delete" class="btn btn-danger" data-toggle="modal" data-target="/advertisers/delete">Delete</a>--%>
                                </div>
                            </div>

                            <br><br>
                            <div class="row">
                                <form id="form_22096" data-form-type="blocs-form" action="/advertisers/upload" method="GET" >
                                    <button class="bloc-button btn btn-d btn-lg btn-block" type="submit" style="background-color: #00c9a7" >
                                        Add Advertisement
                                    </button>
                                </form>
                            </div>

                        </div>


                    </div>






                </div>
            </div>
        </div>
    </div>
    <!-- bloc-19 END -->

    <%@include file="footer.jsp" %>

</div>
<!-- Main container END -->



<!-- Additional JS -->
<script src="../../resources/js/jquery.js?8669"></script>
<script src="../../resources/js/bootstrap.bundle.js?9765"></script>
<script src="../../resources/js/blocs.js?5117"></script>
<script src="../../resources/js/lazysizes.min.js" defer></script><!-- Additional JS END -->


</body>
</html>
