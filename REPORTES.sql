

create or replace procedure reporte1 (cursorreporte OUT sys_refcursor, entrega varchar2, fecha1 date, fecha2 date, tipoComida varchar2)
is
BEGIN
    if (tipoComida is not null) then
        open cursorreporte for
        select
        suc.nombre as nombre_sucursal,
        plato.nombre_plato as plato,
        plato.foto_plato,
        plato.descripcion_plato,
        plato.precio_unitario,
        p.tipo_entrega as consumo,
        (select count(pp.plato_id) from pedidoplato pp where pp.plato_id=plato.id_plato) as Cantidad_solicitado,
        round((((select count(pp.plato_id) from pedidoplato pp where pp.plato_id=plato.id_plato)*100)/
        (select count(pp.id_pedido) from pedidoplato pp)),1) as "porcentaje_Demanda"
        from sucursal suc, plato, pedido p, reserva, pedidoplato pp
        where pp.plato_id=plato.id_plato and p.num_pedido=reserva.id_reserva and reserva.sucursal_id=suc.id_sucursal and pp.pedido_id=p.num_pedido and p.reserva_id=reserva.id_reserva and (p.fecha>fecha1 and (p.fecha<fecha2) and plato.categoria=tipoComida and p.tipo_entrega=entrega)
        order by "porcentaje_Demanda" desc;
    else
        open cursorreporte for
        select
        suc.nombre as nombre_sucursal,
        plato.nombre_plato as plato,
        plato.foto_plato,
        plato.descripcion_plato,
        plato.precio_unitario,
        p.tipo_entrega as consumo,
        (select count(pp.plato_id) from pedidoplato pp where pp.plato_id=plato.id_plato) as Cantidad_solicitado,
       round((((select count(pp.plato_id) from pedidoplato pp where pp.plato_id=plato.id_plato)*100)/
        (select count(pp.id_pedido) from pedidoplato pp)),1) as "porcentaje_Demanda"
        from sucursal suc, plato, pedido p, reserva, pedidoplato pp
        where pp.plato_id=plato.id_plato and p.num_pedido=reserva.id_reserva and reserva.sucursal_id=suc.id_sucursal and pp.pedido_id=p.num_pedido and p.reserva_id=reserva.id_reserva
        order by "porcentaje_Demanda" desc;
        
  end if;
end;


create or replace procedure reporte2 (cursorreporte2 OUT sys_refcursor,fecha1 date) is
  begin
  open cursorreporte2 for
   select  s.fecha_menu_dia.fecha_inicio, categoria,nombre_plato,foto_plato,descripcion_plato, 
            precio_unitario, su.nombre as "nombre_sucursal" 
               from plato p, sugerenciadeldiaplato sp, sugerenciadeldia s, sucursal su
                where (p.id_plato=sp.id_plato) and (s.id_menu_dia=sp.id_menu_dia) and 
                      (s.id_sucursal=su.id_sucursal) and (to_date(s.fecha_menu_dia.fecha_inicio)>=to_date(fecha1)); 
     end;




CREATE OR REPLACE PROCEDURE REPORTE3(cursorreporte OUT sys_refcursor, fecha1 date, fecha2 date, precio1 float, precio2 float)
is
BEGIN
 open cursorreporte for
  select P.fecha_promo.fecha_inicio, P.fecha_promo.fecha_fin, P.nombre_promocion, pa.nombre_plato,pa.foto_plato, 
    P.porcentaje_promocion, pa.precio_unitario,(pa.precio_unitario-(pa.precio_unitario*P.porcentaje_promocion)/100) as "Precio_final" 
     from Promocion P, plato pa
      where (P.id_plato=pa.id_plato) 
       and  ((pa.precio_unitario-(pa.precio_unitario*P.porcentaje_promocion)/100)>=precio1)
       and  ((pa.precio_unitario-(pa.precio_unitario*P.porcentaje_promocion)/100)<=precio2)
       and (to_date(P.fecha_promo.fecha_inicio)>=to_date(fecha1)) 
       and (to_date(P.fecha_promo.fecha_fin)<=to_date(fecha2));
