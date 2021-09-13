package net.enLearn.service;

import net.enLearn.entity.Discount;

import java.util.List;

public interface DiscountService {
    public void saveDiscount(Discount discount);
    public Discount getDiscount(Integer discountID);
    public List<Discount> getAllDiscountByAdminId();
    public void deleteDiscount(Integer discountID);
}
