package net.enLearn.service;

import net.enLearn.entity.Expense;

import java.util.List;

public interface ExpenseService1 {

    List<Expense> getAllExpenses();
    void saveOrUpdate(Expense expense);
    Expense getExpenseById(int id);
    void deleteExpense(int expense);

}