END;



create or replace PROCEDURE REPORTE4(cursoremp OUT sys_refcursor, id_suc number, id_r number, fecha1 date, fecha2 date)
is
BEGIN
  open cursoremp for
    select s.nombre, e.foto_empleado, e.datos_empleado.cedula, e.datos_empleado.nombre, e.datos_empleado.apellido,
    e.datos_empleado.fecha_nacimiento, e.datos_empleado.sexo, e.fechas_empleado.fecha_inicio as fecha_contratacion,
    e.fechas_empleado.fecha_fin as fecha_egreso, e.motivo_egreso,r.nombre_rol, r.descripcion_funciones
     from empleado e, empleado_rol er, rol r, sucursal s
      where (er.id_rol=r.id_rol)and(e.id_sucursal=id_suc) and 
            (e.id_empleado=er.id_empleado) and (er.id_rol=id_r) and
            (e.fechas_empleado.fecha_inicio>=fecha1) and 
            (e.fechas_empleado.fecha_inicio<=fecha2) and 
            (s.id_sucursal=id_suc);
END;




create or replace procedure reporte5 (cursorreporte OUT sys_refcursor) is

begin
    open cursorreporte for
     Select suc.nombre, res.nombre_sucursal as nombre, res.logo_restaurante, 
     suc.ubicacion_sucursal.direccion, suc.mapa, 
                   (select avg(pp.calificacion) 
                      from pedidoplato pp, cliente c, reserva r, pedido p 
                        where pp.pedido_id=p.num_pedido and p.cliente_id=c.id_cliente and
                              r.cliente_id=c.id_cliente and r.sucursal_id=suc.id_sucursal
                              group by suc.nombre)*10 as porcentaje_satisfaccion
                                 
       from sucursal suc, restaurante res;
end;




create or replace PROCEDURE REPORTE6(cursorreporte OUT sys_refcursor, nombresucursal varchar2, fecha1 date, fecha2 date)
 IS 
 BEGIN
       open cursorreporte for
       select suc.nombre, res.nombre_sucursal, TO_CHAR(r.fechaReserva.fecha_inicio,'HH24') as HORAS , count(r.cliente_id) AS NUMERO_CLIENTES,
       suc.ubicacion_sucursal.Direccion as DIRECCION,  suc.hora_apertura, suc.hora_cierre
       from   sucursal suc, reserva r, restaurante res
       WHERE suc.nombre = nombresucursal and
        r.sucursal_id=(select s.id_sucursal from sucursal s where s.nombre=nombresucursal) and
       r.fechaReserva.fecha_inicio>=fecha1 and
       r.fechaReserva.fecha_inicio<=fecha2 and
       suc.id_restaurante = res.id_restaurante
       group by TO_CHAR(r.fechaReserva.fecha_inicio,'HH24'),suc.nombre,res.nombre_sucursal, suc.ubicacion_sucursal.Direccion, suc.hora_apertura, suc.hora_cierre;
END;





