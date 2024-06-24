<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>기업 정보</title>
<style>
body {
    font-family: Pretendard-Regular, Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: flex-start;
    min-height: 100vh;
    overflow-y: auto;
}

.container {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    width: 800px;
    padding: 20px;
    box-sizing: border-box;
    margin-top: 20px;
}

.container h2 {
    margin-top: 0;
    text-align: center;
    font-size: 24px;
}

.info-summary {
    display: flex;
    justify-content: space-around;
    padding: 20px 0;
    border-bottom: 1px solid #ddd;
    margin-bottom: 20px;
}

.summary-item {
    text-align: center;
}

.summary-item img {
    width: 50px;
    height: 50px;
}

.info-group {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    margin-bottom: 10px;
}

.info-group label {
    font-weight: bold;
    width: 30%;
}

.info-group p {
    margin: 0;
    width: 70%;
}

.button-group {
    display: flex;
    justify-content: space-around;
    margin-top: 20px;
}

.button-group button {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.button-group button:hover {
    background-color: #0056b3;
}

.button-group .delete {
    background-color: #dc3545;
}

.button-group .delete:hover {
    background-color: #c82333;
}

.card-container {
    display: flex;
    flex-direction: column;
    gap: 20px;
    margin-top: 20px;
}

.card {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    text-decoration: none;
    color: inherit;
}

.card-content-wrapper {
    padding: 15px;
    display: flex;
    flex-direction: column;
}

.card-content {
    margin-bottom: 10px;
}

.card-title {
    font-size: 18px;
    font-weight: bold;
    margin: 5px 0;
}

.card-text {
    font-size: 14px;
    color: #666;
    margin: 2px 0;
}

.card-footer {
    text-align: right;
    font-size: 12px;
    color: #999;
}
</style>
</head>
<body>
    <div class="container">
        <h2>기업 정보</h2>
        <div class="info-summary">
            <div class="summary-item">
                <img src="" alt="기업형태">
                <p>${business.type}</p>
                <small>기업형태</small>
            </div>
            <div class="summary-item">
                <img src="" alt="사원수">
                <p>${business.employees}명</p>
                <small>사원수</small>
            </div>
            <div class="summary-item">
                <img src="" alt="매출액">
                <p>${business.sales}원</p>
                <small>매출액</small>
            </div>
        </div>
        <div class="info-group">
            <label for="businessId">사업자번호</label>
            <p>${business.businessId}</p>
        </div>
        <div class="info-group">
            <label for="businessPw">비밀번호</label>
            <p>${business.businessPw}</p>
        </div>
        <div class="info-group">
            <label for="businessName">회사명</label>
            <p>${business.businessName}</p>
        </div>
        <div class="info-group">
            <label for="address">주소</label>
            <p>${business.address}</p>
        </div>
        <div class="info-group">
            <label for="salary">급여</label>
            <p>${business.salary}</p>
        </div>
        <div class="info-group">
            <label for="welfare">복리후생</label>
            <p>${business.welfare}</p>
        </div>
        <div class="info-group">
            <label for="ceo">CEO</label>
            <p>${business.ceo}</p>
        </div>
        <div class="info-group">
            <label for="industry">산업</label>
            <p>${business.industry}</p>
        </div>
        <div class="info-group">
            <label for="detailIndustry">세부 산업</label>
            <p>${business.detailIndustry}</p>
        </div>
        <div class="info-group">
            <label for="homepage">홈페이지</label>
            <p>${business.homepage}</p>
        </div>
        <div class="info-group">
            <label for="content">설명</label>
            <p>${business.content}</p>
        </div>
        <div class="info-group">
        <label for="content">채용정보</label>
        </div>
        <div class="card-container">
            <c:set var="annoId" value="${annoId}" />
            <c:forEach var="businessAnno" items="${li}">
                <c:if test="${business.businessId eq businessAnno.businessId}">
                    <a href="${pageContext.request.contextPath}/anno/business-anno-info?annoId=${businessAnno.annoId}" class="card">
                        <div class="card-content-wrapper">
                            <div class="card-content">
                                <div class="card-title">${businessAnno.annoId}</div>
                                <div class="card-title">${businessAnno.businessId}</div>
                                <div class="card-title">${businessAnno.businessName}</div>
                                <div class="card-text">Title: ${businessAnno.annoTitle}</div>
                                <div class="card-text">Grade: ${businessAnno.annoGrade}</div>
                                <div class="card-text">Type: ${businessAnno.annoWorkType}</div>
                                <div class="card-text">Place: ${businessAnno.annoWorkPlace}</div>
                            </div>
                            <div class="card-footer">
                                <fmt:formatDate value="${businessAnno.annoDate}" pattern="yyyy-MM-dd" />
                            </div>
                        </div>
                    </a>
                </c:if>
            </c:forEach>
        </div>
        <c:if test="${sessionScope.businessId eq business.businessId}">
            <div class="button-group">
                <a href="${pageContext.request.contextPath}/business/business-update"><button>수정하기</button></a>
                <a href="${pageContext.request.contextPath}/business/business-main"><button>홈으로</button></a>
                <a href="${pageContext.request.contextPath}/business/business-delete"><button class="delete">탈퇴하기</button></a>
            </div>
        </c:if>
        <c:if test="${sessionScope.businessId ne business.businessId}">
            <div class="button-group">
                <a href="${pageContext.request.contextPath}/business/business-main"><button>홈으로</button></a>
            </div>
        </c:if>
    </div>
</body>
</html>