<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "opinion.opinionDAO" %>
<%@ page import = "opinion.opinionDTO" %>
<%@ page import = "java.net.URLEncoder" %>


<% 
	request.setCharacterEncoding("UTF-8");
	
    String[] arr = request.getParameterValues("result");
    int[] arr2 = new int[arr.length];
    for(int i = 0; i < arr.length; i++) {
        arr2[i] = Integer.parseInt(arr[i]);
    }
    
    /*for (int i = 0; i < arr2.length; i++) {
        out.println(arr2[i]);
    }
    */
    Integer[] num = new Integer[arr2.length];
    for(int i = 0; i < arr2.length; i++) {
        num[i] = arr2[i];
    }
    List<Integer> list = Arrays.asList(num);
    Collections.shuffle(list);
    
%>

<!DOCTYPE html>
<html>
    <head>
        <title>play</title>
        <link href="play.css?ver=1" rel="stylesheet"/>
        <link rel="stylesheet" href="./css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./css/custom.css"/>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    </head>
    <body>

    <div class="wra">
            <div class="pwra">
                <div class="wra_co">
                    <div class="row">
                        <div class="box_co">
                            <div class="toptop"></div>  
                            
                            <div id="wleft" class="">                           
								<img class="a12" id="sh<%=arr[0]%>" value="<%=arr[0]%>" name="aa" src = "b/<%=arr[0]%>.jpg">
                            </div>     
                            <div id="RBwright" class="board">    
                            	<div class="btnAction">
		                            <a class="btn btn-danger mx-1 mt-2" data-toggle="modal" href="./main.jsp">다시하기</a>                                             
		                        </div>     
		                        <form id="opinionBox" action="./OpinionRegisterAction.jsp" method="post">
			        				<div class="form-row">
			        					<div class="form-group col-sm-12">
			        						<label class="opinionLabel"><b>닉네임</b></label>
			        						<input type="text" name="userNickName" class="form-control" maxlength="20"
			        						value="익명" autocomplete='off'>
			        					</div>
			        					<div class="form-group col-sm-12">
			        						<label class="opinionLabel"><b>의견 작성하기</b></label>
			        						<input type="text" name="userOpinion" class="form-control" placeholder="의견을 적어주세요." autocomplete='off'>   
			        						<button type="submit" class="btn btn-primary btn-block">등록하기</button>
			        					</div>
			        				</div>
			        			</form>           
			        			
			        			<%
			        				int pageNumber = 0;

			        				ArrayList<opinionDTO> opinionList = new ArrayList<opinionDTO>();
			        				opinionList = new opinionDAO().getList(pageNumber);
			        				if(opinionList != null) {
			        					for(int i = 0; i < opinionList.size(); i++) {
			        						if(i == 5) break;
			        						opinionDTO opinion = opinionList.get(i);
			        			%>                            
                                <div class="card bg-light mt-3">
                                	<div class="card-header bg-light">
                                		<div class="row">
                                			<div class="col-5"><b><%= opinion.getUserNickName() %></b> - ([진짬뽕 선택])</div>
                                		</div>
                                	</div>
                              		<div class="card-text">
                              			<%= opinion.getUserOpinion() %>
                              		</div>
                                </div>   
                                <%
                                		}
			        				}
                                %>
                                </div>                                                                                      
                            </div>                                                                                    
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        
        

		<script src="./js/jquery.min.js"></script>
		<script src="./js/popper.js"></script> 
        <script src="./js/bootstrap.min.js"></script>
        <script src="play.js?ver=11"></script>
    </body>
</html>