create or replace procedure REPORTE7(cursorreporte OUT sys_refcursor,nombresucursal varchar2 , fecha date)
 IS
  BEGIN
    
     if ((nombresucursal is not null) and (fecha is not null)) then
      open cursorreporte for
                 select s.nombre, TO_CHAR(fecha_inv, 'Month YYYY' ) as FECHA, p.nombre_producto, p.foto_producto, i.cantidad
                  from sucursal s, producto p, inventario i
                   where (i.id_producto=p.id_producto) and 
                         (i.id_sucursal=s.id_sucursal) and 
                             (s.nombre=nombresucursal) and
                                 (extract(month from i.fecha_inv))=(extract(month from fecha)) ;
    else
     if ((nombresucursal is null) and (fecha is not null)) then
     open cursorreporte for
       select s.nombre,  TO_CHAR(fecha_inv, 'Month YYYY' ) as FECHA, p.nombre_producto, p.foto_producto, i.cantidad
                  from sucursal s, producto p, inventario i
                   where (i.id_producto=p.id_producto) and 
                         (i.id_sucursal=s.id_sucursal) and (extract(month from i.fecha_inv))=(extract(month from fecha));
                         
       else if ((nombresucursal is not null) and (fecha is null)) then
        open cursorreporte for
          select s.nombre,  TO_CHAR(fecha_inv, 'Month YYYY' ) as FECHA, p.nombre_producto, p.foto_producto, i.cantidad
                  from sucursal s, producto p, inventario i
                   where (i.id_producto=p.id_producto) and 
                         (i.id_sucursal=s.id_sucursal) and (s.nombre=nombresucursal);
                         
           else  
           open cursorreporte for
            select s.nombre,  TO_CHAR(fecha_inv, 'Month YYYY' ) as FECHA, p.nombre_producto, p.foto_producto, i.cantidad
                  from sucursal s, producto p, inventario i
                   where (i.id_producto=p.id_producto) and 
                         (i.id_sucursal=s.id_sucursal);
      end if;
     end if;
    end if;
  END;
    
    
create or replace procedure reporte8 (cursorreporte OUT sys_refcursor, UBICACION varchar2, fecha date)
is
mess number;
BEGIN
    
    if (fecha is not null) and (ubicacion is not null)then
        select EXTRACT(MONTH FROM fecha) into mess from dual;
        open cursorreporte for
        select suc.nombre, 
        (select sum(egreso.valor_egreso) from egreso where egreso.id_sucursal=suc.id_sucursal and (EXTRACT(MONTH FROM egreso.FECHA_egreso))=mess AND (EXTRACT(YEAR FROM egreso.FECHA_egreso))=(EXTRACT(YEAR FROM FECHA))) as egresos,
        fecha as Mes,
        (select factura.sub_total from reserva, pedido, pedidoplato, factura where reserva.sucursal_id=suc.id_sucursal and pedido.reserva_id=reserva.id_reserva and pedidoplato.pedido_id=pedido.num_pedido and pedidoplato.factura_id=factura.numero_factura and (EXTRACT(Month from factura.fecha))=mess ) as ingresos
        from sucursal suc
        where suc.nombre like ubicacion ;
    else if  (fecha is null) and (ubicacion is not null)then
        open cursorreporte for
        select suc.nombre, (select sum(egreso.valor_egreso) from egreso where egreso.id_sucursal=suc.id_sucursal ) as egresos,
        (select sum(factura.sub_total) from reserva, pedido, pedidoplato, factura where reserva.sucursal_id=suc.id_sucursal and pedido.reserva_id=reserva.id_reserva and pedidoplato.pedido_id=pedido.num_pedido and pedidoplato.factura_id=factura.numero_factura ) as ingresos
        from sucursal suc 
        where ubicacion like suc.nombre;
     
     else if  (fecha is not null) and (ubicacion is null)then
         select EXTRACT(MONTH FROM fecha) into mess from dual;
        open cursorreporte for
        select suc.nombre, 
        (select sum(egreso.valor_egreso) from egreso where egreso.id_sucursal=suc.id_sucursal and (EXTRACT(MONTH FROM egreso.FECHA_egreso))=mess AND (EXTRACT(YEAR FROM egreso.FECHA_egreso))=(EXTRACT(YEAR FROM FECHA))) as egresos,
        fecha as Mes,
        (select factura.sub_total from reserva, pedido, pedidoplato, factura where reserva.sucursal_id=suc.id_sucursal and pedido.reserva_id=reserva.id_reserva and pedidoplato.pedido_id=pedido.num_pedido and pedidoplato.factura_id=factura.numero_factura and (EXTRACT(Month from factura.fecha))=mess ) as ingresos
        from sucursal suc;
    else if (fecha is null) and (ubicacion is null)then
        open cursorreporte for
        select suc.nombre, (select sum(egreso.valor_egreso) from egreso where egreso.id_sucursal=suc.id_sucursal ) as egresos,
        (select sum(factura.sub_total) from reserva, pedido, pedidoplato, factura where reserva.sucursal_id=suc.id_sucursal and pedido.reserva_id=reserva.id_reserva and pedidoplato.pedido_id=pedido.num_pedido and pedidoplato.factura_id=factura.numero_factura ) as ingresos
        from sucursal suc;
        
        end if;
        end if;
    end if;   
  end if;
