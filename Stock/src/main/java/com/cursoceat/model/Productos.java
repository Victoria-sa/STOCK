package com.cursoceat.model;


public class Productos {
	static int idPF;
	private int idPI;
	private String producto;
	private String descripcion;
	private int cantidad;
	public Productos( String producto, String descripcion, int cantidad) {
		this.idPI = ++idPF;
		this.producto = producto;
		this.descripcion = descripcion;
		this.cantidad = cantidad;
		
	}
	public String getProducto() {
		return producto;
	}
	public void setProducto(String producto) {
		this.producto = producto;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public int getIdPI() {
		return idPI;
	}
	@Override
	public String toString() {
		return "Productos [idPI=" + idPI + ", producto=" + producto + ", descripcion=" + descripcion + ", cantidad="
				+ cantidad + "]";
	}
	

}

