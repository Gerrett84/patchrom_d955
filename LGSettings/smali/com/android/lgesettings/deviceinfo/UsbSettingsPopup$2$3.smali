.class Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$3;
.super Ljava/lang/Object;
.source "UsbSettingsPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$3;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 269
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$3;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 271
    sput-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$3;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$000(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "charge_only"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 273
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$3;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mChargeModeChanged:Z
    invoke-static {v0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$402(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;Z)Z

    .line 275
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$3;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    .line 277
    return-void
.end method