end;  
    
    


 





    
create or replace NONEDITIONABLE PROCEDURE REPORTE11(cursorreporte OUT sys_refcursor, destino varchar2, tipocomida varchar2)
IS
BEGIN
    if((destino is not null) and (tipocomida is not null)) then
    /*1: no  null*/
    OPEN cursorreporte FOR
    SELECT suc.nombre as SUCURSAL,  pla.categoria as TIPO_COMIDA, pla.nombre_plato as PLATO, pla.foto_plato as FOTO_PLATO,
    ped.tipo_entrega as TIPO_CONSUMO, cli.datos_cliente.nombre as NOMBRE_CLIENTE, 
    cli.datos_cliente.apellido as APELLIDO_CLIENTE,
    cli.datos_cliente.telefono as TELEFONO_CLIENTE, ped.direccion_entrega as DIRECCION_ENTREGA
    FROM  sucursal suc,  plato pla, pedido ped, cliente cli, pedidoplato pplato,  reserva res
    WHERE
    ped.tipo_entrega='Delivery' and
    ped.direccion_entrega=destino and
    ped.cliente_id = cli.id_cliente and
    ped.num_pedido=pplato.pedido_id and
    pplato.plato_id=pla.id_plato and 
    pla.categoria=tipocomida and 
    ped.reserva_id=res.id_reserva and
    res.sucursal_id=suc.id_sucursal
    ORDER BY suc.nombre asc;
    else

    if((destino is not null) and (tipocomida is null) ) then
    /*(2: no null,  null)*/
    OPEN cursorreporte FOR
  SELECT suc.nombre as SUCURSAL,  pla.categoria as TIPO_COMIDA, pla.nombre_plato as PLATO, pla.foto_plato as FOTO_PLATO,
    ped.tipo_entrega as TIPO_CONSUMO, cli.datos_cliente.nombre as NOMBRE_CLIENTE, 
    cli.datos_cliente.apellido as APELLIDO_CLIENTE,
    cli.datos_cliente.telefono as TELEFONO_CLIENTE, ped.direccion_entrega as DIRECCION_ENTREGA
    FROM  sucursal suc,  plato pla, pedido ped, cliente cli, pedidoplato pplato,  reserva res
    WHERE
    ped.tipo_entrega='Delivery' and
    ped.direccion_entrega=destino and
    ped.cliente_id = cli.id_cliente and
    ped.num_pedido=pplato.pedido_id and
    pplato.plato_id=pla.id_plato and 
    ped.reserva_id=res.id_reserva and
    res.sucursal_id=suc.id_sucursal
    ORDER BY suc.nombre asc;  
    else
    if((destino is null) and (tipocomida is not null)) then
    /*(3: null, not null)*/
       OPEN cursorreporte FOR
    SELECT suc.nombre as SUCURSAL,  pla.categoria as TIPO_COMIDA, pla.nombre_plato as PLATO, pla.foto_plato as FOTO_PLATO,
    ped.tipo_entrega as TIPO_CONSUMO, cli.datos_cliente.nombre as NOMBRE_CLIENTE, 
    cli.datos_cliente.apellido as APELLIDO_CLIENTE,
    cli.datos_cliente.telefono as TELEFONO_CLIENTE, ped.direccion_entrega as DIRECCION_ENTREGA
    FROM  sucursal suc,  plato pla, pedido ped, cliente cli, pedidoplato pplato,  reserva res
    WHERE
    ped.tipo_entrega='Delivery' and
    ped.cliente_id = cli.id_cliente and
    ped.num_pedido=pplato.pedido_id and
    pplato.plato_id=pla.id_plato and 
    pla.categoria=tipocomida and 
    ped.reserva_id=res.id_reserva and
    res.sucursal_id=suc.id_sucursal
    ORDER BY suc.nombre asc;
    else

    if((destino is  null) and (tipocomida is  null) ) then
    /*(4: null, null)*/
    OPEN cursorreporte FOR
    SELECT suc.nombre as SUCURSAL,  pla.categoria as TIPO_COMIDA, pla.nombre_plato as PLATO, pla.foto_plato as FOTO_PLATO,
    ped.tipo_entrega as TIPO_CONSUMO, cli.datos_cliente.nombre as NOMBRE_CLIENTE, 
    cli.datos_cliente.apellido as APELLIDO_CLIENTE,
    cli.datos_cliente.telefono as TELEFONO_CLIENTE, ped.direccion_entrega as DIRECCION_ENTREGA
    FROM  sucursal suc,  plato pla, pedido ped, cliente cli, pedidoplato pplato,  reserva res
    WHERE
    ped.tipo_entrega='Delivery' and
    ped.cliente_id = cli.id_cliente and
    ped.num_pedido=pplato.pedido_id and
    pplato.plato_id=pla.id_plato and 
    ped.reserva_id=res.id_reserva and
    res.sucursal_id=suc.id_sucursal
    ORDER BY suc.nombre asc;
    end if;
    end if;
    end if;
    end if;
