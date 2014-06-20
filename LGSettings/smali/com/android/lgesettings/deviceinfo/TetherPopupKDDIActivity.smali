.class public Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "TetherPopupKDDIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private checkDoNotShow()V
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->mView:Landroid/view/View;

    const v2, 0x7f0a030c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 89
    .local v0, donotshow:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "TETHER_POPUP_KDDI"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "TETHER_POPUP_KDDI"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private createView()Landroid/view/View;
    .locals 7

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040165

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->mView:Landroid/view/View;

    .line 56
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->mView:Landroid/view/View;

    const v4, 0x7f0a030b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, link:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <a href=\'https://cs.kddi.com/smt_i/te/\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f081000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, urlText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f081002

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 61
    .local v1, textlink:Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 64
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->mView:Landroid/view/View;

    return-object v3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 70
    packed-switch p2, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->checkDoNotShow()V

    .line 74
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->setResult(I)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 42
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f080ffe

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 43
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 44
    const v1, 0x7f081004

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 45
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    const v1, 0x7f081003

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 47
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    const v1, 0x1010355

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 49
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/TetherPopupKDDIActivity;->setupAlert()V

    .line 51
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 100
    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
