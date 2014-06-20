.class public Lcom/android/lgesettings/lockscreen/DialogPopup;
.super Landroid/app/DialogFragment;
.source "DialogPopup.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCancelOnTouchOutside:Z

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mIconId:I

.field private mIsIconAttr:Z

.field private mMessage:I

.field private mNBtnListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNButton:I

.field private mPBtnListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPButton:I

.field private mTitle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mCancelOnTouchOutside:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZIIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "activity"
    .parameter "iconId"
    .parameter "isIconAttr"
    .parameter "title"
    .parameter "message"
    .parameter "NButton"
    .parameter "PButton"
    .parameter "NBtnListener"
    .parameter "PBtnListener"
    .parameter "dismissListener"
    .parameter "cancelListener"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mCancelOnTouchOutside:Z

    .line 34
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mActivity:Landroid/app/Activity;

    .line 35
    iput p2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mIconId:I

    .line 36
    iput-boolean p3, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mIsIconAttr:Z

    .line 37
    iput p4, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mTitle:I

    .line 38
    iput p5, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mMessage:I

    .line 39
    iput p7, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mPButton:I

    .line 40
    iput p6, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mNButton:I

    .line 41
    iput-object p9, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mPBtnListener:Landroid/content/DialogInterface$OnClickListener;

    .line 42
    iput-object p8, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mNBtnListener:Landroid/content/DialogInterface$OnClickListener;

    .line 43
    iput-object p11, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 44
    iput-object p10, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lockscreen/DialogPopup;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mPBtnListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lockscreen/DialogPopup;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mNBtnListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 81
    :goto_0
    return-object v1

    .line 54
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mIsIconAttr:Z

    if-eqz v2, :cond_1

    .line 56
    iget v2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mIconId:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 59
    :goto_1
    iget v2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mTitle:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    iget v2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mMessage:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 61
    iget v2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mPButton:I

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lockscreen/DialogPopup;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/lockscreen/DialogPopup$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lockscreen/DialogPopup$1;-><init>(Lcom/android/lgesettings/lockscreen/DialogPopup;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    iget v2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mNButton:I

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lockscreen/DialogPopup;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/lgesettings/lockscreen/DialogPopup$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lockscreen/DialogPopup$2;-><init>(Lcom/android/lgesettings/lockscreen/DialogPopup;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 80
    .local v1, dialog:Landroid/app/Dialog;
    iget-boolean v2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mCancelOnTouchOutside:Z

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 58
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_1
    iget v2, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mIconId:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mCancelOnTouchOutside:Z

    .line 102
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/DialogPopup;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DialogPopup"

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/lockscreen/DialogPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    return-void
.end method
