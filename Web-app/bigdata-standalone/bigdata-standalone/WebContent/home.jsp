<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Online Twitter Sumarrzation</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
    <link href="css/plugins/timeline.css" rel="stylesheet">
    <link href="css/sb-admin-2.css" rel="stylesheet">
    <link href="css/plugins/morris.css" rel="stylesheet">
    <link href="css/home.css" rel="stylesheet">
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
     <script>
 $(function(){
	 $( "#submit" ).click(function() {
		 var formInput=$(this).serialize();
		  var search=$('#search').val();
		  console.log($('#search').val()); 
		   $.getJSON('SearchAction.action?search='+search, formInput,function(data) {
			if(data.searchDetails !=null)
				{
				$.each(data.searchDetails, function(key, val) {
		            // Whatever you what to do, eg.
		            console.log(key);
		            console.log(val.id);
		            console.log(val.screenName);
		            console.log(val.name);
		            console.log(val.createdDate);
		            console.log(val.text);
		            var row=' <tr> <td style="word-break:break-all;"> '+ val.id +'</td> <td style="word-break:break-all;">'+val.screenName +'</td><td style="word-break:break-all;">'+val.name +'</td> <td style="word-break:break-all;">'+val.createdDate +'</td>  <td style="word-break:break-all;">'+val.text +'</td></tr> ';
		            $('#result').append(row);
		        });
				}
		  }); 
		 });
	
	  
	})
 </script> 
</head>
<body>
<form action="HiveSaveAction.action" id="searchForm">
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                </li>
            </ul>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a class="active" href="home.jsp"><i class=""></i>Home</a>
                        </li>
                        <!--   <li>
                            <a class="active" href="flume.jsp"><i class=""></i>Flume</a>
                        </li>
                         <li>
                            <a class="active" href="hdfs.jsp"><i class=""></i>Hive</a>
                        </li> -->
                        <li>
                            <a class="active" href="clustering.jsp"><i class=""></i>Reports</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Search</h1>
                    <table>
   					 <tr>
   					 <td  colspan="1">
   					 <label><b>Search Word</b></label>
   					 </td>
   					 <td colspan="1">
   					 <input id="search" name="search" type="text"/>
   					 </td>
   					 </tr>
					 <tr  align="center">
					 <td  colspan="2">
					 <input id="submit" type="button" value="Submit"/>
					 </td>
					 
					
					 </tr>
  				    </table>
                </div>
                
            </div>
            <div class="row">
            <br>
            </div>
            <div class="row">
                <div class="col-lg-8s">
                <div class="panel panel-default">
                <div class="panel-heading">
                <table id="result" cellspacing="20" width="100%" style="border:1px solid rgb(177, 210, 228);">
  <tbody>
  <tr style="">
    <th width="20%" bgcolor="#63E14F" align="left">Id</th>
    <th width="20%" bgcolor="#63E14F" align="left">Screen Name</th>
    <th width="20%" bgcolor="#63E14F" align="left">Name</th>
    <th width="20%" bgcolor="#63E14F" align="left">Created Date</th>
    <th width="20%" bgcolor="#63E14F" align="left">Text</th>
  </tr>
  </tbody>
</table>  
                </div>
                </div>
                </div>
                <div class="col-lg-4">
                </div>
            </div>
        </div>
    </div>
    </form>
</body>

</html>