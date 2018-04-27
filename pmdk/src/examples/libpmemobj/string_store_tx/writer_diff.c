diff --git a/src/examples/libpmemobj/string_store_tx/writer.c b/src/examples/libpmemobj/string_store_tx/writer.c
index 09e0340..635187b 100644
--- a/src/examples/libpmemobj/string_store_tx/writer.c
+++ b/src/examples/libpmemobj/string_store_tx/writer.c
@@ -47,17 +47,22 @@ main(int argc, char *argv[])
 		printf("usage: %s file-name\n", argv[0]);
 		return 1;
 	}
-
+        printf("pmemobj_create before\n");
 	PMEMobjpool *pop = pmemobj_create(argv[1], LAYOUT_NAME,
 				PMEMOBJ_MIN_POOL, 0666);
+        printf("pmemobj_create after\n");
 
 	if (pop == NULL) {
 		perror("pmemobj_create");
 		return 1;
 	}
 
+        printf("pmemobj_root before\n");
 	PMEMoid root = pmemobj_root(pop, sizeof(struct my_root));
+        printf("pmemobj_root after\n");
+        printf("pmemobj_direct before\n");
 	struct my_root *rootp = pmemobj_direct(root);
+        printf("pmemobj_direct after\n");
 
 	char buf[MAX_BUF_LEN] = {0};
 	if (scanf("%9s", buf) == EOF) {
@@ -66,11 +71,15 @@ main(int argc, char *argv[])
 	}
 
 	TX_BEGIN(pop) {
+                printf("pmemobj_tx_add_range before\n");
 		pmemobj_tx_add_range(root, 0, sizeof(struct my_root));
+                printf("pmemobj_tx_add_range after\n");
 		memcpy(rootp->buf, buf, strlen(buf));
 	} TX_END
 
+        printf("pmemobj_close after\n");
 	pmemobj_close(pop);
+        printf("pmemobj_close after\n");
 
 	return 0;
 }