END;

/*REPORTE12----------------------------------------------------------------------------------------------------------------*/
create or replace PROCEDURE REPORTE12(cursorreporte OUT sys_refcursor, Nombresucursal varchar2, Rangofecha date ) 
is
begin
    if((Nombresucursal is not null) and (Rangofecha is not null)) then
        /*1: no  null*/
        open cursorreporte for
        SELECT
            totales_por_fpago.Sucursal,
            totales_por_fpago.fech,
            totales_por_fpago.Tipo_Consumo,
            LISTAGG(totales_por_fpago.nombre || ' ' ||  totales_por_fpago.ganancia , ',' ) WITHIN GROUP(ORDER BY totales_por_fpago.nombre) AS formapag,
            sum(totales_por_fpago.ganancia)
        FROM
            (select 
                suc.nombre as Sucursal, ped.fecha as fech,
                ped.tipo_entrega as Tipo_Consumo, 
                fpago.nombre, sum(fpago.monto_pagado) as ganancia
                from   sucursal suc, reserva res, factura fac, pedido ped, formapago fpago, pedidoplato pplato
                where 
                   ped.fecha=to_date(Rangofecha) and
                   ped.reserva_id=res.id_reserva and
                   res.sucursal_id=suc.id_sucursal and
                   ped.num_pedido=pplato.pedido_id and
                   pplato.factura_id=fac.numero_factura and
                   suc.nombre=Nombresucursal and
                   fac.numero_factura=fpago.factura_id
                group by suc.nombre, ped.fecha,  ped.tipo_entrega, fpago.nombre
                order by suc.nombre asc, ped.fecha asc, Tipo_Consumo asc,  fpago.nombre) totales_por_fpago
        GROUP BY
            totales_por_fpago.sucursal, totales_por_fpago.fech, totales_por_fpago.Tipo_Consumo
        ORDER BY
         totales_por_fpago.sucursal, totales_por_fpago.fech, totales_por_fpago.Tipo_Consumo;
    ELSE
    if((Nombresucursal is not null) and (Rangofecha is null) ) then
        /*(2: no null,  null)*/   
        open cursorreporte for
        SELECT
            totales_por_fpago.Sucursal,
            totales_por_fpago.fech,
            totales_por_fpago.Tipo_Consumo,
            LISTAGG(totales_por_fpago.nombre || ' ' ||  totales_por_fpago.ganancia , ',' ) WITHIN GROUP(ORDER BY totales_por_fpago.nombre) AS formapag,
            sum(totales_por_fpago.ganancia)
        FROM
            (select 
                suc.nombre as Sucursal, ped.fecha as fech,
                ped.tipo_entrega as Tipo_Consumo, 
                fpago.nombre, sum(fpago.monto_pagado) as ganancia
                from   sucursal suc, reserva res, factura fac, pedido ped, formapago fpago, pedidoplato pplato
                where 
                   ped.reserva_id=res.id_reserva and
                   res.sucursal_id=suc.id_sucursal and
                   ped.num_pedido=pplato.pedido_id and
                   pplato.factura_id=fac.numero_factura and
                   suc.nombre=Nombresucursal and
                   fac.numero_factura=fpago.factura_id
                group by suc.nombre, ped.fecha,  ped.tipo_entrega, fpago.nombre
                order by suc.nombre asc, ped.fecha asc, Tipo_Consumo asc,  fpago.nombre) totales_por_fpago
        GROUP BY
            totales_por_fpago.sucursal, totales_por_fpago.fech, totales_por_fpago.Tipo_Consumo
        ORDER BY
            totales_por_fpago.sucursal, totales_por_fpago.fech, totales_por_fpago.Tipo_Consumo;
    ELSE
    if((Nombresucursal is null) and (Rangofecha is not null)) then
        /*(3: null, not null)*/
         open cursorreporte for
        SELECT
            totales_por_fpago.Sucursal,
            totales_por_fpago.fech,
            totales_por_fpago.Tipo_Consumo,
            LISTAGG(totales_por_fpago.nombre || ' ' ||  totales_por_fpago.ganancia , ',' ) WITHIN GROUP(ORDER BY totales_por_fpago.nombre) AS formapag,
            sum(totales_por_fpago.ganancia)
        FROM
            (select 
                suc.nombre as Sucursal, ped.fecha as fech,
                ped.tipo_entrega as Tipo_Consumo, 
                fpago.nombre, sum(fpago.monto_pagado) as ganancia
                from   sucursal suc, reserva res, factura fac, pedido ped, formapago fpago, pedidoplato pplato
                where 
                   ped.fecha=to_date(Rangofecha) and
                   ped.reserva_id=res.id_reserva and
                   res.sucursal_id=suc.id_sucursal and
                   ped.num_pedido=pplato.pedido_id and
                   pplato.factura_id=fac.numero_factura and
                   fac.numero_factura=fpago.factura_id
                group by suc.nombre, ped.fecha,  ped.tipo_entrega, fpago.nombre
                order by suc.nombre asc, ped.fecha asc, Tipo_Consumo asc,  fpago.nombre) totales_por_fpago
        GROUP BY
            totales_por_fpago.sucursal, totales_por_fpago.fech, totales_por_fpago.Tipo_Consumo
        ORDER BY
            totales_por_fpago.sucursal, totales_por_fpago.fech, totales_por_fpago.Tipo_Consumo;
    ELSE
    if((Nombresucursal is  null) and (Rangofecha is  null) ) then
    /*(4: null, null)*/
        open cursorreporte for
        SELECT
            totales_por_fpago.Sucursal,
            totales_por_fpago.fech,
            totales_por_fpago.Tipo_Consumo,
            LISTAGG(totales_por_fpago.nombre || ' ' ||  totales_por_fpago.ganancia , ',' ) WITHIN GROUP(ORDER BY totales_por_fpago.nombre) AS formapag,
            sum(totales_por_fpago.ganancia)
        FROM
            (select 
                suc.nombre as Sucursal, ped.fecha as fech,
                ped.tipo_entrega as Tipo_Consumo, 
                fpago.nombre, sum(fpago.monto_pagado) as ganancia
                from   sucursal suc, reserva res, factura fac, pedido ped, formapago fpago, pedidoplato pplato
                where 
                   ped.reserva_id=res.id_reserva and
                   res.sucursal_id=suc.id_sucursal and
                   ped.num_pedido=pplato.pedido_id and
                   pplato.factura_id=fac.numero_factura and
                   fac.numero_factura=fpago.factura_id
                group by suc.nombre, ped.fecha,  ped.tipo_entrega, fpago.nombre
                order by suc.nombre asc, ped.fecha asc, Tipo_Consumo asc,  fpago.nombre) totales_por_fpago
        GROUP BY
            totales_por_fpago.sucursal, totales_por_fpago.fech, totales_por_fpago.Tipo_Consumo
        ORDER BY
         totales_por_fpago.sucursal, totales_por_fpago.fech, totales_por_fpago.Tipo_Consumo;
    end if;/*4*/
    end if;/*3*/
    end if;/*2*/
    end if;/*1*/
