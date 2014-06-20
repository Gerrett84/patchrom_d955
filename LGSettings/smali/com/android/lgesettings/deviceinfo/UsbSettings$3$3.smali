.class Lcom/android/lgesettings/deviceinfo/UsbSettings$3$3;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$3;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1408
    if-eqz p1, :cond_0

    .line 1409
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1411
    :cond_0
    sget-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$3;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$3;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isAutorunTimer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$3;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    .line 1418
    :cond_1
    return-void
.end method
