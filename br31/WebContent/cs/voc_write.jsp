<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VOC 등록</title>
<link rel="stylesheet" href="http://localhost:9000/br31/cs/css/cs.css">
<script>
	function changeEmail() {
		var selectEmail = document.getElementById("selectEmail").value;
		var emailAddr = document.getElementById("voc_emailAddr");
		if(selectEmail == "직접입력") {
			emailAddr.value = "";
			emailAddr.focus();
		} else {
			emailAddr.value = selectEmail;
		}
	}
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="cs_header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="cs_content">
		<section class="voc_write">
			<h3>고객센터 1:1 문의</h3>
			<form name="voc_write_form" action="#" method="get">
				<div class="agreement">
					<h5>1. 상담 접수를 위해 하단의 개인정보 취급방침을 읽고 동의 버튼에 확인해 주세요.</h5>
					<div class="agree_info">
						<h5>1) 수집하는 개인정보 항목</h5>
						<span>이름, 전화번호, 주소, 이메일 주소, 기타 고객상담을 위하여 고객이 제공하는 필수 정보 등 상담 처리를 위한 개인정보를 요청합니다.</span>
						<span>익명 상담을 원하시는 고객의 경우에는 수집하지 않습니다. (단, 개인정보 수집이 안될 경우 상담 업무가 제한적으로 이루어질 수 있음을 양해 부탁드립니다)</span>
						<h5>2. 개인정보 수집 목적</h5>
						<span>고객 관련 정보는 고객불만 사항의 상담, 불만처리 내용 모니터링 등의 관리, 교환 및 환불, 배송, 상담 처리를 위한 재연락, 해피콜(클레임 만족도 조사) 과정에서 사용됩니다.</span>
						<h5>3. 개인정보의 보유 및 이용기간</h5>
						<span>수집된 개인정보는 수집 목적이 종료되거나 보유기간 3년이 경과되면 파기합니다. 단, 관련 법령의 규정에 의하여 필요한 경우 그 기간 동안 개인정보를 보관합니다.</span><br>
					</div>
					<div class="agree_check">
						<h5>개인정보 취급 방침에 동의하십니까?</h5>
						<div>
							<input type="radio" name="agree1" id="agree1y" value="동의함">동의함
							<input type="radio" name="agree1" id="agree1n" value="동의안함">동의안함
						</div>
					</div>
					<div class="agree_info">
						<h5>개인정보의 취급 및 관리 업무 위탁 관련</h5>
						<span>수집된 개인정보는 회사가 스스로 취급 및 관리함을 원칙으로 하나, 원활한 상담 처리를 위해 일부 또는 전부를 점포나 당사가 선정한 업체에 위탁할 수 있습니다. 위탁업체가 추가 또는 변경되는 경우에는 이를 홈페이지에 고지합니다.</span>
						<span>위탁 및 수탁업체는 다음과 같습니다.</span>
						<table>
							<tr>
								<th width="15%">위탁자</th>
								<th width="30%">취급 위탁업무 내용</th>
								<th>취급정보</th>
							</tr>
							<tr>
								<td>비알코리아㈜</td>
								<td>비알코리아㈜에서 운영하는 모든 브랜드에 관련된 고객 상담 처리 업무</td>
								<td>고객 이름, 전화번호 등 고객 상담 과정에서 필요한 고객 정보 & 상담 내용, 고객 상담 관련된 정보 전체</td>
							</tr>
						</table>
						<table>
							<tr>
								<th width="15%">수탁자</th>
								<th width="30%">취급 수탁업무 내용</th>
								<th>취급정보</th>
							</tr>
							<tr>
								<td>㈜섹타나인</td>
								<td>비알코리아㈜ 고객센터 시스템 운영</td>
								<td rowspan=2>고객 이름, 전화번호 등 고객 상담 과정에서 필요한 고객 정보 & 상담 내용, 고객 상담 관련된 정보 전체</td>
							</tr>
							<tr>
								<td>SPC 소속 점포</td>
								<td>상담 처리 관련 교환,환불</td>
							</tr>
						</table>
					</div>
					<div class="agree_check">
						<h5>개인정보 취급 위탁에 동의하십니까?</h5>
						<div>
							<input type="radio" name="agree2" id="agree2y" value="동의함">동의함
							<input type="radio" name="agree2" id="agree2n" value="동의안함">동의안함
						</div>
					</div>
					<h5>2. 상담 유형 및 내용 유형 선택 후, 의견을 작성해 주세요.</h5>
					<div class="agree_member">
						<h5><회원></h5>
						<span>- 답변은 고객센터 회신일로부터 15일 이내에만 My VOC메뉴에서 확인 가능하며, 15일 이후에는 확인이 불가능합니다</span>
						<h5><비회원></h5> 
						<span>- 비회원으로 접수하시는 경우 접수 내용 및 답변은 홈페이지에서 확인이 불가능하며 메일 회신을 통해서만 확인 가능합니다.</span>
						<h5>※ 제출된 문의는 수정이 불가능합니다. 수정이 필요한 경우 삭제 후 재작성을 부탁드립니다.</h5>
						<h5>※ 보다 자세한 내용은 고객센터(080-555-3131)로 문의 부탁드립니다.</h5>
					</div>
				</div>
				<div class="details">
					<span><span>*</span>은 필수 입력 항목입니다. (회원이신 경우 로그인 후 문의 접수해 주셔야 이용이 편리합니다.)</span>
					<table>
						<tr>
							<th>상담유형<span>*</span></th>
							<td colspan=3>
								<input type="radio" name="voc_question_type" value="qtype1">칭찬
								<input type="radio" name="voc_question_type" value="qtype2">불만
								<input type="radio" name="voc_question_type" value="qtype3">문의
								<input type="radio" name="voc_question_type" value="qtype4">제안
								<input type="radio" name="voc_question_type" value="qtype5">제보
							</td>
						</tr>
						<tr>
							<th>내용유형<span>*</span></th>
							<td colspan=3>
								<input type="radio" name="voc_content_type" value="ctype1">제품
								<input type="radio" name="voc_content_type" value="ctype2">인적서비스
								<input type="radio" name="voc_content_type" value="ctype3">점포서비스
								<input type="radio" name="voc_content_type" value="ctype4">이벤트
								<input type="radio" name="voc_content_type" value="ctype5">HP카드
								<input type="radio" name="voc_content_type" value="ctype6">모바일쿠폰
								<input type="radio" name="voc_content_type" value="ctype7">기타
							</td>
						</tr>
						<tr>
							<th>제목<span>*</span></th>
							<td colspan=3><input type="text" name="voc_title"></td>
						</tr>
						<tr>
							<th>발생일시</th>
							<td colspan=3><input type="datetime-local" name="voc_date"></td>
						</tr>
						<tr>
							<th>내용<span>*</span></th>
							<td colspan=3><textarea name="voc_content"></textarea></td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan=3><input type="file" name="voc_file"></td>
						</tr>
						<tr>
							<th>이름<span>*</span></th>
							<td class="td"><input type="text" name="voc_name"></td>
							<th>전화번호</th>
							<td>
								<input type="text" name="voc_phone1"> -
								<input type="text" name="voc_phone2"> -
								<input type="text" name="voc_phone3">
							</td>
						</tr>
						<tr>
							<th rowspan=2>이메일<span>*</span></th>
							<td rowspan=2>
								<input type="text" name="voc_emailID"> @
								<input type="text" name="voc_emailAddr" id="voc_emailAddr">
								<select id="selectEmail" onchange="changeEmail()">
									<option value="직접입력">직접입력</option>
									<option value="naver.com">naver.com</option>
									<option value="kakao.com">kakao.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="korea.com">korea.com</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
								</select>
								<p>※ 답변 받으실 메일을 정확히 기재해 주시기 바랍니다.</p>
							</td>
							<th>비밀번호<span>*</span></th>
							<td class="td"><input type="password" name="voc_pass"></td>
						</tr>
						<tr>
							<th>비밀번호 확인<span>*</span></th>
							<td class="td"><input type="password" name="voc_cpass"></td>
						</tr>
					</table>
					<span>※ 전화번호를 입력해주시면 보다 원활한 상담이 가능합니다.</span>
				</div>
				<div>
					<button type="button">저장</button>
				</div>
			</form>
		</section>	
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>