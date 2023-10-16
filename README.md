# SpringBoot-Project-MODERNHOME
스프링 부트 + MES 프로그램
<br>
<br>
<br>

<div align="center">
<img width="500" alt="Untitled (1)" src="https://github.com/kimhyejin1030/Java/assets/131628934/ef6f2881-33bd-4277-a0bd-94cf2fffecee">
</div>

## 🖥️ 프로젝트 소개
MODERNHOME은 상용 클라우드 서비스를 활용한 가구판매업 MES 시스템입니다.<br><br>
** MES( Manufacturing Execution System , 제조 실행 시스템 )란?<br>
생산공정 내의 모든 자원(장비,자재 등)의 공정단위의 생산계획을 현장에서 실행 및 생산 관련 품질 데이터까지 다루는 공장정보화 시스템<br>
공정계획에 따른 작업물량과 작업 순서, 조업 진행 상황등의 정보를 기록하거나 확인할 수 있다.   
<br>
<br>

## 🕰️ 개발 기간
* 2023년 05월 31일 ~ 2023년 07월 31일

### 📍 설계 주안점
- 생산관리, 불량관리, 입/출고관리, 수주/발주관리, 사원관리

### 🧑‍🤝‍🧑 맴버구성
 - 팀장  : 나진우 - 출고, 자재정보검색
 - 팀원1 : 권대휘 - 간편로그인,회원가입,수주관리,실적,사원조회
 - 팀원2 : 김규리 - 발주관리,입고관리,CSS 총담당
 - 팀원3 : 김혜진 - 생산라인관리,수입검사,공정검사,출고검사
 - 팀원4 : 이소라 - 작업지시관리,작업지시관리,생산실적관리,불량관리
 - 팀원5 : 이형진 - 거래처관리,출하관리
 - 팀원6 : 정예진 - 품목관리,소요량관리,재고현황,자재출고관리,제품출고관리

### ⚙️ 개발 환경
- `Java 11`
- `JDK 11.0.15`
- **IDE** : STS 3.9
- **Framework** : Springboot(2.x)
- **Database** : Mysql
- **ORM** : Mybatis

<br>

## 📌 주요 기능
#### 로그인 - <a href="https://github.com/chaehyuenwoo/SpringBoot-Project-MEGABOX/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(Login)" >상세보기 - WIKI 이동</a>
- DB값 검증
- ID찾기, PW찾기
- 로그인 시 쿠키(Cookie) 및 세션(Session) 생성
#### 회원가입 - <a href="https://github.com/chaehyuenwoo/SpringBoot-Project-MEGABOX/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(Member)" >상세보기 - WIKI 이동</a>
- 주소 API 연동
- ID 중복 체크
#### 마이 페이지 - <a href="https://github.com/chaehyuenwoo/SpringBoot-Project-MEGABOX/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(Member)" >상세보기 - WIKI 이동</a>
- 주소 API 연동
- 회원정보 변경

#### 영화 예매 - <a href="https://github.com/chaehyuenwoo/SpringBoot-Project-MEGABOX/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(%EC%98%81%ED%99%94-%EC%98%88%EB%A7%A4)" >상세보기 - WIKI 이동</a>
- 영화 선택(날짜 지정)
- 영화관 선택(대분류/소분류 선택) 및 시간 선택
- 좌석 선택
- 결제 페이지
- 예매 완료
#### 메인 페이지 - <a href="https://github.com/chaehyuenwoo/SpringBoot-Project-MEGABOX/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(%EB%A9%94%EC%9D%B8-Page)" >상세보기 - WIKI 이동</a>
- YouTube API 연동
- 메인 포스터(영화) 이미지 슬라이드(CSS)
#### 1대1문의 및 공지사항 - <a href="" >상세보기 - WIKI 이동</a> 
- 글 작성, 읽기, 수정, 삭제(CRUD)

#### 관리자 페이지 
- 영화관 추가(대분류, 소분류)
- 영화 추가(상영시간 및 상영관 설정)




    


    
