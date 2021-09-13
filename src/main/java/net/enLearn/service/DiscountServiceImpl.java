package net.enLearn.service;

import net.enLearn.dao.DiscountDAOImpl;
import net.enLearn.entity.Discount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DiscountServiceImpl implements DiscountService{

    @Autowired
    DiscountDAOImpl discountDAO;

    @Override
    @Transactional
    public void saveDiscount(Discount discount) {
        this.discountDAO.SaveDiscount(discount);
    }



    @Override
    @Transactional
    public Discount getDiscount(Integer discountID){
        return this.discountDAO.getDiscount(discountID);
    }



    @Override
    @Transactional
    public List<Discount> getAllDiscountByAdminId() {
        return this.discountDAO.getAllDiscountByAdminId();
    }



    @Override
    @Transactional
    public void deleteDiscount(Integer discountID){
        this.discountDAO.deleteDiscount(discountID);
    }
}
