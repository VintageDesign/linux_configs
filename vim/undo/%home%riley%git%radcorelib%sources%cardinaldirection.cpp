Vim�UnDo� �ſ6CR$bNS`��m�b�;
I\R�H
    ?�                     3       3   3   3    d    _�                             ����                                                                                                                                                                                                                                                                                                                                                             d�b     �                       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�d     �                       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�f     �                       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�g     �                       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�t     �   
            &    int cog = radiansCOG / M_PI * 180;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�w     �   
            '    int cog = (radiansCOG / M_PI * 180;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�z    �   
            (    int cog = (radiansCOG / M_PI) * 180;5�_�      	                 '    ����                                                                                                                                                                                                                                                                                                                                                             d챍     �               I    const radUInt16 roundedCog = round(cog / cardinalDirectionIncrement);5�_�      
           	      X    ����                                                                                                                                                                                                                                                                                                                                                             d챒    �               Z    const radUInt16 roundedCog = round(static_cast<int>(cog / cardinalDirectionIncrement);5�_�   	              
      '    ����                                                                                                                                                                                                                                                                                                                               '          7       v   7    d�     �               [    const radUInt16 roundedCog = round(static_cast<int>(cog / cardinalDirectionIncrement));5�_�   
                    !    ����                                                                                                                                                                                                                                                                                                                               '          7       v   7    d�
    �               J    const radUInt16 roundedCog = round(cog / cardinalDirectionIncrement));�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d��V     �   
            8    int cog = static_cast<int>(radiansCOG / M_PI) * 180;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        d��]     �   
            :    float cog = static_cast<int>(radiansCOG / M_PI) * 180;5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                 v        d��`     �   
            )    float cog = radiansCOG / M_PI) * 180;5�_�                      !    ����                                                                                                                                                                                                                                                                                                                                                 v        d��d     �   
            (    float cog = radiansCOG / M_PI * 180;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        d��g     �   
            )    float cog = radiansCOG / M_PI) * 180;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d��l     �               1        cog -= static_cast<int>(cog / 360) * 360;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       d���     �               !        cog -= (cog / 360) * 360;5�_�                           ����                                                                                                                                                                                                                                                                                                                                         /       v   /    d��     �               8        cog += (static_cast<int>(cog / -360) + 1) * 360;5�_�                           ����                                                                                                                                                                                                                                                                                                                                         /       v   /    d��     �                       cog += ) * 360;5�_�                           ����                                                                                                                                                                                                                                                                                                                                         /       v   /    d��
    �                       cog +=  360;5�_�                           ����                                                                                                                                                                                                                                                                                                                                         /       v   /    d�¯     �               3    const double cardinalDirectionIncrement = 22.5;5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                         /       v   /    d�·    �               [    const radUInt16 roundedCog = static_cast<int>(round(cog / cardinalDirectionIncrement));5�_�                            ����                                                                                                                                                                                                                                                                                                                                         /       v   /    d���     �                  $#ifndef RADCORELIB_INCLUDE_WITH_PATH   "#    include "cardinaldirection.h"   #else   -#    include "radcorelib/cardinaldirection.h"   #endif       namespace rad   {   6radUInt16 calculateCardinalDirection(float radiansCOG)   {   *    float cog = (radiansCOG / M_PI) * 180;           if (cog > 360)       {           cog -=  360;       }       else if (cog < 0)       {           cog += 360;       }       2    const float cardinalDirectionIncrement = 22.5;       a    const radUInt16 roundedCog = static_cast<radUInt16>(round(cog / cardinalDirectionIncrement));           return roundedCog % 8;   }   }5�_�                           ����                                                                                                                                                                                                                                                                                                                                         /       v   /    d���     �   
            *    float cog = (radiansCOG / M_PI) * 180;5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                         /       v   /    d���    �   
            =    float cog = static_cast<float> (radiansCOG / M_PI) * 180;5�_�                           ����                                                                                                                                                                                                                                                                                                                                         /       v   /    d��X     �                  $#ifndef RADCORELIB_INCLUDE_WITH_PATH   "#    include "cardinaldirection.h"   #else   -#    include "radcorelib/cardinaldirection.h"   #endif       namespace rad   {   6radUInt16 calculateCardinalDirection(float radiansCOG)   {   <    float cog = static_cast<float>(radiansCOG / M_PI) * 180;           if (cog > 360)       {           cog -= 360;       }       else if (cog < 0)       {           cog += 360;       }       2    const float cardinalDirectionIncrement = 22.5;       a    const radUInt16 roundedCog = static_cast<radUInt16>(round(cog / cardinalDirectionIncrement));           return roundedCog % 8;   }   }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�<     �                       cog -= 360;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V   =    d�u     �             �             �                        cog += 360;5�_�                             ����                                                                                                                                                                                                                                                                                                                                          /       V   =    d�v     �               0cog += (static_cast<int>(cog / -360) + 1) * 360;5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                          /       V   =    d�w     �               4    cog += (static_cast<int>(cog / -360) + 1) * 360;5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                          /       V   =    d     �               /        cog -= static_cast<int>(cog/360) * 360;5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                v       d     �               8        cog += (static_cast<int>(cog / -360) + 1) * 360;5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                v       d     �                       �             5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                                                v       d     �                
        at5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                v       d     �               (        cog += ((cog / -360) + 1) * 360;5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                v       d     �             5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                                                v       d     �                5�_�   '   )           (      
    ����                                                                                                                                                                                                                                                                                                                                                v       d     �               #include "cmath>5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                v       d��    �               #        cog -=floor(cog/360) * 360;5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                v   J    d     �             5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                v   J    d    �                   5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                v   J    d��    �      	   !       �      	        5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                                                v   J    d�     �         !    �         !    5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                                v   J    d�    �         "      "    std::cout << cog << std::endl;5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                                                             d�     �               "   $#ifndef RADCORELIB_INCLUDE_WITH_PATH   "#    include "cardinaldirection.h"   #else   -#    include "radcorelib/cardinaldirection.h"   #endif       #include <cmath>   #include <iostream>       namespace rad   {   6radUInt16 calculateCardinalDirection(float radiansCOG)   {   <    float cog = static_cast<float>(radiansCOG / M_PI) * 180;       "    std::cout << cog << std::endl;       if (cog > 360)       {   $        cog -= floor(cog/360) * 360;       }       else if (cog < 0)       {   -        cog += (floor(cog / -360) + 1) * 360;       }       "    std::cout << cog << std::endl;       2    const float cardinalDirectionIncrement = 22.5;       a    const radUInt16 roundedCog = static_cast<radUInt16>(round(cog / cardinalDirectionIncrement));           return roundedCog % 8;   }   }5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                                                             d     �                #include <iostream>5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                                                             d     �                "    std::cout << cog << std::endl;5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                             d     �                "    std::cout << cog << std::endl;5�_�   2               3           ����                                                                                                                                                                                                                                                                                                                                                             d    �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        d��b     �                   �                   l5��