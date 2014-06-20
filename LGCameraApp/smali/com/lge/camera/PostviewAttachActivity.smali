.class public Lcom/lge/camera/PostviewAttachActivity;
.super Lcom/lge/camera/PostviewNormalActivity;
.source "PostviewAttachActivity.java"


# instance fields
.field private mAttachButtonListener:Landroid/view/View$OnClickListener;

.field private mFinishListener:Landroid/view/View$OnClickListener;

.field private mPlayButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lge/camera/PostviewNormalActivity;-><init>()V

    .line 98
    new-instance v0, Lcom/lge/camera/PostviewAttachActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewAttachActivity$1;-><init>(Lcom/lge/camera/PostviewAttachActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewAttachActivity;->mAttachButtonListener:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/lge/camera/PostviewAttachActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewAttachActivity$2;-><init>(Lcom/lge/camera/PostviewAttachActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewAttachActivity;->mFinishListener:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lcom/lge/camera/PostviewAttachActivity$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewAttachActivity$3;-><init>(Lcom/lge/camera/PostviewAttachActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewAttachActivity;->mPlayButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private setUpAttachMenu()V
    .locals 4

    .prologue
    .line 82
    const v3, 0x7f090129

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewAttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    .local v0, mAttach:Landroid/widget/Button;
    const v3, 0x7f090128

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewAttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 84
    .local v1, mFinish:Landroid/widget/Button;
    const v3, 0x7f090126

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewAttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 86
    .local v2, mPlay:Landroid/widget/ImageButton;
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 87
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/PostviewAttachActivity;->mAttachButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v3, p0, Lcom/lge/camera/PostviewAttachActivity;->mFinishListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 95
    iget-object v3, p0, Lcom/lge/camera/PostviewAttachActivity;->mPlayButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void

    .line 89
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected doPreProcessOnCreate()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method protected doProcessOnCreate()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    .line 23
    invoke-direct {p0}, Lcom/lge/camera/PostviewAttachActivity;->setUpAttachMenu()V

    .line 24
    return-void
.end method

.method protected doProcessOnDestroy()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected doProcessOnPause()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected doProcessOnResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/PostviewAttachActivity;->checkValidateImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewAttachActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    iput-boolean v1, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/PostviewAttachActivity;->setUpAttachMenu()V

    .line 37
    :cond_1
    iput-boolean v1, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 48
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewAttachActivity;->doBackKeyInPostview()V

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected postviewShow()V
    .locals 3

    .prologue
    .line 64
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK show()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const v1, 0x7f090122

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewAttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, postView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 67
    const-string v1, "CameraApp"

    const-string v2, "postviewShow : inflate view fail."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewAttachActivity;->loadSingleCapturedImages()Z

    goto :goto_0
.end method

.method protected setupLayout()V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f09012e

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewAttachActivity;->inflateStub(I)Landroid/view/View;

    .line 79
    return-void
.end method
