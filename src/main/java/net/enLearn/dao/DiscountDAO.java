package net.enLearn.dao;

import net.enLearn.entity.Discount;

public interface DiscountDAO {
    public int SavaDiscount(Discount discount);
    public int UpdateDiscount(Discount discount);
    public int DeleteDiscount(Integer id);
    public Discount GetDiscount(Integer id);
}
