/**
 * 관리자페이지 회원관리  member.jsp
 */
let frmMemberSearch = document.frm_member_search;

if(frmMemberSearch != null) {
	frmMemberSearch.btnMemberSearch.addEventListener('click', function() {
		frmMemberSearch.action = 'action.admin?job=memberSearch';
		frmMemberSearch.submit();	
	});
}

function memberView(id) {
	frmMemberSearch.action = 'action.admin?job=memberView&id=' + id;
	frmMemberSearch.submit();
}

function movePage(nowPage) {
	frmMemberSearch.action = 'action.admin?job=select';
	frmMemberSearch.nowPage.value = nowPage;
	frmMemberSearch.submit();
}

