.class public Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "QuietModeAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mNBtnText:Ljava/lang/String;

.field private mPBtnText:Ljava/lang/String;

.field private mQmodeAlert:Landroid/content/BroadcastReceiver;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mTitle:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mMessage:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mPBtnText:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mNBtnText:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mQmodeAlert:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.settings.QMODE_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, changeQuietMode:Landroid/content/Intent;
    const-string v1, "PACKAGE_NAME"

    const-string v2, "com.android.lgesettings.DIRECT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    .end local v0           #changeQuietMode:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mQmodeAlert:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mQmodeAlert:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mQmodeAlert:Landroid/content/BroadcastReceiver;

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->finish()V

    .line 116
    return-void

    .line 106
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v1, "QuietModeAlertActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 83
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 84
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 86
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    const v1, 0x7f080e28

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    const v1, 0x7f080bfa

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->setupAlert()V

    .line 93
    const-string v1, "QuietModeAlertActivity"

    const-string v2, "onCreate++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mQmodeAlert:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "lge.settings.QMODE_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "QuietModeAlertActivity"

    const-string v1, "onDestroy++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mQmodeAlert:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mQmodeAlert:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->mQmodeAlert:Landroid/content/BroadcastReceiver;

    .line 129
    :cond_0
    return-void
.end method
