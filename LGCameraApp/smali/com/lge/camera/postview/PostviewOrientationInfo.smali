.class public Lcom/lge/camera/postview/PostviewOrientationInfo;
.super Ljava/lang/Object;
.source "PostviewOrientationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;
    }
.end annotation


# instance fields
.field private mDisplayOrientationSetting:I

.field private mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

.field private mOrientation:I

.field private mOrientationChangeEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mSetOrientationReload:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    .line 30
    iput v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    .line 31
    iput-object v1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 32
    iput-boolean v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z

    .line 33
    iput v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mDisplayOrientationSetting:I

    .line 215
    new-instance v0, Lcom/lge/camera/postview/PostviewOrientationInfo$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostviewOrientationInfo$2;-><init>(Lcom/lge/camera/postview/PostviewOrientationInfo;)V

    iput-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mSetOrientationReload:Ljava/lang/Runnable;

    .line 28
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/postview/PostviewOrientationInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/postview/PostviewOrientationInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/postview/PostviewOrientationInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/postview/PostviewOrientationInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mDisplayOrientationSetting:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/postview/PostviewOrientationInfo;)Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    return-object v0
.end method


# virtual methods
.method public enableOrientationListener(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "CameraApp"

    const-string v1, "Activity is finishing. so listener must be disabled"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 p1, 0x0

    .line 48
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z

    .line 49
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public getActivityOrientation()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 191
    iget v1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 201
    :goto_0
    :pswitch_0
    return v0

    .line 195
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 199
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    return v0
.end method

.method public getOrientationListenerEnable()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z

    return v0
.end method

.method public getWindowOrientation()I
    .locals 7

    .prologue
    .line 160
    iget-object v4, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v4}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 161
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 162
    .local v3, rotation:I
    iget v2, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    .line 163
    .local v2, oldOrientation:I
    const/4 v1, 0x0

    .line 165
    .local v1, newOrientation:I
    packed-switch v3, :pswitch_data_0

    .line 183
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWindowOrientation:Old orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", New orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isHardKeyboradShowing() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->isHardKeyboradShowing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return v1

    .line 167
    :pswitch_0
    const/4 v1, 0x1

    .line 168
    goto :goto_0

    .line 170
    :pswitch_1
    const/4 v1, 0x0

    .line 171
    goto :goto_0

    .line 173
    :pswitch_2
    const/4 v1, 0x3

    .line 174
    goto :goto_0

    .line 176
    :pswitch_3
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->isHardKeyboradShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    const/4 v1, 0x0

    goto :goto_0

    .line 179
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isHardKeyboradShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 205
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHardKeyborad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v2}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v0, :cond_0

    .line 212
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 206
    goto :goto_0

    :cond_1
    move v0, v1

    .line 212
    goto :goto_0
.end method

.method public releaseOrientationListener()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 60
    return-void
.end method

.method public setActivityOrientationRun(I)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getPostViewParameters()Lcom/lge/camera/postview/PostViewParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getPostViewParameters()Lcom/lge/camera/postview/PostViewParameters;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostViewParameters;->setPreviewOrientation(I)V

    .line 144
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mSetOrientationReload:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 146
    :cond_0
    return-void
.end method

.method public setDisplayOrientationSettingValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 224
    iput p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mDisplayOrientationSetting:I

    .line 225
    return-void
.end method

.method public setOrientationByPreview(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 149
    iget v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 150
    iput p1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setActivityOrientationRun(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public setOrientationByWindowOrientation()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getWindowOrientation()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientation:I

    .line 157
    return-void
.end method

.method public setOrientationListener()V
    .locals 3

    .prologue
    .line 63
    const-string v0, "CameraApp"

    const-string v1, "setOrientationListener"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationChangeEnabled:Z

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 73
    :cond_1
    new-instance v0, Lcom/lge/camera/postview/PostviewOrientationInfo$1;

    iget-object v1, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mGet:Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;

    invoke-interface {v1}, Lcom/lge/camera/postview/PostviewOrientationInfo$PostviewOrientationInfoFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/camera/postview/PostviewOrientationInfo$1;-><init>(Lcom/lge/camera/postview/PostviewOrientationInfo;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/camera/postview/PostviewOrientationInfo;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method
