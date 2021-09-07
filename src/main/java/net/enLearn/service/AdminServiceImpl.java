package net.enLearn.service;

import net.enLearn.dao.AdminDAO;
import net.enLearn.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Kalana on 07/09/2021
 */

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDAO adminDAO;

    @Override
    @Transactional
    public Admin getAdminById(int adminId) {
        return adminDAO.getAdminById(adminId);
    }
}
