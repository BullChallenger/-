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
    <div class="wra">
            <div class="pwra">
                <div class="wra_co">
                    <div class="row">
                        <div class="box_co">
                            <div class="toptop">결승</div>  
                            <form action="ReviewBoard.jsp">
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
                                <button type="submit" id="sub">게시판으로</button>
                            </form> 
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    <script>
            $(document).ready(function() {
                $('#sh<%=arr[0]%>,#sh<%=arr[1]%>').show();
                $('#sub').hide();

            $('#a<%=arr[0]%>,#a<%=arr[1]%>').click(function(){ 
                $('#sh<%=arr[0]%>,#sh<%=arr[1]%>,#a<%=arr[0]%>,#a<%=arr[1]%>').hide();
                $('#sub').show();     
            });
            
            });
            console.log(names);
        </script>
        <script src="play.js?ver=11"></script>
    </body>
</html>