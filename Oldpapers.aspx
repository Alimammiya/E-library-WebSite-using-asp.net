<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Oldpapers.aspx.cs" Inherits="Oldpapers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <style>
        
#cssmenu {
  padding: 0;
  margin: 0;
  border: 0;
  line-height: 1;
}
#cssmenu ul,
#cssmenu ul li,
#cssmenu ul ul {
  list-style: none;
  margin: 0;
  padding: 0;
}
#cssmenu ul {
  position: relative;
  z-index: 597;
  float: left;
}
#cssmenu ul li {
  float: left;
  min-height: 1px;
  line-height: 1em;
  vertical-align: middle;
  position: relative;
}
#cssmenu ul li.hover,
#cssmenu ul li:hover {
  position: relative;
  z-index: 599;
  cursor: default;
}
#cssmenu ul ul {
  visibility: hidden;
  position: absolute;
  top: 100%;
  left: 0px;
  z-index: 598;
  width: 100%;
}
#cssmenu ul ul li {
  float: none;
}
#cssmenu ul ul ul {
  top: -2px;
  right: 0;
}
#cssmenu ul li:hover > ul {
  visibility: visible;
}
#cssmenu ul ul {
  top: 1px;
  left: 99%;
}
#cssmenu ul li {
  float: none;
}
#cssmenu ul ul {
  margin-top: 1px;
}
#cssmenu ul ul li {
  font-weight: normal;
}
/* Custom CSS Styles */
#cssmenu {
  width: 250px;
  background: #333333;
  font-family: 'Oxygen Mono', Tahoma, Arial, sans-serif;
  zoom: 1;
  font-size: 12px;
}
#cssmenu:before {
  content: '';
  display: block;
}
#cssmenu:after {
  content: '';
  display: table;
  clear: both;
}
#cssmenu a {
  display: block;
  padding: 15px 20px;
  color: #ffffff;
  text-decoration: none;
  text-transform: uppercase;
}
#cssmenu > ul {
  width: 250px;
}
#cssmenu ul ul {
  width: 250px;
}
#cssmenu > ul > li > a {
  border-right: 4px solid #1b9bff;
  color: #ffffff;
}
#cssmenu > ul > li > a:hover {
  color: #ffffff;
}
#cssmenu > ul > li.active a {
  background: #1b9bff;
}
#cssmenu > ul > li a:hover,
#cssmenu > ul > li:hover a {
  background: #1b9bff;
}
#cssmenu li {
  position: relative;
}
#cssmenu ul li.has-sub > a:after {
  content: '+';
  position: absolute;
  top: 50%;
  right: 15px;
  margin-top: -6px;
}
#cssmenu ul ul li.first {
  -webkit-border-radius: 0 3px 0 0;
  -moz-border-radius: 0 3px 0 0;
  border-radius: 0 3px 0 0;
}
#cssmenu ul ul li.last {
  -webkit-border-radius: 0 0 3px 0;
  -moz-border-radius: 0 0 3px 0;
  border-radius: 0 0 3px 0;
  border-bottom: 0;
}
#cssmenu ul ul {
  -webkit-border-radius: 0 3px 3px 0;
  -moz-border-radius: 0 3px 3px 0;
  border-radius: 0 3px 3px 0;
}
#cssmenu ul ul {
  border: 1px solid #0082e7;
}
#cssmenu ul ul a {
  font-size: 12px;
  color: #ffffff;
}
#cssmenu ul ul a:hover {
  color: #ffffff;
}
#cssmenu ul ul li {
  border-bottom: 1px solid #0082e7;
}
#cssmenu ul ul li:hover > a {
  background: #4eb1ff;
  color: #ffffff;
}
#cssmenu.align-right > ul > li > a {
  border-left: 4px solid #1b9bff;
  border-right: none;
}
#cssmenu.align-right {
  float: right;
}
#cssmenu.align-right li {
  text-align: right;
}
#cssmenu.align-right ul li.has-sub > a:before {
  content: '+';
  position: absolute;
  top: 50%;
  left: 15px;
  margin-top: -6px;
}
#cssmenu.align-right ul li.has-sub > a:after {
  content: none;
}
#cssmenu.align-right ul ul {
  visibility: hidden;
  position: absolute;
  top: 0;
  left: -100%;
  z-index: 598;
  width: 100%;
}
#cssmenu.align-right ul ul li.first {
  -webkit-border-radius: 3px 0 0 0;
  -moz-border-radius: 3px 0 0 0;
  border-radius: 3px 0 0 0;
}
#cssmenu.align-right ul ul li.last {
  -webkit-border-radius: 0 0 0 3px;
  -moz-border-radius: 0 0 0 3px;
  border-radius: 0 0 0 3px;
}
#cssmenu.align-right ul ul {
  -webkit-border-radius: 3px 0 0 3px;
  -moz-border-radius: 3px 0 0 3px;
  border-radius: 3px 0 0 3px;
}
    </style>
  
    <br />
      		<h3 p align="center"><space style="color:white"> Download any old question paper for your branchs. </space></h3>
    <br />
    <div id='cssmenu'>
   
