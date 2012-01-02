package com.aramco.rcd.dao.lookup;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.aramco.rcd.entity.common.LogonUser;

public interface IEPMapper {

	@Select("select granted_role from dba_role_privs where (granted_role = 'RCD_PORTAL_SELECT' or granted_role = 'RCD_PORTAL_IUD' ) and grantee = user")
	List<String> selectUserRoles();
	
	
	
	@Select("select NVL(DIV,'NA') userDivision,ADMIN_FLG appAdmin,GOC_FLG gocMember,E.FULL_NAME userFullName, \n"+
			"		NVL(A.ASSIGNEE_TYPE,'G') userCategory,BADGE_NUM userBadgeNo,TEAM userTeam \n"+
			"  from exad_rcd_well_assignees a ,emp_org_vw e \n"+
			" where a.network_id = e.network_id  \n"+
			"   and a.network_id = user and a.status = 'Y'") 
    LogonUser getUser();
    
	
}

