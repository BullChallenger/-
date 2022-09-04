<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>play</title>
        <link href="play.css?ver=2" rel="stylesheet"/>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    </head>
    <body>
    <% 
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
      
        String referer = request.getHeader("referer");
        
        String KorVsJp_16 = "http://localhost:8081/WorldCup/play1.jsp?20=16";
        String Ramen_16 = "http://localhost:8081/WorldCup/play2.jsp?20=16";

     %>
     
     
     <%   
        if(referer.equals(KorVsJp_16)) {
     %>
    <div class="wra">
            <div class="pwra">
                <div class="wra_co">
                    <div class="row">
                        <div class="box_co">
                            <div class="toptop">8강</div>  
                            <form action="semifinal.jsp">
                            <div id="wleft" class="l1">
                            <%    
                                for(int i=0;i<arr2.length;i=i+2){           
                            %>   
                                <img class="a12" id="sh<%=arr[i]%>" value="<%=arr[i]%>" name="aa" src = "a/<%=arr[i]%>.jpg">
                                <input type="checkbox" class="a14" id="ax<%=arr[i]%>" name="result" value="<%=arr[i]%>">
                                <label for="ax<%=arr[i]%>"id="a<%=arr[i]%>" style="background-image: url(a/<%=arr[i]%>.jpg);"></label>                                                                               
                            <%
                                }
                            %>
                            </div>     
                            <div id="wright" class="l1">
                            <%    
                                for(int i=1;i<arr2.length;i=i+2){
                            %>                                
                                <img class="a12" id="sh<%=arr[i]%>" value="<%=arr[i]%>" name="aa" src = "a/<%=arr[i]%>.jpg">
                                <input type="checkbox" class="a14" id="ax<%=arr[i]%>" name="result" value="<%=arr[i]%>">
                                <label for="ax<%=arr[i]%>"id="a<%=arr[i]%>" style="background-image: url(a/<%=arr[i]%>.jpg);"></label>                               
                            <%
                                }
                            %>
                            </div>
                                <button type="submit" id="sub">다음 강으로</button>
                            </form>                                                                                    
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        
        <%
        	} else if(referer.equals(Ramen_16)) {
        %>
        
         <div class="wra">
            <div class="pwra">
                <div class="wra_co">
                    <div class="row">
                        <div class="box_co">
                            <div class="toptop">8강</div>  
                            <form action="semifinal2.jsp">
                            <div id="wleft" class="l1">
                            <%    
                                for(int i=0;i<arr2.length;i=i+2){           
                            %>   
                                <img class="a12" id="sh<%=arr[i]%>" value="<%=arr[i]%>" name="aa" src = "b/<%=arr[i]%>.jpg">
                                <input type="checkbox" class="a14" id="ax<%=arr[i]%>" name="result" value="<%=arr[i]%>">
                                <label for="ax<%=arr[i]%>"id="a<%=arr[i]%>" style="background-image: url(b/<%=arr[i]%>.jpg);"></label>                                                                               
                            <%
                                }
                            %>
                            </div>     
                            <div id="wright" class="l1">
                            <%    
                                for(int i=1;i<arr2.length;i=i+2){
                            %>                                
                                <img class="a12" id="sh<%=arr[i]%>" value="<%=arr[i]%>" name="aa" src = "b/<%=arr[i]%>.jpg">
                                <input type="checkbox" class="a14" id="ax<%=arr[i]%>" name="result" value="<%=arr[i]%>">
                                <label for="ax<%=arr[i]%>"id="a<%=arr[i]%>" style="background-image: url(b/<%=arr[i]%>.jpg);"></label>                               
                            <%
                                }
                            %>
                            </div>
                                <button type="submit" id="sub">다음 강으로</button>
                            </form>                                                                                    
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        
        <%
        	}
        %>
        <script>
            $(document).ready(function() {
                $('#sh<%=arr[0]%>,#sh<%=arr[1]%>').show(); 
                $('#sh<%=arr[2]%>,#sh<%=arr[3]%>,#a<%=arr[2]%>,#a<%=arr[3]%>,#sh<%=arr[4]%>,#sh<%=arr[5]%>,#a<%=arr[4]%>,#a<%=arr[5]%>,#sh<%=arr[6]%>,#sh<%=arr[7]%>,#a<%=arr[6]%>,#a<%=arr[7]%>,#sh<%=arr[6]%>,#sh<%=arr[7]%>,#a<%=arr[6]%>,#a<%=arr[7]%>,#sub').hide();
                
            $('#a<%=arr[0]%>,#a<%=arr[1]%>').click(function(){ 
                $('#sh<%=arr[0]%>,#sh<%=arr[1]%>,#a<%=arr[0]%>,#a<%=arr[1]%>').hide();
                $('#sh<%=arr[2]%>,#sh<%=arr[3]%>,#a<%=arr[2]%>,#a<%=arr[3]%>').show();
            });
            $('#a<%=arr[2]%>,#a<%=arr[3]%>').click(function(){  
                $('#sh<%=arr[2]%>,#sh<%=arr[3]%>,#a<%=arr[2]%>,#a<%=arr[3]%>').hide();
                $('#sh<%=arr[4]%>,#sh<%=arr[5]%>,#a<%=arr[4]%>,#a<%=arr[5]%>').show();
            });
            $('#a<%=arr[4]%>,#a<%=arr[5]%>').click(function(){  
                $('#sh<%=arr[4]%>,#sh<%=arr[5]%>,#a<%=arr[4]%>,#a<%=arr[5]%>').hide();
                $('#sh<%=arr[6]%>,#sh<%=arr[7]%>,#a<%=arr[6]%>,#a<%=arr[7]%>').show();
            });
            $('#a<%=arr[6]%>,#a<%=arr[7]%>').click(function(){  
                $('#sh<%=arr[6]%>,#sh<%=arr[7]%>,#a<%=arr[6]%>,#a<%=arr[7]%>').hide();
                $('#sub').show();
            });
            
            });
        </script>
        
        
    </body>
</html>