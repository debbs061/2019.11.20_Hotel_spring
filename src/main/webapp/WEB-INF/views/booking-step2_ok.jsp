<%@ page contentType="text/html; charset=UTF-8"%>
<%
String card = request.getParameter("card");
double price=  Double.parseDouble(request.getParameter("price"));

int offPrice = 0;
int newPrice =0;
int off = 0; // %율

if (card.equals("no")) {
	off = 0;
	offPrice = (int)price;
	newPrice = (int)price;
}

if (card.equals("visa")) {
	off = 20;
	newPrice = (int)price;
	price = price * 0.8;
	offPrice = (int)price;
}

if (card.equals("master")) {
	off = 10;
	newPrice = (int)price;
	price = price * 0.9;
	offPrice = (int)price;
}

if (card.equals("american")) {
	off = 40;
	newPrice = (int)price;
	price = price * 0.6;
	offPrice = (int)price;
}

if (card.equals("maestro")) {
	off = 30;
	newPrice = (int)price;
	price = price * 0.7;
	offPrice = (int)price;
}

if (card.equals("what")) {
	off = 30;
	newPrice = (int)price;
	price = price * 0.7;
	offPrice = (int)price;
}



%>

                    <div class="ed-total">
                      <span class="total-offer">
                        <span id="resultDIV"><%=off %></span>off
                      </span>
                      <div class="ed-total-price">
                        <span class="offer-price"><%=newPrice %></span>
                        <span class="total-price"><%=offPrice %></span>
                      </div>
                      
                    </div>