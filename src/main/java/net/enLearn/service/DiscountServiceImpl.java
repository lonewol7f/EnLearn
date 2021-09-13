package net.enLearn.service;

import net.enLearn.dao.DiscountDAOImpl;
import net.enLearn.entity.Discount;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DiscountServiceImpl implements DiscountService{

    DiscountDAOImpl discountDAO;

    @Override
    @Transactional
    public void saveDiscount(Discount discount) {
        this.discountDAO.SaveDiscount(discount);
    }
}
