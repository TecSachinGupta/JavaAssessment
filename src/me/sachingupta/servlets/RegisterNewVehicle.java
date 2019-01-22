package me.sachingupta.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.sachingupta.CloudantDatabase;
import me.sachingupta.dao.VehicleInfo;

/**
 * Servlet implementation class RegisterNewVehicle
 */
@WebServlet("/RegisterNewVehicle")
public class RegisterNewVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterNewVehicle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		String make = request.getParameter("make");
		String model = request.getParameter("model");
		String year = request.getParameter("year");
		
		VehicleInfo v = new VehicleInfo(make, model, year);
		int status = CloudantDatabase.addData(v);
		if(status != -1){
			response.sendRedirect(request.getContextPath() + "/Register.jsp?status=success");
		}
		else{
			response.sendRedirect(request.getContextPath() + "/Register.jsp?status=failure");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
