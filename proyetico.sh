#!/bin/bash

function menu_p {
  x=0
  while [ $x = 0 ]
  do
        echo='Ingresa si quieres ingresar a metodologías ágiles (ingrese 1) o a metodologías tradicionales (ingrese 2), para salir ingrese 3'
        read choice
        
        case $choice in
                1)
                    echo "Metodologías ágiles"
                    function_a 
                    x=1;;
                2)
                    echo "Metodologías tradicionales"
                    function_t 
                    x=1;;
                3)
                    echo "Adiós"
                    break ;;
                *) 
                    
                    echo "opción inválida 1" 
                    sleep 3;;
                
        esac
  done
}

# Agregar info en a
agregarinfo() 
{
  echo $1
  echo "Escribe la info que quieres agregar: "
  read info
  echo "$info" >> $1
  echo "Información agregada correctamente"
  
  while true; do 
  echo "¿Quieres agregar mas información o regresar al menú?"
  echo "1. Agregar más info"
  echo "2. Regresar al menú"
  
  read choice
  case $choice in
    1)
        agregarinfo $1 
        ;;
      2)
        return
        ;;
      *)
        echo "Opción inválida 2"
        ;;
    esac
  done
}


# Ver la info de a
verinfo()
{
  cat $1
  while true; do
      echo "Presiona cualquier tecla para regresar al menú"
      read choice

      return
    done
}


# Borrar la info de a
borrarinfo()
{
  echo $1
  echo "Escribe que información quieres borrar: "
  read term
  grep -i "$term"  $1
  echo "Escribe el numero de linea que quieres borrar: "
  read numbers
  sed -i "${numbers}d" $1
  echo "Se borrarán las lineas que seleccionaste"
  
  while true; do
    echo "¿Quieres borrar mas información o regresar al menú?"
    echo "1. Borrar info"
    echo "2. Regresar al menú"

    read choice

    case $choice in
      1)
        borrarinfo $1
        ;;
      2)
        return
        ;;
      *)
        echo "Opción inválida 3"
        ;;
    esac
  done
}


# Buscar la info de a
buscarinfo()
{
  echo $1
  echo "Escribe que información quieres bucsar: "
  read term
  grep -i "$term"  $1
  while true; do 
  echo "¿Quieres buscar mas información o regresar al menú?"
  echo "1. Buscar más info"
  echo "2. Regresar al menú"
  
  read choice
  case $choice in
    1)
        buscarinfo $1
        ;;
      2)
        return
        ;;
      *)
        echo "Opción inválida 4"
        ;;
    esac
  done
}

function menu {
  height=15
  width=40
  choice_height=4
  H2='Usted está en el menú $2 escribe que quieres hacer:'
  options=(1 "Agregar info" 
           2 "Buscar info" 
           3 "Borrar info"
           4 "Ver info"
           5 "Salir")
           
  choice=$(dialog --clear \
                  --title "$H2" \
                  --menu "Menu" \
                  $height $width $choice_height \
                  "${options[@]}" \
                  2>&1 >/dev/tty)
                  
  
  case $choice in
          1)
              echo "Seleccionaste agregar info"
              agregarinfo $1 ;;
          2)
              echo "Seleccionaste buscar info"
              buscarinfo $1;;
          3)
              echo "Seleccionaste borrar info"
              borrarinfo $1;;
          4)
              echo "Seleccionaste ver info"
              ver info $1;;
          5)
              break;;
          
          *) echo "opción inválida 5" ;;
          
  esac
 }

function function_a {
  height=15
  width=40
  choice_height=4
  H3='Bienvenido a la guía rápida de Agil, para continuar seleccione un tema:'
  options=(1 "SCRUM" 
           2 "XP" 
           3 "Kanban"
           4 "Crystal"
           5 "Main Menu"
           6 "Salir")
           
  choice=$(dialog --clear \
                  --title "$H3" \
                  --menu "Menu" \
                  $height $width $choice_height \
                  "${options[@]}" \
                  2>&1 >/dev/tty)
                  
  
  case $choice in
          1)
              echo "Usted esta en la sección SCRUM, seleccione la opción que desea utilizar."
              menu SCRUM.inf SCRUM ;;
          2)
              echo "Usted esta en la sección X.P., seleccione la opción que desea utilizar."
              menu XP.inf XP;;
          3)
              echo "Usted esta en la sección Kanban, seleccione la opción que desea utilizar."
              menu Kanban.inf Kanban;;
          4)
              echo "Usted esta en la sección Crystal, seleccione la opción que desea utilizar."
              menu Crystal.inf Crystal;;
          5)
              menu_p;;
          6)
              break;;
          
          *) echo "opción inválida 6" ;;
          
  esac

}

function function_t {
  height=15
  width=40
  choice_height=4
  H4='Bienvenido a la guía rápida de tradicionales, para continuar seleccione un tema:'
  options=(1 "Cascada" 
           2 "Espiral" 
           3 "Modelo V"
           4 "Main Menu"
           5 "Salir")
           
  choice=$(dialog --clear \
                  --title "$H4" \
                  --menu "Menu" \
                  $height $width $choice_height \
                  "${options[@]}" \
                  2>&1 >/dev/tty)
                  
  
  case $choice in
          1)
              echo "Usted esta en la sección Cascada, seleccione la opción que desea utilizar."
              menu Cascada.inf Cascada ;;
          2)
              echo "Usted esta en la sección Espiral, seleccione la opción que desea utilizar."
              menu Espiral.inf Espiral;;
          3)
              echo "Usted esta en la sección Modelo V, seleccione la opción que desea utilizar."
              menu ModeloV.inf ModeloV;;
          4)
              menu_p;;
          5)
              break;;
          
          *) echo "opción inválida 7" ;;
          
  esac

}

