!function(){function e(){d.val("0"),t.val(""),n.val(""),i.val(""),$("#adviceErrMsg").html(""),a()}function a(){$("#adviceErrMsg").addClass("hidden"),$("#adviceTypeErrMsg").addClass("hidden"),$("#adviceType").removeClass("has-error"),$("#adviceContentErrMsg").addClass("hidden"),$("#adviceContent").removeClass("has-error"),$("#adviceContactErrMsg").addClass("hidden"),$("#adviceContact").removeClass("has-error"),$("#adviceNameErrMsg").addClass("hidden"),$("#adviceName").removeClass("has-error")}function r(){a();var e=t.val().toString().trim(),r=d.val().toString().trim(),s=i.val().toString().trim(),o=n.val().toString().trim();return 0==r?($("#adviceTypeErrMsg").removeClass("hidden"),$("#adviceType").addClass("has-error"),!1):""==e||e.length<1?($("#adviceContentErrMsg").removeClass("hidden"),$("#adviceContent").addClass("has-error"),!1):e&&e.length>1e3?($("#adviceContentErrMsg").removeClass("hidden"),$("#adviceContentErrMsg").html("������������1000������"),$("#adviceContent").addClass("has-error"),!1):o&&o.length>100?($("#adviceNameErrMsg").removeClass("hidden"),$("#adviceNameErrMsg").html("������������100������"),$("#adviceName").addClass("has-error"),!1):""==s||s.length<1?($("#adviceContactErrMsg").removeClass("hidden"),$("#adviceContact").addClass("has-error"),!1):!(s&&s.length>100)||($("#adviceContactErrMsg").removeClass("hidden"),$("#adviceContactErrMsg").html("��ϵ��ʽ��������100������"),$("#adviceContact").addClass("has-error"),!1)}var s=$("#btnAdviceSubmit"),d=($("#adviceForm"),$("#suggestType")),t=$("#suggestContent"),n=$("#suggestName"),i=$("#suggestConn"),o={};d.change(function(){var e=d.val().toString().trim();0!=e?($("#adviceTypeErrMsg").addClass("hidden"),$("#adviceType").removeClass("has-error")):($("#adviceTypeErrMsg").removeClass("hidden"),$("#adviceType").addClass("has-error"))}),t.blur(function(){var e=t.val().toString().trim();""==e||e.length<1?($("#adviceContentErrMsg").removeClass("hidden"),$("#adviceContent").addClass("has-error")):e&&e.length>1e3?($("#adviceContentErrMsg").removeClass("hidden"),$("#adviceContentErrMsg").html("������������1000������"),$("#adviceContent").addClass("has-error")):($("#adviceContentErrMsg").addClass("hidden"),$("#adviceContent").removeClass("has-error"))}),n.blur(function(){var e=n.val().toString().trim();return e&&e.length>100?($("#adviceNameErrMsg").removeClass("hidden"),$("#adviceNameErrMsg").html("������������100������"),$("#adviceName").addClass("has-error"),!1):($("#adviceNameErrMsg").addClass("hidden"),void $("#adviceName").removeClass("has-error"))}),i.blur(function(){var e=i.val().toString().trim();return""==e||e.length<1?($("#adviceContactErrMsg").removeClass("hidden"),$("#adviceContact").addClass("has-error"),!1):e&&e.length>100?($("#adviceContactErrMsg").removeClass("hidden"),$("#adviceContactErrMsg").html("��ϵ��ʽ��������100������"),$("#adviceContact").addClass("has-error"),!1):($("#adviceContactErrMsg").addClass("hidden"),void $("#adviceContact").removeClass("has-error"))}),s.click(function(){var a=r();a&&(o.type=d.val().toString().trim(),o.content=t.val().toString().trim(),o.name=n.val().toString().trim(),o.contact=i.val().toString().trim(),$.ajax({type:"POST",url:"/user/feedback.do",data:{type:o.type,content:o.content,name:o.name,contact:o.contact},dataType:"JSON",success:function(a){a.success?($("#myModal").modal("hide"),$("#sendModal").modal("show"),setTimeout(function(){$("#sendModal").modal("hide")},2e3),e()):($("#adviceErrMsg").removeClass("hidden"),$("#adviceErrMsg").html(a.message))},error:function(e){}}))})}();