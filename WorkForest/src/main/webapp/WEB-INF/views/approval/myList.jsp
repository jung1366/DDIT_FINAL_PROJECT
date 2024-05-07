<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/tiles/taglib.jsp"%>
<script src="${_script}/common/util.js"></script>
<script src="${_script}/common/pagination.js"></script>
<script src="${_script}/approval/html.js"></script>
<script src="${_script}/approval/myList.js"></script>

<!-- =============== 상단타이틀영역 시작 =============== -->
<div class="wf-tit-wrap" data-aos="fade-right" data-aos-duration="700" data-aos-delay="0">
    <h1 class="page-tit">내 문서함</h1>
    <div class="side-util">
    	<a href="${_ctx}/approval/createView" class="btn2">결재 작성</a>
    </div>
</div>
<!-- =============== 상단타이틀영역 끝 =============== -->

<!-- =============== 컨텐츠 영역 시작 =============== -->
<input type="hidden" id="empNo" value="<%= session.getAttribute("empNo") %>">
<div class="wf-content-wrap" data-aos="fade-right" data-aos-duration="700" data-aos-delay="200">
    <div class="tab-type tab-type2">
        <div class="tab-menu">
            <!-- "active"가 추가되면 메뉴가 활성화됩니다. -->
            <button type="button" class="tab-btn active">결재 대기</button>
            <button type="button" class="tab-btn">결재 진행</button>
            <button type="button" class="tab-btn">결재 완료</button>
            <button type="button" class="tab-btn">반려</button>
            <button type="button" class="tab-btn">회수</button>
            <button type="button" class="tab-btn">임시 저장함</button>
            <div class="tab-indicator"></div>
        </div>

        <!-- tab-content에 "active"가 추가되면 컨텐츠창이 활성화됩니다. -->
        <!-- tab1  -->
        <div class="tab-content tab-content1 active">
            <div class="tab-board-lst">

                <div class="wf-content-area">
                    <table class="wf-table">
                        <colgroup></colgroup>
                        <thead></tead>
                        <tbody></tbody>
                    </table>
                </div>

                <!-- 페이지네이션 시작 -->
                <nav class="wf-pagination-wrap">
                    <ul id="PAGINAION" class="pagination"></ul>
                </nav>
                <!-- 페이지네이션 끝 -->

                <!-- 검색영역 시작 -->
                <div class="wf-search-area">
                    <div class="select-box">
                        <select id="SEARCH_TYPE">
                            <option selected>검색</option>
                            <option value="1">제목</option>
                            <option value="2">작성자</option>
                        </select>
                    </div>
                    <input id="SEARCH_VALUE" type="text" placeholder="검색할 내용을 입력해주세요">
                    <button id="SEARCH_BTN" type="button" class="btn4">
                        <i class="xi-search"></i>
                    </button>
                </div>
                <!-- 검색영역 끝 -->
            </div>
        </div>
    </div>
</div>
<!-- =============== 컨텐츠 영역 끝 =============== -->