END;



create or replace NONEDITIONABLE PROCEDURE REPORTE13(cursorreporte OUT sys_refcursor, Ubicacion varchar2, Rangofecha1 date, Rangofecha2 date)
IS
BEGIN
                                          /*    111   */
    if( (Ubicacion is not null) and (Rangofecha1 is not null) and (Rangofecha2 is not null) ) then
    open cursorreporte for
    select suc.nombre as SUCURSAL, suc.mapa as UBICACION, res.fechareserva.fecha_inicio as FechaReservacion, 
    res.cantidad_personas as CantidadPersonas, res.abono_inicial as AbonoInicial 
    from sucursal suc, reserva res
    where suc.ubicacion_sucursal.Direccion=Ubicacion and
    res.sucursal_id=suc.id_sucursal and
    res.fechaReserva.fecha_inicio>=Rangofecha1 and
    res.fechaReserva.fecha_inicio<=Rangofecha2
    order by  res.fechaReserva.fecha_inicio;
    else
 /*    011   */
    if((Ubicacion is null) and (Rangofecha1 is not null) and (Rangofecha2 is not null)) then
    open cursorreporte for
    select suc.nombre as SUCURSAL, suc.mapa as UBICACION, res.fechareserva.fecha_inicio as FechaReservacion, 
    res.cantidad_personas as CantidadPersonas, res.abono_inicial as AbonoInicial 
    from sucursal suc, reserva res
    where res.sucursal_id=suc.id_sucursal and
    res.fechaReserva.fecha_inicio>=Rangofecha1 and
    res.fechaReserva.fecha_inicio<=Rangofecha2
    order by  res.fechaReserva.fecha_inicio;
    else
 /*    101   */
    if((Ubicacion is not null) and (Rangofecha1 is null) and (Rangofecha2 is not null)) then
    open cursorreporte for
    select suc.nombre as SUCURSAL, suc.mapa as UBICACION, res.fechareserva.fecha_inicio as FechaReservacion, 
    res.cantidad_personas as CantidadPersonas, res.abono_inicial as AbonoInicial 
    from sucursal suc, reserva res
    where suc.ubicacion_sucursal.Direccion=Ubicacion and
    res.sucursal_id=suc.id_sucursal and
    res.fechaReserva.fecha_inicio<=Rangofecha2
    order by  res.fechaReserva.fecha_inicio;
    else
 /*    110   */
    if((Ubicacion is not null) and (Rangofecha1 is not null) and (Rangofecha2 is null)) then
    open cursorreporte for
    select suc.nombre as SUCURSAL, suc.mapa as UBICACION, res.fechareserva.fecha_inicio as FechaReservacion, 
    res.cantidad_personas as CantidadPersonas, res.abono_inicial as AbonoInicial 
    from sucursal suc, reserva res
    where suc.ubicacion_sucursal.Direccion=Ubicacion and
    res.sucursal_id=suc.id_sucursal and
    res.fechaReserva.fecha_inicio>=Rangofecha1 
    order by  res.fechaReserva.fecha_inicio;
    else
 /*    110   */
    if((Ubicacion is not null) and (Rangofecha1 is null) and (Rangofecha2 is null)) then
    open cursorreporte for
    select suc.nombre as SUCURSAL, suc.mapa as UBICACION, res.fechareserva.fecha_inicio as FechaReservacion, 
    res.cantidad_personas as CantidadPersonas, res.abono_inicial as AbonoInicial 
    from sucursal suc, reserva res
    where suc.ubicacion_sucursal.Direccion=Ubicacion and
    res.sucursal_id=suc.id_sucursal and
    res.fechaReserva.fecha_inicio>=Rangofecha1 
    order by  res.fechaReserva.fecha_inicio;
    else
 /*    000   */
    if((Ubicacion is null) and (Rangofecha1 is null) and (Rangofecha2 is null)) then
    open cursorreporte for
    select suc.nombre as SUCURSAL, suc.mapa as UBICACION, res.fechareserva.fecha_inicio as FechaReservacion, 
    res.cantidad_personas as CantidadPersonas, res.abono_inicial as AbonoInicial 
    from sucursal suc, reserva res
    where res.sucursal_id=suc.id_sucursal 
    order by  res.fechaReserva.fecha_inicio;
    else
     /*    001   */
    if( (Ubicacion is null) and (Rangofecha1 is null) and (Rangofecha2 is not null) ) then
    open cursorreporte for
    select suc.nombre as SUCURSAL, suc.mapa as UBICACION, res.fechareserva.fecha_inicio as FechaReservacion, 
    res.cantidad_personas as CantidadPersonas, res.abono_inicial as AbonoInicial 
    from sucursal suc, reserva res
    where res.sucursal_id=suc.id_sucursal and
    res.fechaReserva.fecha_inicio<=Rangofecha2
    order by  res.fechaReserva.fecha_inicio;
    else
     /*    010   */
    if( (Ubicacion is null) and (Rangofecha1 is not null) and (Rangofecha2 is null) ) then
    open cursorreporte for
    select suc.nombre as SUCURSAL, suc.mapa as UBICACION, res.fechareserva.fecha_inicio as FechaReservacion, 
    res.cantidad_personas as CantidadPersonas, res.abono_inicial as AbonoInicial 
    from sucursal suc, reserva res
    where res.sucursal_id=suc.id_sucursal and
    res.fechaReserva.fecha_inicio>=Rangofecha1 
    order by  res.fechaReserva.fecha_inicio;
    
    
    end if;
    end if;
    end if;
    end if;
    end if;
    end if;
    end if;
    end if;