<ul>
  	<li><a href="">1st year All Branchs +</a>
   	    <ul>
  		    <li><a href="#">1st sem +</a>
  			    <ul>
  				    <LI><a href="#">maths </a></li>
  				    <LI><a href="#">physics </a> </li>
  				    <LI><a href="#">chemistry </a>
  				    	                    </li>
  				    <LI><a href="#">E.D </a>
  				    	                    </li>
  				    <LI><a href="#">english</a></LI>
  				    <LI><a href="#">B.I.T </a>
  				    	                    </li>
  			    </ul>
  		    </li>
  		    <li><a href="#">2st sem +</a>
  			    <ul>
  				    <LI><a href="#">meth </a>
  				    	                    </li>
  				    <LI><a href="#">physics </a>
  				    	                    </li>
  				    <LI><a href="#">chemistry</a>
  				    	                    </li>
  				    <LI><a href="#">E.D </a>
  				    	                    </li>
  				    <LI><a href="#">english</a></LI>
  				    <LI><a href="#">E.V.S </a>
  				    	                    </li>
  			    </ul>
  		    </li>
  	    </ul>
     </li>

    <li><a href="#">Information Technology +</a>
        <ul>
        	<li><a href="#">3rd sem +</a>
        		<ul>
                    <li><a href="#">O.S </a>
                    	                    </li>
                    <li><a href="#">Programming in 'c' +</a>
                    	                    </li>
                    <li><a href="#">C.S.P </a>
                    	                    </li>
                    <li><a href="#">C.A </a>
                    	                    </li>
                    <li><a href="#">B.E.E.E </a>
                    	                    </li>
                    <li><a href="#">C.W </a>         	
            	                            </li>
                </ul>
                <li><a href="#">4th sem +</a>
        		<ul>
                    <li><a href="#">D.S.C </a>
                    	                    </li>
                    <li><a href="#">OOP using C++ </a>
                    	                    </li>
                    <li><a href="#">S.S.E </a>
                    	
                    </li>
                    <li><a href="#">I.W.T </a>
                    	                    </li>
                    <li><a href="#">C.O.M </a>
                    	                    </li>
                    <li><a href="#">D.C.N </a>         	
            	                            </li>
                </ul>
            </li>
            <li><a href="#">5th sem +</a>
        		<ul>
                    <li><a href="#">C.N.S </a>
                    	
                    </li>
                    <li><a href="#">S.Q.T </a>
                    	                    </li>
                    <li><a href="#">R.D.B.M.S </a>
                    	                    </li>
                    <li><a href="#">Java programming </a>
                    	                    </li>
                    <li><a href="#">E-commerce</a>
                    	                    </li>
                    <li><a href="#">E.D.M </a>         	
            	                            </li>
                </ul>
                <li><a href="#">6th sem +</a>
        		<ul>
                    <li><a href="#">O.F.C </a>
                    	                    </li>
                    <li><a href="#">M.C </a>
                    	                    </li>
                    <li><a href="#">M.C.E.S </a>
                    	                    </li>
                    <li><a href="#">C.N </a>
                    	                    </li>
                    <li><a href="#">P.L.C </a>
                    	                    </li>
                    <li><a href="#">E.S </a>         	
            	                            </li>
                </ul>
            </ul>
        </li>


   <li><a href="#">Computer science & engi.. +</a>
        <ul>
        	<li><a href="#">3rd sem +</a>
        		<ul>
                    <li><a href="#">O.S </a>
                    	                    </li>
                    <li><a href="#">Programming in 'c' </a>
                    	                    </li>
                    <li><a href="#">C.S.P </a>
                    	                    </li>
                    <li><a href="#">OOP using C++ </a>
                    	                    </li>
                    <li><a href="#">B.E.E.E </a>
                    	
                    </li>
                    <li><a href="#">D.D.C </a>         	
            	                           </li>
                </ul>
                <li><a href="#">4th sem +</a>
        		<ul>
                    <li><a href="#">C.N </a>
                    	                    </li>
                    <li><a href="#">C.O </a>
                    	                    </li>
                    <li><a href="#">D.B.M.S </a>
                    	                    </li>
                    <li><a href="#">D.S.C </a>
                    	                    </li>
                    <li><a href="#">S.S.E </a>
                    	                    </li>
                    <li><a href="#">W.T </a>         	
            	                            </li>
                </ul>
            </li>
            <li><a href="#">5th sem +</a>
        		<ul>
                    <li><a href="#">C.N.S </a>
                    	                    </li>
                    <li><a href="#">S.Q.T </a>
                    	                    </li>
                    <li><a href="#">D.B.P </a>
                    	                    </li>
                    <li><a href="#"> V.P.C# </a>
                    	                    </li>
                    <li><a href="#">C.N.T </a>
                    	                    </li>
                    <li><a href="#">Microptrocessor </a>         	
            	                           </li>
                </ul>
                <li><a href="#">6th sem +</a>
        		<ul>
                    <li><a href="#">000 +</a>
                    	                    </li>
                    <li><a href="#">000 +</a>
                    	                    </li>
                    <li><a href="#">000 +</a>
                    	                    </li>
                    <li><a href="#">000 +</a>
                    	                    </li>
                    <li><a href="#">000 +</a>
                    	                    </li>
                    <li><a href="#">000 +</a>         	
            	                            </li>
                </ul>
            </ul>
        </li>
    <li><a href="#">Electronics Engineering +</a>
        <ul>
        	<li><a href="#">3rd sem +</a>
        		<ul>
                    <li><a href="#">D.E </a>
                    	                    </li>
                    <li><a href="#">A.E </a>
                    	                    </li>
                    <li><a href="#">C.E </a>
                    	                    </li>
                    <li><a href="#">E.E.M </a>
                    	                    </li>
                    <li><a href="#">Programming in 'C' </a>
                    	                    </li>
                </ul>
                <li><a href="#">4th sem +</a>
        		<ul>
                    <li><a href="#">E.C </a>
                    	                    </li>
                    <li><a href="#">Micro.. 8085 </a>
                    	                    </li>
                    <li><a href="#">N.F.T.L </a>
                    	                    </li>
                    <li><a href="#">E.M.I </a>
                    	                    </li>
                    <li><a href="#">S.S.C </a>
                    	                    </li>
                    <li><a href="#">E.D.M </a>         	
            	                           </li>
                </ul>
            </li>
            <li><a href="#">5th sem +</a>
        		<ul>
                    <li><a href="#">C.E.T.S </a>
                    	                    </li>
                    <li><a href="#">A. Micro.. 8086 </a>
                    	                    </li>
                    <li><a href="#">M.C </a>
                    	                    </li>
                    <li><a href="#"> E.I </a>
                    	                    </li>
                    <li><a href="#">P.C.I </a>
                    	                    </li>
                    <li><a href="#"> D.S.C </a>         	
            	                            </li>
                </ul>
                <li><a href="#">6th sem +</a>
        		<ul>
                    <li><a href="#">0000 +</a>
                    	                    </li>
                    <li><a href="#">000 +</a>
                    	                    </li>
                    <li><a href="#">0000 +</a>
                    	                    </li>
                    <li><a href="#">000 +</a>
                    	                    </li>
                    <li><a href="#">0000 +</a>
                    	                    </li>
                    <li><a href="#">0000 +</a>         	
            	                            </li>
                </ul>
            </ul>
        </li>    



  </ul>
</div>		
    </div>


</asp:Content>

