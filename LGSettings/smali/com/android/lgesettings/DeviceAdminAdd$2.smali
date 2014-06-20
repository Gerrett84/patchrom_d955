.class Lcom/android/lgesettings/DeviceAdminAdd$2;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DeviceAdminAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/lgesettings/DeviceAdminAdd$2;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 240
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "l1_dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/DeviceAdminAdd$2;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/lgesettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.anmane"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    sget v0, Lcom/android/lgesettings/DeviceAdminAdd;->mFlagBtnClick:I

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/lgesettings/DeviceAdminAdd$2;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/lgesettings/DeviceAdminAdd;->finish()V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DeviceAdminAdd$2;->this$0:Lcom/android/lgesettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/lgesettings/DeviceAdminAdd;->finish()V

    goto :goto_0
.end method
