Vim�UnDo� / ^P���̇<�+cM:�\��q4��x�  �   -	// Request Path 2 with the same ID as before     -      A       A   A   A    d��E    _�                    Y        ����                                                                                                                                                                                                                                                                                                                                     Y           V        d���     �  Y            �  Y            5�_�                   Y        ����                                                                                                                                                                                                                                                                                                                                     Y           V        d���     �  Y  [  �    5�_�                   [   @    ����                                                                                                                                                                                                                                                                                                                                     Y           V        d���     �  Z  \  �      ATEST_F(TestAvailablePaths, StartingANewPathErasesThePreviousPath)5�_�                   ^        ����                                                                                                                                                                                                                                                                                                                           ]   0      ^   ,       V   8    d���     �  ^  a  �    �  ^  _  �    5�_�                   ^       ����                                                                                                                                                                                                                                                                                                                           ]   0      ^   ,       V   8    d���     �  ^  `  �    5�_�                   `   /    ����                                                                                                                                                                                                                                                                                                                           ]   0      ^   ,       V   8    d���     �  _  a  �      1	auto path1 = generateSteeringPathFromWkt(pathA);5�_�                   a   *    ����                                                                                                                                                                                                                                                                                                                           ]   0      ^   ,       V   8    d���    �  `  b  �      ,	auto point1 = generatePointFromWkt(pointA);5�_�      	              8   v    ����                                                                                                                                                                                                                                                                                                                           ]   0      ^   ,       V   8    d��1     �   8   :  �    �   8   9  �    5�_�      
           	   9   9    ����                                                                                                                                                                                                                                                                                                                           ^   0      _   ,       V   8    d��=     �   8   :  �      |static string pathA = "LineString (-103.20311618958761812 44.0731800801951934, -103.2020660004606043 44.07231195811099411)";5�_�   	              
   9   @    ����                                                                                                                                                                                                                                                                                                                           ^   0      _   ,       V   8    d��J     �   8   :  �      ostatic string pathA = "LineString (-103.2040 44.0731800801951934, -103.2020660004606043 44.07231195811099411)";5�_�   
                 9   ?    ����                                                                                                                                                                                                                                                                                                                            9   ?       9   J       v   J    d��c     �   8   :  �      cstatic string pathA = "LineString (-103.2040 44.0740, -103.2020660004606043 44.07231195811099411)";5�_�                    9   ?    ����                                                                                                                                                                                                                                                                                                                            9   ?       9   J       v   J    d��f     �   8   :  �      Wstatic string pathA = "LineString (-103.2040 44.0740, -103.2020 44.07231195811099411)";5�_�                    9   T    ����                                                                                                                                                                                                                                                                                                                            9   ?       9   J       v   J    d��j     �   8   :  �      Wstatic string pathA = "LineString (-103.2040 44.0740, -103.2040 44.07231195811099411)";5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            9   ?       9   J       v   J    d��}     �   8   :  �      Jstatic string pathA = "LineString (-103.2040 44.0740, -103.2040 44.0730)";5�_�                    8   0    ����                                                                                                                                                                                                                                                                                                                            7   $       7   0       v   0    d���     �   8   :  �    5�_�                    8        ����                                                                                                                                                                                                                                                                                                                            7   $       7   0       v   0    d���     �   8   :  �    5�_�                    7        ����                                                                                                                                                                                                                                                                                                                                      �           V        d���     �  c  e          ,	auto point1 = generatePointFromWkt(pointB);�   u   w          ,	auto point2 = generatePointFromWkt(pointB);�   6   8          Mstatic string pointB = "POINT (44.07231195811099411 -103.2020660004606043 )";5�_�                    :        ����                                                                                                                                                                                                                                                                                                                                      �           V        d���     �   :   <  �    �   :   ;  �    5�_�                    ;   (    ����                                                                                                                                                                                                                                                                                                                                      �           V        d���     �   :   <  �      Ostatic string pointA_2 = "POINT (44.07231195811099411 -103.2020660004606043 )";5�_�                    ;   >    ����                                                                                                                                                                                                                                                                                                                                      �           V        d���     �   :   <  �      Bstatic string pointA_2 = "POINT (44.0730 -103.2020660004606043 )";5�_�                    ;       ����                                                                                                                                                                                                                                                                                                                                      �           V        d���    �   :   <  �      6static string pointA_2 = "POINT (44.0730 -103.2040 )";5�_�                   d       ����                                                                                                                                                                                                                                                                                                                                      �           V        d���     �  c  e  �      1	auto path1 = generateSteeringPathFromWkt(pathB);5�_�                   e       ����                                                                                                                                                                                                                                                                                                                                      �           V        d���     �  d  f  �      .	auto point1 = generatePointFromWkt(pointA_2);5�_�                   e   ,    ����                                                                                                                                                                                                                                                                                                                                      �           V        d���     �  d  f  �      .	auto point2 = generatePointFromWkt(pointA_2);5�_�                   |   2    ����                                                                                                                                                                                                                                                                                                                                      �           V        d���     �  {  }  �      4	pathPublisher->dataGroup->checkedPath.path = path1;5�_�                   }   1    ����                                                                                                                                                                                                                                                                                                                                      �           V        d��     �  |  ~  �      2	pathPublisher->dataGroup->checkedPath.pathId = 2;5�_�                   �   -    ����                                                                                                                                                                                                                                                                                                                                      �           V        d��     �  �  �  �      .	pathIdPublisher->dataGroup->selectedPath = 2;5�_�                   y       ����                                                                                                                                                                                                                                                                                                                                      �           V        d��W     �  y  {  �    5�_�                   �       ����                                                                                                                                                                                                                                                                                                                           �         �          V       d��n     �  �  �          	// Request Path 25�_�                   |       ����                                                                                                                                                                                                                                                                                                                           �         �          V       d��p     �  |  ~  �    �  |  }  �    5�_�                    }       ����                                                                                                                                                                                                                                                                                                                           �         �          V       d��q     �  |  }          	// Request Path 25�_�      !              {        ����                                                                                                                                                                                                                                                                                                                           �         �          V       d��q     �  {  }  �    �  {  |  �    5�_�       "           !  z        ����                                                                                                                                                                                                                                                                                                                           �         �          V       d��s     �  z  |  �    5�_�   !   #           "  }       ����                                                                                                                                                                                                                                                                                                                           �         �          V       d��z     �  |  ~  �      	// Request Path 25�_�   "   $           #  ^        ����                                                                                                                                                                                                                                                                                                                           �         �          V       d���     �  ^  `  �       �  ^  `  �    5�_�   #   %           $  {        ����                                                                                                                                                                                                                                                                                                                           �         �          V       d���     �  {  }  �          �  {  }  �    5�_�   $   &           %  |   2    ����                                                                                                                                                                                                                                                                                                                           �         �          V       d��     �  {  }  �      3    std::shared_ptr<aggeo::Sc1Path> originalVector;5�_�   %   '           &  |       ����                                                                                                                                                                                                                                                                                                                           �         �          V       d��+     �  {  |          3    std::shared_ptr<aggeo::Sc1Path> originalVector;5�_�   &   (           '  {        ����                                                                                                                                                                                                                                                                                                                           �         �          V       d��+     �  {  }  �    5�_�   '   )           (  |        ����                                                                                                                                                                                                                                                                                                                           �         �          V       d���     �  {  }  �       5�_�   (   *           )  �        ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���     �  �  �          >	EXPECT_NE(vectorVerifier->dataGroup.guidanceVector, nullptr);   7	EXPECT_EQ(vectorVerifier->dataGroup.errors.size(), 0);       	// Try to drive path 1 again   G	pathIdPublisher->dataGroup = ztd::make_unique<FrontendSelectedPath>();   .	pathIdPublisher->dataGroup->selectedPath = 1;       	core->update();       >	EXPECT_EQ(vectorVerifier->dataGroup.guidanceVector, nullptr);   7	EXPECT_EQ(vectorVerifier->dataGroup.errors.size(), 1);   i	EXPECT_EQ(vectorVerifier->dataGroup.errors[0].messageName, MessageName::REQUESTED_PATH_ID_DOESNT_EXIST);   =	auto errorID = vectorVerifier->dataGroup.errors[0].uniqueId;       	core->update();       >	EXPECT_EQ(vectorVerifier->dataGroup.guidanceVector, nullptr);   7	EXPECT_EQ(vectorVerifier->dataGroup.errors.size(), 1);   i	EXPECT_EQ(vectorVerifier->dataGroup.errors[0].messageName, MessageName::REQUESTED_PATH_ID_DOESNT_EXIST);   B	EXPECT_EQ(vectorVerifier->dataGroup.errors[0].uniqueId, errorID);   	core->shutdown();5�_�   )   +           *  �        ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���     �  �  �  �    �  �  �  �    5�_�   *   ,           +  �       ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���     �  �  �  �    5�_�   +   -           ,  �       ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���     �  �  �  �      f    std::vector<std::uint8_t> originalVector = vectorVerifier->dataGroup.guidaceVector->toByteArray();5�_�   ,   .           -  �   )    ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���     �  �  �  �      i    std::vector<std::uint8_t> neworiginalVector = vectorVerifier->dataGroup.guidaceVector->toByteArray();5�_�   -   /           .  �        ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���     �  �  �  �    5�_�   .   0           /  �       ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���    �  �  �  �          5�_�   /   1           0  |   N    ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���     �  {  }  �      f    std::vector<std::uint8_t> originalVector = vectorVerifier->dataGroup.guidaceVector->toByteArray();5�_�   0   2           1  �   I    ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���    �  �  �  �      a    std::vector<std::uint8_t> newVector = vectorVerifier->dataGroup.guidaceVector->toByteArray();5�_�   1   3           2  h       ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���     �  g  i  �      	core->start();5�_�   2   4           3  f       ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���    �  e  f          ,	auto point2 = generatePointFromWkt(pointB);5�_�   3   5           4  g       ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���    �  f  h  �      	core->start()5�_�   4   6           5  �       ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d���    �  �  �  �    �  �  �  �    5�_�   5   7           6  �       ����                                                                                                                                                                                                                                                                                                                           �   =      �          V   e    d��    
 �  �  �  �      )    EXPECT_EQ(newVector, originalVector);5�_�   6   8           7  e        ����                                                                                                                                                                                                                                                                                                                                                             d��     �  e  g  �    �  e  f  �    5�_�   7   9           8  f       ����                                                                                                                                                                                                                                                                                                                                                             d��     �  e  f          1	auto path2 = generateSteeringPathFromWkt(pathB);5�_�   8   :           9  e        ����                                                                                                                                                                                                                                                                                                                                                             d��     �  e  g  �    �  e  f  �    5�_�   9   ;           :  f       ����                                                                                                                                                                                                                                                                                                                                                             d��     �  e  g  �      ,	auto point1 = generatePointFromWkt(pointA);5�_�   :   <           ;  f   *    ����                                                                                                                                                                                                                                                                                                                                                             d��     �  e  g  �      ,	auto point2 = generatePointFromWkt(pointA);5�_�   ;   =           <          ����                                                                                                                                                                                                                                                                                                                           k   )      n   )       V   ,    d��#     �    �  �    �    �  �    5�_�   <   >           =  �       ����                                                                                                                                                                                                                                                                                                                           k   )      n   )       V   ,    d��%     �  �  �  �    5�_�   =   ?           >  �   +    ����                                                                                                                                                                                                                                                                                                                           k   )      n   )       V   ,    d��*     �  �  �  �      ,	gpsPublisher->dataGroup->position = point1;5�_�   >   @           ?     -    ����                                                                                                                                                                                                                                                                                                                           k   )      n   )       V   ,    d��3     �  ~  �  �      -	// Request Path 2 with the same ID as before5�_�   ?   A           @         ����                                                                                                                                                                                                                                                                                                                           k   )      n   )       V   ,    d��A     �  ~  �  �      	// HLC restarts5�_�   @               A         ����                                                                                                                                                                                                                                                                                                                           k   )      n   )       V   ,    d��D    �  ~  �  �      	// EC restarts5��