# SpringBoot-Project-MODERNHOME
스프링 부트 + MES 프로그램
<br>
<br>
<br>

<div align="center">
<img width="500" alt="Untitled (1)" src="https://github.com/kimhyejin1030/Java/assets/131628934/ef6f2881-33bd-4277-a0bd-94cf2fffecee">
</div>
<br>

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
#### 메인페이지 - <a href="https://github.com/chaehyuenwoo/SpringBoot-Project-MEGABOX/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(Login)" >상세보기 - WIKI 이동</a>
- 각 부서별 실적 그래프 
#### 기준정보관리 - <a href="https://github.com/chaehyuenwoo/SpringBoot-Project-MEGABOX/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(Member)" >상세보기 - WIKI 이동</a>
- 품목관리(완제품/자재) : 자재 추가, 읽기, 수정, 삭제(CRUD)
- 소요량관리 : 완제품 BOM 출력 및 인쇄, 팝업 생성, 소요량 추가/읽기/수정/삭제(CRUD)
#### 자재관리 - <a href="https://github.com/chaehyuenwoo/SpringBoot-Project-MEGABOX/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(Member)" >상세보기 - WIKI 이동</a>
- 발주관리 : 발주서 출력 및 인쇄, 검색기능, 발주 등록/읽기/수정/삭제(CRUD), 엑셀다운, 팝업창
- 입고관리 : 입고 추가/읽기/수정/삭제(CRUD), 검색기능, 팝업창, 버튼을 통한 입고처리 변경 가능
- 자재출고관리 : 작업지시서 추가/읽기/수정/삭제(CRUD), 검색기능, 팝업창, 주문수량과 현 재고수에 따른 출고상태 자동변경
- 제품출고관리 : 제품출고 추가/읽기/수정/삭제(CRUD), 검색기능, 팝업창, 조건에 따른 제품출고 등록 
- 재고현황 : 탭을 통해 목록 구분, 검색기능
- 자재정보검사 : 조회기능, 공정상태에 따른 공정정보 표

#### 생산관리 - <a href="https://github.com/chaehyuenwoo/SpringBoot-Project-MEGABOX/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(%EC%98%81%ED%99%94-%EC%98%88%EB%A7%A4)" >상세보기 - WIKI 이동</a>
- 생산라인관리 : 라인 등록/읽기/수정/삭제(CRUD), 버튼을 통해 라인 상태 변경, 팝업창, 조회기능
- 작업지시관리 : 작업지시 등록/읽기/수정/삭제(CRUD), 팝업창, 소요량 자동변경
- 생산실적관리 : 생산실적 등록/읽기/수정/삭제(CRUD), 조회기능, 팝업창, 조건에 부합한 것만 실적 등록 가능
  
#### 영업관리 - <a href="https://github.com/chaehyuenwoo/SpringBoot-Project-MEGABOX/wiki/%EC%A3%BC%EC%9A%94-%EA%B8%B0%EB%8A%A5-%EC%86%8C%EA%B0%9C(%EB%A9%94%EC%9D%B8-Page)" >상세보기 - WIKI 이동</a>
- 거래처관리 : 연락처 입력시 자동 하이픈 생성, 숫자 이외 문자 입력 불가, 조회기능, 거래처 목록 등록/읽기/수정/삭제(CRUD)
- 수주관리 : 수주서 인쇄 및 출력, 수주 목록 등록/읽기/수정/삭제(CRUD), 조회기능, 팝업창
- 출하관리 : 출하 목록 등록/읽기/수정/삭제(CRUD), 조회기능, 팝업창, 버튼을 통한 수주상태 자동변경
  
#### 품질관리 - <a href="" >상세보기 - WIKI 이동</a> 
- 수입검사 : 검수량과 입고량에 따른 검수상태 자동변경, 조회기능
- 공정검사 : 검수량과 작업량에 따른 검수상태 자동변경, 조회기능
- 출고검사 : 검수량과 주문수량에 따른 검수상태 자동변경, 조회기능
- 불량관리 : 불량 등록/읽기/수정/삭제(CRUD), 권한에 따른 수리 및 폐기, 수정 기능 제한, 조회기능

#### 사원관리 
- 사원조회 : 사원 등록/읽기/수정/삭제(CRUD), 직급에 따른 권한 부여




    


    
