<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입고 관리</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
		<!-- 캘린터 위젯 적용 -->
// 			/* 설정 */	
// 			const config = {
// 				dateFormat : 'yy-mm-dd',
// 				showOn : "button",
// 				buttonText:"날짜 선택",
// 				prevText: '이전달',
// 			    nextText: '다음달',
// 			    currentText:'오늘',
// 			    closeText: '닫기',
// 			    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
// 			    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
// 			    dayNames:['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
// 				dayNamesMin:['일','월','화','수','목','금','토'],
// 			    dayNamesShort: ['일','월','화','수','목','금','토'],
// 			    yearSuffix: '년',
// 			    changeMonth: true,
// 		        changeYear: true
// 			}
			
// 			/* 캘린더 */
// 			$(function() {
// 				//datepicker 한국어로 사용하기 위한 언어설정
// 	            $.datepicker.setDefaults($.datepicker.regional['ko']); 
// 				$( "input[name='startDate']" ).datepicker(config);
// 				$( "input[name='endDate']" ).datepicker(config);
// 			});
			
//-------------------------------------------------------------------------------------------------
        $(document).ready(function() {
            // 버튼 클릭 시 행 추가
            $("#addRowButton").click(function() {
            	var newRow = '<tr>' +
	                '<td><input type="checkbox"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '<td><input type="text"></td>' +
	                '</tr>';
                $(".table-receiveList").append(newRow);
            });
         	// <th> 쪽 체크박스 클릭 시 해당 열의 <td> 부분의 행들을 선택하고 배경색 지정
            $(".table-receiveList th input[type='checkbox']").click(function() {
                var checkbox = $(this);
                var isChecked = checkbox.prop('checked');
                var columnIndex = checkbox.parent().index() + 1; // 체크박스의 열 인덱스
                var table = checkbox.closest('table');
                var rows = table.find('tr');
                // <td> 부분의 행들을 선택하고 배경색 지정
                rows.each(function() {
                    var checkboxTd = $(this).find('td:nth-child(' + columnIndex + ') input[type="checkbox"]');
                    if (checkboxTd.length > 0) {
                        checkboxTd.prop('checked', isChecked);
                        if (isChecked) {
                            $(this).addClass('selected');
                        } else {
                            $(this).removeClass('selected');
                        }
                    }
                });
            });
            // <td> 쪽 체크박스 클릭 시 행 선택
            $(".table-receiveList td input[type='checkbox']").click(function() {
                var checkbox = $(this);
                var isChecked = checkbox.prop('checked');
                checkbox.closest('tr').toggleClass('selected', isChecked);
            });
            
            // 체크박스 클릭 시 선택된 행 삭제
            $(".table-receiveList").on("click", "td input[type='checkbox']", function() {
                var checkbox = $(this);
                if (checkbox.prop("checked")) {
                    checkbox.closest("tr").addClass("selected");
                } else {
                    checkbox.closest("tr").removeClass("selected");
                }
            });
            // 선택된 행 삭제 버튼 클릭 시 행 삭제
            $("#deleteRowsButton").click(function() {
                var selectedRows = $(".table-receiveList tr.selected");
                selectedRows.remove();
            });
            
        });
    </script>
    <style>
        .selected {
            background-color: #b3ccff;
        }
    </style>
</head>
<body>
		<h2>입고 관리</h2>
			<fieldset>
               	<form name="search" method="get" action="">
		       		<span>자재명 :
		       			<input type="text" name="ma_name" placeholder="자재명을 입력하세요">
		       		</span>
		       		<span>발주코드 :
		       			<input type="text" name="io_num" placeholder="발주코드를 입력하세요">
		       		</span>
		       		<div>
                   		<label>입고일자</label>
                   		<div>
		                   	<input type="date" name="startDate">
                   			~
		                   	<input type="date" name="endDate">
                   		</div>
                   	</div>
		      		<input type="submit" value="조회">
             	</form>
             </fieldset>  
             
		<h2>입고</h2>
			<button id="addRowButton">추가</button>
			<button id="deleteRowsButton">삭제</button>
			<table class="table-receiveList" border="1">
				<tr>
					<th><input type="checkbox"></th>
			    	<th>입고코드</th>
			    	<th>발주코드</th>
			    	<th>자재명</th>
			    	<th>입고량</th>
			    	<th>발주량</th>
			    	<th>거래처명</th>
			    	<th>자재상태</th>
			    	<th>입고상태</th>
			    	<th>창고명</th>
			    	<th>입고일자</th>
			    	<th>담당자</th>
				</tr>
			  	<c:forEach var="vo" items="${receiveList}">
					<tr>
						<td><input type="checkbox"></td>
				    	<td>${vo.rec_num}</td>
				    	<td>${vo.inorderVO.io_num}</td>
				    	<td>${vo.materialVO.ma_name}</td>
				    	<td>${vo.rec_cnt}</td>
				    	<td>${vo.inorderVO.io_cnt}</td>
				    	<td>${vo.clientVO.clt_name}</td>
				    	<td>${vo.rec_state}</td>
				    	<td>${vo.rec_in_state}</td>
				    	<td>${vo.warehouseVO.wh_name}</td>
				   		<td>${fn:substring(vo.rec_date, 0, 10)}</td>
				   		<td>${vo.emp_id}</td>
				    </tr>
			    </c:forEach>
			</table>
	
</body>
</html>