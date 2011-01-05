<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
  <div id="divTabStrip" style="overflow: hidden;">

<%var isAdmin = false;
      isAdmin = HttpContext.Current.User.IsInRole("Admin");  
         %>
         
                    <script type="text/javascript">

                        function siteNavigation_selectTab(item) {

                            if (item) {
                                if (typeof item == 'string') {
                                    item = document.getElementById(item);
                                }

                                if (item) {
                                    siteNavigation.doSelectItem(item, true);
                                }
                            }
                        }   

                    </script>

      <div id="divmenu">
          <table id="snTabbedUI" class="agnav_default" border="0" cellpadding="0" cellspacing="0">
              <tr>
                  <td>
                  </td>
                  <td>
                      <div>
                          <table border="0" cellpadding="0" cellspacing="0" style="margin-left: auto;">
                              <tr>
                                  <td id="Td1" class="item level1">
                                      <a class="link " href="../Dashboard/Index"><span class="text ">Home</span> </a>
                                  </td>
                                  <%if (isAdmin)
                              { %>
                                  <td id="DASHBOARD-PROJECT" class="item level1" onmouseenter="this.className += ' hover';"
                                      onmouseleave="this.className = this.className.replace(' hover', '');">
                                      <a class="link " href="../Project/EditProject"><span class="text ">Project</span>
                                      </a>
                                  </td>
                                  <td id="DASHBOARD-SCHEDULING" class="item level1" onmouseenter="this.className += ' hover';"
                                      onmouseleave="this.className = this.className.replace(' hover', '');">
                                      <a class="link " href="../Resource/Schedule"><span class="text ">Scheduling</span>
                                      </a>
                                  </td>
                                  <td id="Td2" class="item level1" onmouseenter="this.className += ' hover';" onmouseleave="this.className = this.className.replace(' hover', '');">
                                      <a class="link " href="../Resource"><span class="text ">Resources</span>
                                      </a>
                                  </td>
                                  <td id="Td3" class="item level1" onmouseenter="this.className += ' hover';" onmouseleave="this.className = this.className.replace(' hover', '');">
                                      <a class="link " href="../Timesheets"><span class="text ">Time Sheets</span>
                                      </a>
                                  </td>
                                  <%}
                              else
                              {%>
                                  <td id="DASHBOARD-MYWORK" class="item level1" onmouseenter="this.className += ' hover';"
                                      onmouseleave="this.className = this.className.replace(' hover', '');">
                                      <a class="link " href="../MyWork"><span class="text ">My Work</span> </a>
                                  </td>
                                  <%} %>
                              </tr>
                          </table>
                      </div>
                  </td>
                  <td>
                  </td>
              </tr>
          </table>
      </div>
                </div>