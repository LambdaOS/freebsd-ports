--- texstudio.pro.orig	2014-11-22 18:10:47.000000000 -0430
+++ texstudio.pro	2014-11-22 18:11:56.000000000 -0430
@@ -529,7 +529,8 @@
 
 unix {
     LIBS += -L/usr/lib \
-    -lz
+    -lz \
+    -lexecinfo
 }
 
 # ################################