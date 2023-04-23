<c:if test="${isCloud == true}">
            <div>
              Active Users:
                <c:out value="${activeUsers}"/>
            </div>
            <div>
              Evaluation:
                <c:out value="${license.evaluation}"/>
            </div>
            <div>
              License Key:
                <c:out value="${license.entitlementNumber}" default="---"/>
            </div>
            <div>
              License Type:
                <c:out value="${license.type}"/>
            </div>
          </c:if>
          <c:if test="${license.isKeyInstalled == true}">
            <div>
            License Key: [<a href="<c:url value='/license.html?update=true'/>">Update License Key</a>]
            <div class="license-long">
              ${license.licenseKey}
            </div>
            </div>
            <div>License Id:
              <c:out value="${license.licenseId}" default="--"/>
            </div>
            <div>License Type:
              <c:out value="${license.licenseType}"/>
              <!--<c:choose>
                <c:when test="${license.isTrialLicense == false}">
                  Production License
                </c:when>
                <c:otherwise>
                  Trial License
                </c:otherwise>
              </c:choose>
              -->
            </div>
            <div>
              <c:choose>
                <c:when test="${license.isTimeLimited == false}">
                  Time Limit: Unlimited
                </c:when>
                <c:otherwise>
                  Expiry Date: <fmt:formatDate value="${license.expiryDate}" pattern="dd MMM yyyy"/>
                </c:otherwise>
              </c:choose>
            </div>
            <c:if test="${license.isSupportTimeLimited != null}">
              <div>
                <c:choose>
                  <c:when test="${license.isSupportTimeLimited == false}">
                    Support Time Limit: Unlimited
                   </c:when>
                  <c:otherwise>
                    Support Expiry Date: <fmt:formatDate value="${license.supportExpiryDate}" pattern="dd MMM yyyy"/>
                  </c:otherwise>
                </c:choose>
              </div>
            </c:if>
            <div>
              No of Users: 
              <c:choose>
                <c:when test="${license.isUserLimited == false}">
                  Unlimited
                </c:when>
                <c:otherwise>
                  <c:out value="${license.noOfUsers}"/>
                </c:otherwise>
              </c:choose>
            </c:if>
          </div>
          <c:if test="${license.isKeyInstalled == false}">
            <div>
              License key is not installed
            </div>
          </c:if>
