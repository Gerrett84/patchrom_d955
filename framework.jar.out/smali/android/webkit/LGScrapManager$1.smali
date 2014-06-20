.class Landroid/webkit/LGScrapManager$1;
.super Ljava/lang/Object;
.source "LGScrapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LGScrapManager;->saveBitmapToFileCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LGScrapManager;

.field final synthetic val$bitmap_copy:Landroid/graphics/Bitmap;

.field final synthetic val$fileCacheItem:Ljava/io/File;

.field final synthetic val$fileName_copy:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/LGScrapManager;Ljava/io/File;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Landroid/webkit/LGScrapManager$1;->this$0:Landroid/webkit/LGScrapManager;

    iput-object p2, p0, Landroid/webkit/LGScrapManager$1;->val$fileCacheItem:Ljava/io/File;

    iput-object p3, p0, Landroid/webkit/LGScrapManager$1;->val$bitmap_copy:Landroid/graphics/Bitmap;

    iput-object p4, p0, Landroid/webkit/LGScrapManager$1;->val$fileName_copy:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 136
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, out:Ljava/io/OutputStream;
    const/4 v3, 0x1

    .line 140
    .local v3, send:Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/webkit/LGScrapManager$1;->val$fileCacheItem:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1           #out:Ljava/io/OutputStream;
    .local v2, out:Ljava/io/OutputStream;
    :try_start_1
    iget-object v4, p0, Landroid/webkit/LGScrapManager$1;->val$bitmap_copy:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 142
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 147
    if-eqz v2, :cond_0

    .line 149
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 155
    if-ne v3, v7, :cond_0

    .line 156
    iget-object v4, p0, Landroid/webkit/LGScrapManager$1;->this$0:Landroid/webkit/LGScrapManager;

    iget-object v5, p0, Landroid/webkit/LGScrapManager$1;->val$fileName_copy:Ljava/lang/String;

    :goto_0
    #calls: Landroid/webkit/LGScrapManager;->sendIntent(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/webkit/LGScrapManager;->access$100(Landroid/webkit/LGScrapManager;Ljava/lang/String;)V

    :cond_0
    move-object v1, v2

    .line 162
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 163
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    const/4 v3, 0x0

    .line 147
    if-eqz v1, :cond_1

    .line 149
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 155
    if-ne v3, v7, :cond_1

    .line 156
    iget-object v4, p0, Landroid/webkit/LGScrapManager$1;->this$0:Landroid/webkit/LGScrapManager;

    iget-object v5, p0, Landroid/webkit/LGScrapManager$1;->val$fileName_copy:Ljava/lang/String;

    :goto_3
    #calls: Landroid/webkit/LGScrapManager;->sendIntent(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/webkit/LGScrapManager;->access$100(Landroid/webkit/LGScrapManager;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_2

    .line 149
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 155
    if-ne v3, v7, :cond_2

    .line 156
    iget-object v5, p0, Landroid/webkit/LGScrapManager$1;->this$0:Landroid/webkit/LGScrapManager;

    iget-object v6, p0, Landroid/webkit/LGScrapManager$1;->val$fileName_copy:Ljava/lang/String;

    :goto_5
    #calls: Landroid/webkit/LGScrapManager;->sendIntent(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/webkit/LGScrapManager;->access$100(Landroid/webkit/LGScrapManager;Ljava/lang/String;)V

    .line 147
    :cond_2
    throw v4

    .line 150
    :catch_1
    move-exception v0

    .line 152
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 153
    const/4 v3, 0x0

    .line 155
    if-ne v3, v7, :cond_2

    .line 156
    iget-object v5, p0, Landroid/webkit/LGScrapManager$1;->this$0:Landroid/webkit/LGScrapManager;

    iget-object v6, p0, Landroid/webkit/LGScrapManager$1;->val$fileName_copy:Ljava/lang/String;

    goto :goto_5

    .line 155
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-ne v3, v7, :cond_3

    .line 156
    iget-object v5, p0, Landroid/webkit/LGScrapManager$1;->this$0:Landroid/webkit/LGScrapManager;

    iget-object v6, p0, Landroid/webkit/LGScrapManager$1;->val$fileName_copy:Ljava/lang/String;

    #calls: Landroid/webkit/LGScrapManager;->sendIntent(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/webkit/LGScrapManager;->access$100(Landroid/webkit/LGScrapManager;Ljava/lang/String;)V

    .line 155
    :cond_3
    throw v4

    .line 150
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 152
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 153
    const/4 v3, 0x0

    .line 155
    if-ne v3, v7, :cond_1

    .line 156
    iget-object v4, p0, Landroid/webkit/LGScrapManager$1;->this$0:Landroid/webkit/LGScrapManager;

    iget-object v5, p0, Landroid/webkit/LGScrapManager$1;->val$fileName_copy:Ljava/lang/String;

    goto :goto_3

    .line 155
    :catchall_2
    move-exception v4

    if-ne v3, v7, :cond_4

    .line 156
    iget-object v5, p0, Landroid/webkit/LGScrapManager$1;->this$0:Landroid/webkit/LGScrapManager;

    iget-object v6, p0, Landroid/webkit/LGScrapManager$1;->val$fileName_copy:Ljava/lang/String;

    #calls: Landroid/webkit/LGScrapManager;->sendIntent(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/webkit/LGScrapManager;->access$100(Landroid/webkit/LGScrapManager;Ljava/lang/String;)V

    .line 155
    :cond_4
    throw v4

    .line 150
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    .line 152
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 153
    const/4 v3, 0x0

    .line 155
    if-ne v3, v7, :cond_0

    .line 156
    iget-object v4, p0, Landroid/webkit/LGScrapManager$1;->this$0:Landroid/webkit/LGScrapManager;

    iget-object v5, p0, Landroid/webkit/LGScrapManager$1;->val$fileName_copy:Ljava/lang/String;

    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    if-ne v3, v7, :cond_5

    .line 156
    iget-object v5, p0, Landroid/webkit/LGScrapManager$1;->this$0:Landroid/webkit/LGScrapManager;

    iget-object v6, p0, Landroid/webkit/LGScrapManager$1;->val$fileName_copy:Ljava/lang/String;

    #calls: Landroid/webkit/LGScrapManager;->sendIntent(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/webkit/LGScrapManager;->access$100(Landroid/webkit/LGScrapManager;Ljava/lang/String;)V

    .line 155
    :cond_5
    throw v4

    .line 147
    :catchall_4
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_4

    .line 143
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_2
.end method
