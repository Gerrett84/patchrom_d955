.class Lcom/android/server/wm/WindowManagerService$5;
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
    .line 3568
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3570
    iget v10, p1, Landroid/os/Message;->what:I

    if-nez v10, :cond_0

    .line 3571
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v11, "display"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 3572
    .local v1, displayManager:Landroid/hardware/display/DisplayManager;
    const-string v10, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v1, v10}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v6

    .line 3573
    .local v6, presentationDisplays:[Landroid/view/Display;
    array-length v10, v6

    sput v10, Lcom/android/server/wm/WindowManagerService;->m_MirroringDisplayNum:I

    .line 3575
    sget v10, Lcom/android/server/wm/WindowManagerService;->m_MirroringDisplayNum:I

    if-nez v10, :cond_1

    .line 3577
    sput v12, Lcom/android/server/wm/WindowManagerService;->mMirroringMode:I

    .line 3578
    const-string v10, "sys.dsdp.mode"

    const-string v11, "stop"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    .end local v1           #displayManager:Landroid/hardware/display/DisplayManager;
    .end local v6           #presentationDisplays:[Landroid/view/Display;
    :cond_0
    :goto_0
    return-void

    .line 3580
    .restart local v1       #displayManager:Landroid/hardware/display/DisplayManager;
    .restart local v6       #presentationDisplays:[Landroid/view/Display;
    :cond_1
    const/4 v3, 0x1

    .line 3581
    .local v3, isMirroring:Z
    const/4 v5, 0x0

    .line 3583
    .local v5, mirroringMode:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v10, v6

    if-ge v2, v10, :cond_6

    .line 3584
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    aget-object v11, v6, v2

    invoke-virtual {v11}, Landroid/view/Display;->getDisplayId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3585
    .local v0, displayContent:Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_2

    .line 3587
    const-string v10, "sys.dsdp.mode"

    const-string v11, "stop"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    const/4 v3, 0x1

    .line 3589
    sput v12, Lcom/android/server/wm/WindowManagerService;->mMirroringMode:I

    goto :goto_0

    .line 3592
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v9

    .line 3593
    .local v9, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    .line 3594
    .local v8, windowCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v8, :cond_4

    .line 3595
    invoke-virtual {v9, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 3596
    .local v7, window:Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7e9

    if-ne v10, v11, :cond_5

    .line 3597
    :cond_3
    const/4 v3, 0x0

    .line 3583
    .end local v7           #window:Lcom/android/server/wm/WindowState;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3594
    .restart local v7       #window:Lcom/android/server/wm/WindowState;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3605
    .end local v0           #displayContent:Lcom/android/server/wm/DisplayContent;
    .end local v4           #j:I
    .end local v7           #window:Lcom/android/server/wm/WindowState;
    .end local v8           #windowCount:I
    .end local v9           #windows:Lcom/android/server/wm/WindowList;
    :cond_6
    if-ne v3, v13, :cond_7

    .line 3606
    const/4 v5, 0x1

    .line 3611
    :goto_3
    sget v10, Lcom/android/server/wm/WindowManagerService;->mMirroringMode:I

    if-eq v10, v5, :cond_0

    .line 3613
    sput v5, Lcom/android/server/wm/WindowManagerService;->mMirroringMode:I

    .line 3614
    sget v10, Lcom/android/server/wm/WindowManagerService;->mMirroringMode:I

    if-ne v10, v13, :cond_8

    .line 3615
    const-string v10, "sys.dsdp.mode"

    const-string v11, "stop"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3608
    :cond_7
    const/4 v5, 0x2

    goto :goto_3

    .line 3617
    :cond_8
    const-string v10, "sys.dsdp.mode"

    const-string v11, "start"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
