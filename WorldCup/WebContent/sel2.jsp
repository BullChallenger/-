<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>ㅇㅇㅇㅇ</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <link href="sel.css?ver=3" rel="stylesheet">
    </head>
    <body>
        <div class="bb">
            <div class="modalsel_1" id="modla">
                <div class="modalcon">
                    <div class="modalhead">
                        <h4 class="mo_title">월드컵 16강</h4>
                    </div>
                    <form action="play2.jsp" method="get">
                        <div class="modalbody">
                            <div class="modalbody_1">
                                <label>라운드를 선택하세요.</label>
                                <select class="round_con" name="20" style="font-family:서울한강체">
                                    <option value="16" name="aa" selected>16강</option>
                                    <option value="8" name="aa">8강</option>
                                    <option value="4" name="aa">4강</option>
                                </select>
                                <div class="r_t" id="rtext">총 20명의 후보 중 무작위 16명이 대결합니다.</div>
                            </div>
                        </div>
                        <div class="modalfoot">
                            <button type="submit" class="mf_btn cs1" onClick="location.href='play2.jsp'" style="font-family:서울한강체">시작하기</button>    
                            <a href="main.jsp" class="mf_btn cs2">이상형 월드컵</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        
        
        
        <script>
            $.cround=function(co,round){
                $('#rtext').html('총 '+ co +'명의 후보 중 무작위 '+ round +'명이 대결합니다.');
            };
            $('.round_con').change(function(){
                $.cround($(this).attr("name"), $(this).val());
            });
        </script>
        <script src="sel.js"></script>
        
    </body>
</html>