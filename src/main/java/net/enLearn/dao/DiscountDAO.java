package net.enLearn.dao;

import net.enLearn.entity.Discount;

public interface DiscountDAO {
    public int SavaDiscount(Discount discount);
    public int UpdateDiscount(Discount discount);
    public int DeleteDiscount(Discount discount);
    public Discount GetDiscount(Integer id);
}
