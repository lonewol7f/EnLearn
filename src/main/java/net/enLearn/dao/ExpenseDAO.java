package net.enLearn.dao;

import net.enLearn.entity.Expense;

import java.util.List;

public interface ExpenseDAO {
    Expense getExpenseById(int id);
    void saveOrUpdate(Expense expense);
    List<Expense> getAllExpense();

    void delete(int expense);

}
