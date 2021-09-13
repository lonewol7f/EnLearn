package net.enLearn.service;

import net.enLearn.dao.DiscountDAOImpl;
import net.enLearn.entity.Discount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DiscountServiceImpl implements DiscountService{

    @Autowired
    DiscountDAOImpl discountDAO;

    @Override
    @Transactional
    public void saveDiscount(Discount discount) {
        this.discountDAO.SaveDiscount(discount);
    }
}
