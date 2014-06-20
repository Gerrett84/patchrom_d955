.class public Lcom/lge/camera/dialog/HelpActivityDialog;
.super Ljava/lang/Object;
.source "HelpActivityDialog.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mCameraId:I

.field private mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

.field private mImgResource:I

.field private mMessage:Ljava/lang/String;

.field protected mOrientation:I

.field private mTitle:Ljava/lang/String;

.field private selectedPopupId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mOrientation:I

    .line 21
    iput-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mTitle:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mMessage:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mImgResource:I

    .line 24
    iput v2, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mCameraId:I

    .line 25
    iput v1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->selectedPopupId:I

    .line 26
    iput-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    .line 29
    iput-object p1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mActivity:Landroid/app/Activity;

    .line 30
    invoke-static {}, Lcom/lge/camera/util/DialogCreater;->makeHelpDialog()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter "activity"
    .parameter "cameraId"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/HelpActivityDialog;-><init>(Landroid/app/Activity;)V

    .line 35
    iput p2, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mCameraId:I

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/dialog/HelpActivityDialog;)Lcom/lge/camera/dialog/CustomAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    return-object v0
.end method


# virtual methods
.method public create(II)V
    .locals 10
    .parameter "whichPopup"
    .parameter "orientation"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-static {p1}, Lcom/lge/camera/util/DialogCreater;->getHelpPopupID(I)I

    move-result v7

    iget v8, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mCameraId:I

    invoke-static {v7, v8}, Lcom/lge/camera/util/DialogCreater;->getHelpItemResources(II)[I

    move-result-object v0

    .line 41
    .local v0, helpResources:[I
    if-eqz p2, :cond_0

    if-ne p2, v9, :cond_4

    :cond_0
    move v1, v6

    .line 42
    .local v1, imgLevel:I
    :goto_0
    iget-object v7, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mActivity:Landroid/app/Activity;

    aget v8, v0, v5

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mTitle:Ljava/lang/String;

    .line 43
    iget-object v7, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mActivity:Landroid/app/Activity;

    aget v8, v0, v6

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mMessage:Ljava/lang/String;

    .line 44
    aget v7, v0, v9

    iput v7, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mImgResource:I

    .line 45
    iput p1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->selectedPopupId:I

    .line 47
    invoke-static {p1}, Lcom/lge/camera/util/DialogCreater;->getHelpPopupID(I)I

    move-result v7

    const/16 v8, 0x6a

    if-ne v7, v8, :cond_5

    move v3, v6

    .line 50
    .local v3, isVoiceShutterGuideViewNeeded:Z
    :goto_1
    new-instance v5, Lcom/lge/camera/dialog/CustomAlertDialog;

    iget-object v6, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6, p2}, Lcom/lge/camera/dialog/CustomAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    .line 52
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    iget-object v6, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lge/camera/dialog/CustomAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    iget-object v6, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lge/camera/dialog/CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    iget v6, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mImgResource:I

    invoke-virtual {v5, v6, v1}, Lcom/lge/camera/dialog/CustomAlertDialog;->setMessageImage(II)V

    .line 55
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v5, v3}, Lcom/lge/camera/dialog/CustomAlertDialog;->setVoiceShutterVisibility(Z)V

    .line 56
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v5}, Lcom/lge/camera/dialog/CustomAlertDialog;->show()V

    .line 58
    if-eqz p2, :cond_1

    if-ne p2, v9, :cond_2

    .line 59
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    const v6, 0x7f0900b4

    invoke-virtual {v5, v6}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 60
    .local v2, innerLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v5}, Lcom/lge/camera/dialog/CustomAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/lge/camera/util/DialogCreater;->getHorizontalHelpDialogWidth(Landroid/content/Context;Z)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 62
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .end local v2           #innerLayout:Landroid/widget/LinearLayout;
    .end local v4           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    if-eqz v3, :cond_3

    .line 66
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    new-instance v6, Lcom/lge/camera/dialog/HelpActivityDialog$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/HelpActivityDialog$1;-><init>(Lcom/lge/camera/dialog/HelpActivityDialog;)V

    invoke-virtual {v5, v6}, Lcom/lge/camera/dialog/CustomAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 83
    :cond_3
    return-void

    .end local v1           #imgLevel:I
    .end local v3           #isVoiceShutterGuideViewNeeded:Z
    :cond_4
    move v1, v5

    .line 41
    goto :goto_0

    .restart local v1       #imgLevel:I
    :cond_5
    move v3, v5

    .line 47
    goto :goto_1
.end method

.method public dismissHelpDialog()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->dismiss()V

    .line 89
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->isShowing()Z

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshDialog(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/dialog/HelpActivityDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/lge/camera/dialog/HelpActivityDialog;->dismissHelpDialog()V

    .line 102
    iget v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->selectedPopupId:I

    invoke-virtual {p0, v0, p1}, Lcom/lge/camera/dialog/HelpActivityDialog;->create(II)V

    .line 104
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->dismiss()V

    .line 109
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unbind()V

    .line 110
    iput-object v1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    .line 112
    :cond_0
    iput-object v1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mActivity:Landroid/app/Activity;

    .line 113
    return-void
.end method
