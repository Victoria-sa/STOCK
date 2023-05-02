package com.cursoceat.controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.cursoceat.model.Productos;
import com.cursoceat.servicios.Validacion;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet  implements Validacion{
	private static final long serialVersionUID = 1L;
	String msg=null;
    List<Productos> listadoPro=new ArrayList<Productos>();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String producto=request.getParameter("producto");
		String descripcion=request.getParameter("descripcion");
	//	String cantidad=request.getParameter("cantidad");
			
		if (validarCant(request.getParameter("cantidad"))) {
			int cantidad=Integer.parseInt(request.getParameter("cantidad"));
			Productos vinoB=new Productos(producto.toUpperCase(),pasarPmayuscula(descripcion), cantidad);
			listadoPro.add(vinoB);
			msg="El producto se ha creado correctamente";
			request.getSession().setAttribute("msg", msg);
			request.getSession().setAttribute("producto", listadoPro);
			
			response.sendRedirect("index.jsp");
		}else {
			msg="La cantidad debes ser numérica";
			request.setAttribute("msg", msg);
		
			request.getRequestDispatcher("index.jsp").forward(request, response);
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
