<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>play</title>
        <link href="play.css?ver=1" rel="stylesheet"/>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        
        
    </head>
    <body>
    <% 
        String name = request.getParameter("20");
        int round = Integer.parseInt(name);
        Integer[] arr = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
        List<Integer> list = Arrays.asList(arr);
        Collections.shuffle(list);
        
    %>
        <div class="wra">
            <div class="pwra">
                <div class="wra_co">
                    <div class="row">
                        <div class="box_co">
                            <div class="toptop"><%=round%>강</div>
                            
                            <% 
                            if(round==4){
                            %>  
                            <form action="next.jsp">
                            <div id="wleft" class="l1">
                            <%    
                                for(int i=0;i<round;i=i+2){           
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
                                for(int i=1;i<round;i=i+2){
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
                            <%    
                            }else if(round==8){
                            %>
                            <form action="semifinal.jsp">
                            <div id="wleft" class="l1">
                            <%    
                                for(int i=0;i<round;i=i+2){           
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
                                for(int i=1;i<round;i=i+2){
                            %>                                
                                <img class="a12" id="sh<%=arr[i]%>" value="<%=arr[i]%>" name="aa" src = "a/<%=arr[i]%>.jpg">
                                <input type="checkbox" class="a14" id="ax<%=arr[i]%>" name="result" value="<%=arr[i]%>"style="display: none";>
                                <label for="ax<%=arr[i]%>"id="a<%=arr[i]%>" style="background-image: url(a/<%=arr[i]%>.jpg);"></label>                               
                            <%
                                }
                            %>
                            </div>
                                <button type="submit" id="sub">다음 강으로</button>
                            </form>
                            <%
                            }else if(round==16){
                            %>
                            <form action="quarterfinal.jsp">
                            <div id="wleft" class="l1">
                            <%    
                                for(int i=0;i<round;i=i+2){           
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
                                for(int i=1;i<round;i=i+2){
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
                            <%
                            }
                            %>                                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <% 
        if(round==4){
        %>
        <script>
            $(document).ready(function() {
                $('#sh<%=arr[0]%>,#sh<%=arr[1]%>').show();
                $('#sh<%=arr[2]%>,#sh<%=arr[3]%>,#sub,#a<%=arr[2]%>,#a<%=arr[3]%>').hide();

            $('#a<%=arr[0]%>,#a<%=arr[1]%>').click(function(){ 
                $('#sh<%=arr[0]%>,#sh<%=arr[1]%>,#a<%=arr[0]%>,#a<%=arr[1]%>').hide();
                $('#sh<%=arr[2]%>,#sh<%=arr[3]%>,#a<%=arr[2]%>,#a<%=arr[3]%>').show();
            });
            $('#a<%=arr[2]%>,#a<%=arr[3]%>').click(function(){  
                $('#sub').show();
                $('#sh<%=arr[2]%>,#sh<%=arr[3]%>,#a<%=arr[2]%>,#a<%=arr[3]%>').hide();
            });
            
            });
            console.log(names);
        </script>
        <%
        }else if(round==8){
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
        <%
        }else if(round==16){
        %>
        <script>
            $(document).ready(function() {
                $('#sh<%=arr[0]%>,#sh<%=arr[1]%>').show(); 
                $('#sh<%=arr[2]%>,#sh<%=arr[3]%>,#a<%=arr[2]%>,#a<%=arr[3]%>,#sh<%=arr[4]%>,#sh<%=arr[5]%>,#a<%=arr[4]%>,#a<%=arr[5]%>,#sh<%=arr[6]%>,#sh<%=arr[7]%>,#a<%=arr[6]%>,#a<%=arr[7]%>,#sh<%=arr[6]%>,#sh<%=arr[7]%>,#a<%=arr[6]%>,#a<%=arr[7]%>,#sh<%=arr[8]%>,#sh<%=arr[9]%>,#a<%=arr[8]%>,#a<%=arr[9]%>,#sh<%=arr[10]%>,#sh<%=arr[11]%>,#a<%=arr[10]%>,#a<%=arr[11]%>,#sh<%=arr[12]%>,#sh<%=arr[13]%>,#a<%=arr[12]%>,#a<%=arr[13]%>,#sh<%=arr[14]%>,#sh<%=arr[15]%>,#a<%=arr[14]%>,#a<%=arr[15]%>,#sub').hide();
                
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
                $('#sh<%=arr[8]%>,#sh<%=arr[9]%>,#a<%=arr[8]%>,#a<%=arr[9]%>').show();
            });
            $('#a<%=arr[8]%>,#a<%=arr[9]%>').click(function(){  
                $('#sh<%=arr[8]%>,#sh<%=arr[9]%>,#a<%=arr[8]%>,#a<%=arr[9]%>').hide();
                $('#sh<%=arr[10]%>,#sh<%=arr[11]%>,#a<%=arr[10]%>,#a<%=arr[11]%>').show();
            });
            $('#a<%=arr[10]%>,#a<%=arr[11]%>').click(function(){  
                $('#sh<%=arr[10]%>,#sh<%=arr[11]%>,#a<%=arr[10]%>,#a<%=arr[11]%>').hide();
                $('#sh<%=arr[12]%>,#sh<%=arr[13]%>,#a<%=arr[12]%>,#a<%=arr[13]%>').show();
            });
            $('#a<%=arr[12]%>,#a<%=arr[13]%>').click(function(){  
                $('#sh<%=arr[12]%>,#sh<%=arr[13]%>,#a<%=arr[12]%>,#a<%=arr[13]%>').hide();
                $('#sh<%=arr[14]%>,#sh<%=arr[15]%>,#a<%=arr[14]%>,#a<%=arr[15]%>').show();
            });
            $('#a<%=arr[14]%>,#a<%=arr[15]%>').click(function(){  
                $('#sh<%=arr[14]%>,#sh<%=arr[15]%>,#a<%=arr[14]%>,#a<%=arr[15]%>').hide();
                $('#sub').show();
            });

            });
        </script>
        <%
        }
        %>
    </body>
</html>