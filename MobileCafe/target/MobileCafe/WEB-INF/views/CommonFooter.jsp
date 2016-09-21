<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
</br>
</br>
</br>
<font color="ffffff">

<%
    Integer hitsCount =(Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 )
    {
       /* First visit */
      // out.println("Welcome to lootle.com!");
       hitsCount = 1;
    }
    else
    {
       /* return visit */
       //out.println("Welcome to lootle.com!");
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
<center><p>Total number of visits: <%= hitsCount%></p></center></font>
<div size="5" align="center" >
<h5 style="color:#ffffff">
Brand Directory :
<a href="http://www.apple.com/in/iphone/">Apple</a> | 
<a href="http://www.dell.co.in">Dell</a> | 
<a href="http://www.lavamobiles.com"> Lava</a> | 
<a href="http://http://www.lenovo.com/in/en">Lenovo </a> |
 <a href="http://http://www.micromaxinfo.com">Micromax</a> | 
 <a href="https://www.microsoft.com/en-in/mobile/">Microsoft |
 <a href="http://www.samsung.com/in/consumer/mobile-devices/smartphones"> Samsung  |
 <a href="http://www.sonymobile.com/in"> Sony | 
 <a href="http://www.oppo.com/in/index.html">OPPO |
 <a href="http://http://www.zenmobile.in"> ZEN
 </h5>
</div>

</body>
</html>