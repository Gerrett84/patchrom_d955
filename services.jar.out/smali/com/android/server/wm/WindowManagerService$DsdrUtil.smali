.class final Lcom/android/server/wm/WindowManagerService$DsdrUtil;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DsdrUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 13288
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DsdrUtil;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13290
    return-void
.end method


# virtual methods
.method public destroyExternalApp()V
    .locals 10

    .prologue
    .line 13299
    :try_start_0
    const-string v7, "WindowManager"

    const-string v8, "[DSDR] destroyExternalWindows started"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13300
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DsdrUtil;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 13301
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DsdrUtil;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, index:I
    :goto_0
    if-ltz v3, :cond_1

    .line 13302
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DsdrUtil;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 13303
    .local v5, token:Lcom/android/server/wm/AppWindowToken;
    const/4 v4, 0x0

    .line 13304
    .local v4, rv:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DsdrUtil;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowManagerService;->getExternalWindowStatus(Lcom/android/server/wm/AppWindowToken;)I

    move-result v4

    if-lez v4, :cond_0

    .line 13305
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 13306
    .local v6, w:Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_0

    .line 13307
    iget-object v1, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13309
    .local v1, attrs:Landroid/view/WindowManager$LayoutParams;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DsdrUtil;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 13310
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v7, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 13311
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DSDR] Destroy external activity - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 13301
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #w:Lcom/android/server/wm/WindowState;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 13312
    .restart local v1       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v6       #w:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 13317
    .end local v1           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #index:I
    .end local v4           #rv:I
    .end local v5           #token:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #w:Lcom/android/server/wm/WindowState;
    :catch_1
    move-exception v7

    .line 13319
    :cond_1
    return-void
.end method
