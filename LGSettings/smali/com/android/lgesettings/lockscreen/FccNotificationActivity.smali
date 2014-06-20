.class public Lcom/android/lgesettings/lockscreen/FccNotificationActivity;
.super Landroid/app/Activity;
.source "FccNotificationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v9, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$1;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$1;-><init>(Lcom/android/lgesettings/lockscreen/FccNotificationActivity;)V

    .line 39
    .local v9, pinChangeCallback:Landroid/content/DialogInterface$OnClickListener;
    new-instance v8, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$2;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$2;-><init>(Lcom/android/lgesettings/lockscreen/FccNotificationActivity;)V

    .line 47
    .local v8, useCurPinCallback:Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$3;

    invoke-direct {v10, p0}, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$3;-><init>(Lcom/android/lgesettings/lockscreen/FccNotificationActivity;)V

    .line 54
    .local v10, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    new-instance v11, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$4;

    invoke-direct {v11, p0}, Lcom/android/lgesettings/lockscreen/FccNotificationActivity$4;-><init>(Lcom/android/lgesettings/lockscreen/FccNotificationActivity;)V

    .line 61
    .local v11, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v0, Lcom/android/lgesettings/lockscreen/DialogPopup;

    const v4, 0x7f081060

    const v5, 0x7f081062

    const v6, 0x7f080016

    const v7, 0x7f080015

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/lgesettings/lockscreen/DialogPopup;-><init>(Landroid/app/Activity;IZIIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 64
    .local v0, dp:Lcom/android/lgesettings/lockscreen/DialogPopup;
    invoke-virtual {v0, v2}, Lcom/android/lgesettings/lockscreen/DialogPopup;->setCanceledOnTouchOutside(Z)V

    .line 65
    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/DialogPopup;->show()V

    .line 67
    invoke-static {p0, v3}, Lcom/android/lgesettings/lockscreen/LockUtil;->setFccNotificationFirstBootFlag(Landroid/content/Context;I)V

    .line 68
    return-void
.end method
