/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

/**
 *
 * @author docao
 */
public class FilerCategoryController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        List<Category> listCategories = new CategoryDAO().getAllCategories();
        request.setAttribute("listCategories", listCategories);
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

//        int pagesize = 10;
//        int page = 1;
//        String pageStr = request.getParameter("page");
//        if (pageStr != null) {
//            page = Integer.parseInt(pageStr);
//        }
//
//        ProductDAO productDAO = new ProductDAO();
//        List<Product> listProducts = productDAO.getProductsWithPagging(page, pagesize);
//        int totalProducts = productDAO.getTotalProducts();
//        int totalPage = totalProducts / pagesize;
//        if (totalProducts % pagesize != 0) {
//            totalPage += 1;
//        }
//        request.setAttribute("page", page);
//        request.setAttribute("totalPage", totalPage);
//        
//        List<Product> listProduct = new ProductDAO().getProductsByCategoryID_andPaging(categoryId, page, pagesize);
        
        List<Product> listProduct = new ProductDAO().getProductsByCategoryID(categoryId);
        request.setAttribute("listProducts", listProduct);
        request.setAttribute("category", categoryId);
        request.getRequestDispatcher("shop-slidebar.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
