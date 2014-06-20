.class Lcom/android/server/wm/WindowManagerService$6;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3632
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 3634
    const/4 v2, 0x0

    .line 3635
    .local v2, dsdpDisplayId:I
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v11, "display"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 3636
    .local v1, displayManager:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v6

    .line 3637
    .local v6, presentationDisplays:[Landroid/view/Display;
    array-length v10, v6

    sput v10, Lcom/android/server/wm/WindowManagerService;->m_DsdpDisplayNum:I

    .line 3639
    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v10, v12, :cond_2

    .line 3640
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mDualScreenDisplayID:I
    invoke-static {v10}, Lcom/android/server/wm/WindowManagerService;->access$200(Lcom/android/server/wm/WindowManagerService;)I

    move-result v2

    .line 3647
    :cond_0
    :goto_0
    sget v10, Lcom/android/server/wm/WindowManagerService;->m_DsdpDisplayNum:I

    if-ne v10, v12, :cond_3

    .line 3648
    const-string v10, "WindowManager"

    const-string v11, "[DSDR][WMS.java] No external Displays connected. sys.lge.dsdp.mode set to STOP"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    sput v13, Lcom/android/server/wm/WindowManagerService;->mDsdpMode:I

    .line 3650
    const-string v10, "sys.lge.dsdp.mode"

    const-string v11, "stop"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    :cond_1
    :goto_1
    return-void

    .line 3641
    :cond_2
    iget v10, p1, Landroid/os/Message;->what:I

    if-nez v10, :cond_0

    .line 3642
    sget v10, Lcom/android/server/wm/WindowManagerService;->m_DsdpDisplayNum:I

    if-le v10, v12, :cond_0

    .line 3643
    aget-object v10, v6, v12

    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    goto :goto_0

    .line 3652
    :cond_3
    const/4 v3, 0x1

    .line 3653
    .local v3, isMirroring:Z
    const/4 v5, 0x0

    .line 3655
    .local v5, mirroringMode:I
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3656
    .local v0, displayContent:Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_4

    .line 3657
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[DSDR][WMS.java] Display ID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Display Content is NULL. sys.lge.dsdp.mode set to STOP"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    const-string v10, "sys.lge.dsdp.mode"

    const-string v11, "stop"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3659
    const/4 v3, 0x1

    .line 3660
    sput v13, Lcom/android/server/wm/WindowManagerService;->mDsdpMode:I

    goto :goto_1

    .line 3663
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v9

    .line 3664
    .local v9, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    .line 3665
    .local v8, windowCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v8, :cond_6

    .line 3666
    invoke-virtual {v9, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 3667
    .local v7, window:Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7e9

    if-ne v10, v11, :cond_7

    .line 3668
    :cond_5
    const/4 v3, 0x0

    .line 3675
    .end local v7           #window:Lcom/android/server/wm/WindowState;
    :cond_6
    if-ne v3, v12, :cond_8

    .line 3676
    const/4 v5, 0x1

    .line 3681
    :goto_3
    sget v10, Lcom/android/server/wm/WindowManagerService;->mDsdpMode:I

    if-eq v10, v5, :cond_1

    .line 3683
    sput v5, Lcom/android/server/wm/WindowManagerService;->mDsdpMode:I

    .line 3684
    sget v10, Lcom/android/server/wm/WindowManagerService;->mDsdpMode:I

    if-ne v10, v12, :cond_9

    .line 3685
    const-string v10, "WindowManager"

    const-string v11, "[DSDR][WMS.java] sys.lge.dsdp.mode set to STOP"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    const-string v10, "sys.lge.dsdp.mode"

    const-string v11, "stop"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3665
    .restart local v7       #window:Lcom/android/server/wm/WindowState;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3678
    .end local v7           #window:Lcom/android/server/wm/WindowState;
    :cond_8
    const/4 v5, 0x2

    goto :goto_3

    .line 3688
    :cond_9
    const-string v10, "WindowManager"

    const-string v11, "[DSDR][WMS.java] sys.lge.dsdp.mode set to START"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    const-string v10, "sys.lge.dsdp.mode"

    const-string v11, "start"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
