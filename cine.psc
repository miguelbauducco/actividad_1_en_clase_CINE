Proceso Cine
	definir pGral, pJub, pCupon como reales;
	definir gp1s1, cp1s1, jp1s1, gp1s2, cp1s2, jp1s2 como enteros;
	definir gp2s1, cp2s1, jp2s1, gp2s2, cp2s2, jp2s2 como enteros;
	definir gp3s1, cp3s1, jp3s1, gp3s2, cp3s2, jp3s2 como enteros;
	definir cantTotalCine, cantSala1, cantSala2, cantProyec1, cantProyec2, cantProyec3 como enteros;
	definir recProyec1, recProyec2, recProyec3, recSala1, recSala2 como reales;
	definir porcCupon, porcJub como reales;
	
	Escribir "Ingrese precio entrada general: ";
	leer pGral;
	Escribir "Ingrese cantidad de Generales, Cupones y Jubilados de PROYECCION 1, SALA 1 Y 2: ";
	leer gp1s1, cp1s1, jp1s1, gp1s2, cp1s2, jp1s2;
	Escribir "Ingrese cantidad de Generales, Cupones y Jubilados de PROYECCION 2, SALA 1 Y 2: ";
	leer gp2s1, cp2s1, jp2s1, gp2s2, cp2s2, jp2s2;
	Escribir "Ingrese cantidad de Generales, Cupones y Jubilados de PROYECCION 3, SALA 1 Y 2: ";
	leer gp3s1, cp3s1, jp3s1, gp3s2, cp3s2, jp3s2;
	
	pCupon = pGral - ( pGral * 0.50);
	pJub = pGral - ( pGral * 0.30);
	
	cantProyec1 = ( gp1s1 + cp1s1 + jp1s1 ) + ( gp1s2 +  cp1s2 + jp1s2);
	cantProyec2 = ( gp2s1 + cp2s1 + jp2s1 ) + ( gp2s2 +  cp2s2 + jp2s2);
	cantProyec3 = ( gp3s1 + cp3s1 + jp3s1 ) + ( gp3s2 +  cp3s2 + jp3s2);
	
	cantSala1 = ( gp1s1 + cp1s1 + jp1s1 ) + ( gp2s1 + cp2s1 + jp2s1 ) + ( gp3s1 + cp3s1 + jp3s1 );
	cantSala2 = ( gp1s2 + cp1s2 + jp1s2 ) + ( gp2s2 + cp2s2 + jp2s2 ) + ( gp3s2 + cp3s2 + jp3s2 );
	
	cantTotalCine = cantSala1 + cantSala2;
	
	recProyec1 = ( gp1s1 * pGral ) + ( cp1s1 * pCupon ) + ( jp1s1 * pJub) + ( gp1s2 * pGral ) + ( cp1s2 * pCupon ) + ( jp1s2 * pJub);
	recProyec2 = ( gp2s1 * pGral ) + ( cp2s1 * pCupon ) + ( jp2s1 * pJub) + ( gp2s2 * pGral ) + ( cp2s2 * pCupon ) + ( jp2s2 * pJub);
	recProyec3 = ( gp3s1 * pGral ) + ( cp3s1 * pCupon ) + ( jp3s1 * pJub) + ( gp3s2 * pGral ) + ( cp3s2 * pCupon ) + ( jp3s2 * pJub);
	
	recSala1 = ( gp1s1 * pGral ) + ( cp1s1 * pCupon ) + ( jp1s1 * pJub) + ( gp2s1 * pGral ) + ( cp2s1 * pCupon ) + ( jp2s1 * pJub) + ( gp3s1 * pGral ) + ( cp3s1 * pCupon ) + ( jp3s1 * pJub);
	recSala2 = ( gp1s2 * pGral ) + ( cp1s2 * pCupon ) + ( jp1s2 * pJub) + ( gp2s2 * pGral ) + ( cp2s2 * pCupon ) + ( jp2s2 * pJub) + ( gp3s2 * pGral ) + ( cp3s2 * pCupon ) + ( jp3s2 * pJub);
	
	porcCupon = ( cp1s1 + cp1s2 + cp2s1 + cp2s2 + cp3s1 + cp3s2 )/(cantTotalCine/100);
	porcJub = ( jp1s1 + jp1s2 + jp2s1 + jp2s2 + jp3s1 + jp3s2 )/(cantTotalCine/100);
	
	Escribir "Cantidad de personas en el cine: ",cantTotalCine;
	Escribir "Cantidad sala 1: ",cantSala1,"    Cantidad sala 2: ",cantSala2;
	Escribir "Cantidad proyeccion 1: ",cantProyec1,"       Proyeccion 2: ",cantProyec2,"       Cantidad proyeccion 3: ",cantProyec3;
	Escribir "Recaudacion proyeccion 1: ",recProyec1,"         Recaudacion proyeccion 2: ",recProyec2,"     Recaudacion proyeccion 3: ",recProyec3;
	Escribir "Recaudacion sala 1: ",recSala1,"           Recaudacion sala 2: ",recSala2;
	Escribir "Porcentaje de clientes con cupon: ",porcCupon;
	Escribir "Porcentaje de clientes jubilados: ",porcJub;
	
FinProceso
