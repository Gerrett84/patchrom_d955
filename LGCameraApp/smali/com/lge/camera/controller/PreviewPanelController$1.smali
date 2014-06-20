.class Lcom/lge/camera/controller/PreviewPanelController$1;
.super Ljava/lang/Thread;
.source "PreviewPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;

.field final synthetic val$inclusion:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iput p2, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->val$inclusion:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 887
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v5, 0x0

    #setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v4, v5}, Lcom/lge/camera/controller/PreviewPanelController;->access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 889
    const/4 v2, 0x0

    .line 890
    .local v2, strUri:Ljava/lang/String;
    const/4 v1, 0x0

    .line 891
    .local v1, savedPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 893
    .local v0, pathFromUri:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v4

    if-nez v4, :cond_0

    .line 953
    :goto_0
    return-void

    .line 897
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 901
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastPictureUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 902
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastPicturePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 907
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController$1;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 908
    const-string v4, "CameraApp"

    const-string v5, "mThumbnailThread is isInterrupted()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 904
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastVideoUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 905
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastVideoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 911
    :cond_3
    const-string v4, "CameraApp"

    const-string v5, "Last uri:%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    if-eqz v2, :cond_5

    .line 914
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 916
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "Saved uri is not valid. Find most recent uri."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const/4 v2, 0x0

    .line 920
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController$1;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 921
    const-string v4, "CameraApp"

    const-string v5, "mThumbnailThread is isInterrupted()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 924
    :cond_6
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/lge/camera/controller/PreviewPanelController;->access$100(Lcom/lge/camera/controller/PreviewPanelController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 925
    const/4 v3, 0x0

    .line 926
    .local v3, temp:Landroid/graphics/Bitmap;
    if-nez v2, :cond_9

    .line 927
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v7, 0x1

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->val$inclusion:I

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(ZI)Landroid/net/Uri;

    move-result-object v6

    #setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v4, v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 928
    const-string v4, "CameraApp"

    const-string v6, "Found most recent uri:%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 939
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/lge/camera/controller/PreviewPanelController;->access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 940
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/lge/camera/controller/PreviewPanelController;->access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 942
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v4, v3}, Lcom/lge/camera/controller/PreviewPanelController;->access$202(Lcom/lge/camera/controller/PreviewPanelController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 943
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController$1;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 945
    const-string v4, "CameraApp"

    const-string v5, "mThumbnailThread is isInterrupted()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 931
    :cond_9
    :try_start_1
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    #setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v4, v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 932
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 933
    if-nez v3, :cond_7

    .line 934
    const-string v4, "CameraApp"

    const-string v6, "Couldn\'t get thumbnail from Last uri"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v7, 0x1

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->val$inclusion:I

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(ZI)Landroid/net/Uri;

    move-result-object v6

    #setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v4, v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 936
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    .line 943
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 948
    :cond_a
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/lge/camera/controller/PreviewPanelController;->access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_b

    .line 949
    const-string v4, "CameraApp"

    const-string v5, "Couldn\'t get any thumbnail. Leave it empty."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_b
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    goto/16 :goto_0
.end method