END;

commit;








create or replace NONEDITIONABLE PROCEDURE REPORTE14(cursorreporte OUT sys_refcursor, sucursal varchar2, fecha date)
IS
BEGIN
    if((sucursal is not null) and (fecha is not null)) then
     open cursorreporte for
      select s.nombre ,e.fechas_eventos.fecha_inicio,e.nombre_evento,e.grupo_musical,e.condiciones_evento,e.hora_inicio,e.hora_fin
       from sucursal s, evento e
        where (e.id_sucursal = s.id_sucursal) and (sucursal= s.nombre) and (fecha=e.fechas_eventos.fecha_inicio);
        
    else if ((sucursal is null) and (fecha is not null)) then
     open cursorreporte for
      select s.nombre ,e.fechas_eventos.fecha_inicio,e.nombre_evento,e.grupo_musical,e.condiciones_evento,e.hora_inicio,e.hora_fin
       from sucursal s, evento e
        where (e.id_sucursal = s.id_sucursal) and (fecha=e.fechas_eventos.fecha_inicio);
     
     
    else if ((sucursal is not null) and (fecha is null)) then
     open cursorreporte for
      select s.nombre ,e.fechas_eventos.fecha_inicio,e.nombre_evento,e.grupo_musical,e.condiciones_evento,e.hora_inicio,e.hora_fin
       from sucursal s, evento e
        where (e.id_sucursal = s.id_sucursal) and (sucursal= s.nombre);
    
    else if((sucursal is  null) and (fecha is  null) ) then
      open cursorreporte for
      select s.nombre ,e.fechas_eventos.fecha_inicio,e.nombre_evento,e.grupo_musical,e.condiciones_evento,e.hora_inicio,e.hora_fin
       from sucursal s, evento e
        where (e.id_sucursal = s.id_sucursal);
            
end if;
end if;
end if;
end if;
END;