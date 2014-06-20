.class Lcom/lge/camera/postview/PostviewOrientationInfo$1;
.super Landroid/view/OrientationEventListener;
.source "PostviewOrientationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;


# direct methods
.method constructor <init>(Lcom/lge/camera/postview/PostviewOrientationInfo;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private setOrientationLandscape()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #getter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$100(Lcom/lge/camera/postview/PostviewOrientationInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #setter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$102(Lcom/lge/camera/postview/PostviewOrientationInfo;I)I

    .line 134
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setActivityOrientationRun(I)V

    .line 135
    const-string v0, "CameraApp"

    const-string v1, "mOrientationListener:ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method private setOrientationLandscapeOpposite()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 99
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #getter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$100(Lcom/lge/camera/postview/PostviewOrientationInfo;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #setter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$102(Lcom/lge/camera/postview/PostviewOrientationInfo;I)I

    .line 101
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setActivityOrientationRun(I)V

    .line 102
    const-string v0, "CameraApp"

    const-string v1, "mOrientationListener:ORIENTATION_LANDSCAPE_OPPOSITE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method private setOrientationPortrait()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #getter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$100(Lcom/lge/camera/postview/PostviewOrientationInfo;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #setter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$102(Lcom/lge/camera/postview/PostviewOrientationInfo;I)I

    .line 126
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setActivityOrientationRun(I)V

    .line 127
    const-string v0, "CameraApp"

    const-string v1, "mOrientationListener:ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method private setOrientationPortraitOpposite()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #getter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mDisplayOrientationSetting:I
    invoke-static {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$200(Lcom/lge/camera/postview/PostviewOrientationInfo;)I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #getter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$100(Lcom/lge/camera/postview/PostviewOrientationInfo;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #setter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I
    invoke-static {v0, v2}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$102(Lcom/lge/camera/postview/PostviewOrientationInfo;I)I

    .line 111
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setActivityOrientationRun(I)V

    .line 112
    const-string v0, "CameraApp"

    const-string v1, "mOrientationListener:mDisplayOrientationSetting is set 1 = ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #getter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$100(Lcom/lge/camera/postview/PostviewOrientationInfo;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #setter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I
    invoke-static {v0, v3}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$102(Lcom/lge/camera/postview/PostviewOrientationInfo;I)I

    .line 117
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setActivityOrientationRun(I)V

    .line 118
    const-string v0, "CameraApp"

    const-string v1, "mOrientationListener:ORIENTATION_PORTRAIT_OPPOSITE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 76
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->this$0:Lcom/lge/camera/postview/PostviewOrientationInfo;

    #getter for: Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z
    invoke-static {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->access$000(Lcom/lge/camera/postview/PostviewOrientationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->setOrientationPortrait()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/16 v0, 0xfa

    if-le p1, v0, :cond_2

    const/16 v0, 0x122

    if-ge p1, v0, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->setOrientationLandscape()V

    goto :goto_0

    .line 84
    :cond_2
    const/16 v0, 0x154

    if-gt p1, v0, :cond_3

    const/16 v0, 0x14

    if-ge p1, v0, :cond_4

    .line 86
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->setOrientationPortrait()V

    goto :goto_0

    .line 87
    :cond_4
    const/16 v0, 0xa0

    if-le p1, v0, :cond_5

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_5

    .line 89
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->setOrientationPortraitOpposite()V

    goto :goto_0

    .line 90
    :cond_5
    const/16 v0, 0x46

    if-le p1, v0, :cond_0

    const/16 v0, 0x6e

    if-ge p1, v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo$1;->setOrientationLandscapeOpposite()V

    goto :goto_0
.end method
