package com.dqz.tools;

import java.util.Date;



public class MyUtil {

	public static String getNewFileName(String name) {

		Integer index = name.lastIndexOf(".");

		name = name.substring(index);

		String fileName = new Date().getTime() + "";

		return fileName + name;
	}

	/*public static ProductCondition getProductsByCons(
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		String name = request.getParameter("pname");
		String priceFrom = request.getParameter("priceFrom");
		String priceTo = request.getParameter("priceTo");
		String onSaleTimeFrom = request.getParameter("onSaleTimeFrom");
		String onSaleTimeTo = request.getParameter("onSaleTimeTo");
		Double pfrom = null, pto = null;
		Date saleFrom = null, saleTo = null;

		if (!IsEmptyUtils.isEmpty(priceFrom)) {
			pfrom = Double.parseDouble(priceFrom);
		}
		if (!IsEmptyUtils.isEmpty(priceTo)) {
			pto = Double.parseDouble(priceTo);
		}
		if (!IsEmptyUtils.isEmpty(onSaleTimeFrom)) {
			saleFrom = DateUtil.parseDate(onSaleTimeFrom);
		}
		if (!IsEmptyUtils.isEmpty(onSaleTimeFrom)) {
			saleTo = DateUtil.parseDate(onSaleTimeTo);
		}
		PrintWriter out = response.getWriter();
		if (saleFrom != null && saleTo != null && saleFrom.after(saleTo)) {
			out.println("查询上限日期不能晚于下限日期");
			out.flush();
			out.close();
			return null;
		}
		ProductCondition condition = new ProductCondition(name, pfrom, pto,
				saleFrom, saleTo);
		return condition;
	}



public static Product getProducts(HttpServletRequest request, HttpServletResponse response)
		throws IOException{
	
	Product p=new Product();
	//获取请求中数据，封装到商品对象中
	p.setId(Integer.parseInt(request.getParameter("id")));
	p.setName(request.getParameter("name"));
	p.setCategoryId(Integer.parseInt(request.getParameter("categoryid")));
	p.setSellPrice(Double.parseDouble(request.getParameter("sellPrice")));
	p.setDiscountPrice(Double.parseDouble(request.getParameter("discountPrice")));
	p.setBrand(request.getParameter("brand"));
	p.setSize(request.getParameter("size"));
	p.setType(request.getParameter("type"));
	p.setFactory(request.getParameter("factory"));
	p.setArea(request.getParameter("area"));
	p.setOtherParas(request.getParameter("otherParas"));
	p.setCanUse(request.getParameter("canUse"));
	p.setDescription(request.getParameter("descripation"));
	
	return p;
	
	
}
*/

}