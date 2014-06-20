.class Lcom/android/lgesettings/DeviceAdminAdd$3$1;
.super Landroid/os/RemoteCallback;
.source "DeviceAdminAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DeviceAdminAdd$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/DeviceAdminAdd$3;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DeviceAdminAdd$3;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/lgesettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/lgesettings/DeviceAdminAdd$3;

    invoke-direct {p0, p2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x1

    .line 281
    if-eqz p1, :cond_1

    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 285
    .local v1, msg:Ljava/lang/CharSequence;
    :goto_0
    if-nez v1, :cond_3

    .line 287
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/lgesettings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/lgesettings/DeviceAdminAdd$3;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/lgesettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/lgesettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/lgesettings/DeviceAdminAdd$3;

    iget-object v3, v3, Lcom/android/lgesettings/DeviceAdminAdd$3;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/lgesettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 292
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "l1_dcm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/lgesettings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/lgesettings/DeviceAdminAdd$3;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/lgesettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.nttdocomo.android.anmane"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    sget v2, Lcom/android/lgesettings/DeviceAdminAdd;->mFlagBtnClick:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/lgesettings/DeviceAdminAdd;->mFlagBtnClick:I

    .line 295
    sget v2, Lcom/android/lgesettings/DeviceAdminAdd;->mFlagBtnClick:I

    if-ne v2, v4, :cond_0

    .line 296
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Anmane Deactivate First, mFlagBtnClick = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/lgesettings/DeviceAdminAdd;->mFlagBtnClick:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v2, p0, Lcom/android/lgesettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/lgesettings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/lgesettings/DeviceAdminAdd$3;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/lgesettings/DeviceAdminAdd;->createThreadAndDialog()V

    .line 311
    :cond_0
    :goto_2
    return-void

    .line 281
    .end local v1           #msg:Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 301
    .restart local v1       #msg:Ljava/lang/CharSequence;
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/lgesettings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/lgesettings/DeviceAdminAdd$3;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/lgesettings/DeviceAdminAdd;->finish()V

    goto :goto_2

    .line 306
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 309
    iget-object v2, p0, Lcom/android/lgesettings/DeviceAdminAdd$3$1;->this$1:Lcom/android/lgesettings/DeviceAdminAdd$3;

    iget-object v2, v2, Lcom/android/lgesettings/DeviceAdminAdd$3;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    invoke-virtual {v2, v4, v0}, Lcom/android/lgesettings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 288
    .end local v0           #args:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method
