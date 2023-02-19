package com.codegym.casemd3.service.mySQL;

import com.codegym.casemd3.model.Barchart;
import com.codegym.casemd3.model.CustomerType;
import com.codegym.casemd3.service.IBarChartService;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MSBarChartService extends DBContext implements IBarChartService {
    private static final String SELLECT_ALL_BARCHART = "select `name`, count(id_product) as `quantity`, sum(p.price * oi.quantity) as `total` from product p join order_item oi on p.id = oi.id_product group by name;";
    @Override
    public List<Barchart> getAllBarChart() {
        List<Barchart> barcharts = new ArrayList<>();
        Connection connection = getConnection();
        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(SELLECT_ALL_CUSTOMER);

            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(SELLECT_ALL_BARCHART);
            while (rs.next()) {
                Barchart c = getBarChartFromRs(rs);
                barcharts.add(c);
            }

            System.out.println("getAllCustomerTypes: " + statement.toString());
        } catch (SQLException e) {
            printSQLException(e);
        }
        return barcharts;
    }

    private Barchart getBarChartFromRs(ResultSet rs) throws SQLException {
        Barchart barchart = new Barchart();
        int quantity = rs.getInt("quantity");
        String name = rs.getString("name");
        double total = rs.getDouble("total");

        barchart.setQuantity(quantity);
        barchart.setName(name);
        barchart.setSum(total);
        return barchart;
    }
}
