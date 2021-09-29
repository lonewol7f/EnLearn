package net.enLearn.dao;

import net.enLearn.entity.Discount;

import java.util.List;

public interface DiscountDAO {
    public void SaveDiscount(Discount discount);
    public Discount getDiscount(Integer discountId);
    public List<Discount> getAllDiscountByAdminId();
    public void deleteDiscount(Integer discountID);
    void updateDiscount(Discount discountID);
}
