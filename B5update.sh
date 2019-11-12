#!/bin/bash

trap '' 2

press_enter()
{
    echo -en "\nPress Enter to continue"
    read
    clear
}

selection=
until [ "$selection" = "0" ]; do
    echo "
    PROGRAM MENU
    1 - Requirement 1
    2 - Requirement 2
    3 - Requirement 3
    4 - Requirement 4

    0 - exit program
"
    echo -n "Enter selection: "
    
    read selection
    echo ""
    case $selection in
        
        1)      clear
		echo -n "
You are in requisite 1 Please Choose what to display from the following:
                
1 - the amount of free and occupied memory on the system 
2 - the amount of disk space occupied and free on the system
3 - the connection information for each network connection on the system.
4 - The system load average
                
0 - return to Main Menu
"
                
                read selection2
                echo ""
                
                case $selection2 in
                        
			1 ) ./B1.sh memory
                            	;;
                        2 ) ./B2.sh diskspace
                                ;;
                        3 ) ./B3.sh connections
                                ;;
                        4 ) ./B4.sh sysload
                                ;;
                        0 ) exit
                                ;;
                        * ) echo "Please enter 1, 2, 3, 4 or 0"; press_enter
                esac
        	press_enter
                ;;
        2 ) clear ; ./B2.sh ;   press_enter
                ;;
        3 ) ./B3.sh ;   press_enter
                ;;
        4 ) ./B4.sh ;   press_enter
                ;;
        0 ) trap 2 ;    exit
                ;;
        * ) echo "Please enter 1, 2, 3, 4 or 0"; press_enter
    esac
done