menu_p


# Agregar info en a
agregarinfo() 
{
  echo $1
  echo "Escribe la info que quieres agregar: "
  read info
  echo "$info" >> $1
  echo "Información agregada correctamente"
  
  while true; do 
  echo "¿Quieres agregar mas información o regresar al menú?"
  echo "1. Agregar más info"
  echo "2. Regresar al menú"
  
  read choice
  case $choice in
    1)
        agregarinfo $1 
        ;;
      2)
        return
        ;;
      *)
        echo "Opción inválida"
        ;;
    esac
  done
}


# Ver la info de a
verinfo()
{
  cat $1
  while true; do
      echo "Presiona cualquier tecla para regresar al menú"
      read choice

      return
    done
}


# Borrar la info de a
borrarinfo()
{
  echo $1
  echo "Escribe que información quieres borrar: "
  read term
  grep -i "$term"  $1
  echo "Escribe el numero de linea que quieres borrar: "
  read numbers
  sed -i "${numbers}d" $1
  echo "Se borrarán las lineas que seleccionaste"
  
  while true; do
    echo "¿Quieres borrar mas información o regresar al menú?"
    echo "1. Borrar info"
    echo "2. Regresar al menú"

    read choice

    case $choice in
      1)
        borrarinfo $1
        ;;
      2)
        return
        ;;
      *)
        echo "Opción inválida"
        ;;
    esac
  done
}


# Buscar la info de a
buscarinfo()
{
  echo $1
  echo "Escribe que información quieres bucsar: "
  read term
  grep -i "$term"  $1
  while true; do 
  echo "¿Quieres buscar mas información o regresar al menú?"
  echo "1. Buscar más info"
  echo "2. Regresar al menú"
  
  read choice
  case $choice in
    1)
        buscarinfo $1
        ;;
      2)
        return
        ;;
      *)
        echo "Opción inválida"
        ;;
    esac
  done
}

function menu {
  height=15
  width=40
  choice_height=4
  H2='Usted está en el menú $2 escribe que quieres hacer:'
  options=(1 "Agregar info" 
           2 "Buscar info" 
           3 "Borrar info"
           4 "Ver info"
           5 "Salir")
           
  choice=$(dialog --clear \
                  --title "$H2" \
                  --menu "Menu" \
                  $height $width $choice_height \
                  "${options[@]}" \
                  2>&1 >/dev/tty)
                  
  
  case $choice in
          1)
              echo "Seleccionaste agregar info"
              agregarinfo $1 ;;
          2)
              echo "Seleccionaste buscar info"
              buscarinfo $1;;
          3)
              echo "Seleccionaste borrar info"
              borrarinfo $1;;
          4)
              echo "Seleccionaste ver info"
              ver info $1;;
          5)
              break;;
          
          *) echo "opción inválida" ;;
          
  esac
 }

function function_a {
  height=15
  width=40
  choice_height=4
  H3='Bienvenido a la guía rápida de Agil, para continuar seleccione un tema:'
  options=(1 "SCRUM" 
           2 "XP" 
           3 "Kanban"
           4 "Crystal"
           5 "Main Menu"
           6 "Salir")
           
  choice=$(dialog --clear \
                  --title "$H3" \
                  --menu "Menu" \
                  $height $width $choice_height \
                  "${options[@]}" \
                  2>&1 >/dev/tty)
                  
  
  case $choice in
          1)
              echo "Usted esta en la sección SCRUM, seleccione la opción que desea utilizar."
              menu SCRUM.inf SCRUM ;;
          2)
              echo "Usted esta en la sección X.P., seleccione la opción que desea utilizar."
              menu XP.inf XP;;
          3)
              echo "Usted esta en la sección Kanban, seleccione la opción que desea utilizar."
              menu Kanban.inf Kanban;;
          4)
              echo "Usted esta en la sección Crystal, seleccione la opción que desea utilizar."
              menu Crystal.inf Crystal;;
          5)
              menu_p;;
          6)
              break;;
          
          *) echo "opción inválida" ;;
          
  esac

}

function function_t {
  height=15
  width=40
  choice_height=4
  H4='Bienvenido a la guía rápida de tradicionales, para continuar seleccione un tema:'
  options=(1 "Cascada" 
           2 "Espiral" 
           3 "Modelo V"
           4 "Main Menu"
           5 "Salir")
           
  choice=$(dialog --clear \
                  --title "$H4" \
                  --menu "Menu" \
                  $height $width $choice_height \
                  "${options[@]}" \
                  2>&1 >/dev/tty)
                  
  
  case $choice in
          1)
              echo "Usted esta en la sección Cascada, seleccione la opción que desea utilizar."
              menu Cascada.inf Cascada ;;
          2)
              echo "Usted esta en la sección Espiral, seleccione la opción que desea utilizar."
              menu Espiral.inf Espiral;;
          3)
              echo "Usted esta en la sección Modelo V, seleccione la opción que desea utilizar."
              menu ModeloV.inf ModeloV;;
          4)
              menu_p;;
          5)
              break;;
          
          *) echo "opción inválida" ;;
          
  esac

}

menu_p
