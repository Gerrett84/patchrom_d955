.class Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$4;
.super Ljava/lang/Object;
.source "UsbSettingsPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 249
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$4;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 252
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$4;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 255
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 256
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$4;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$000(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    const-string v2, "charge_only"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 257
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$4;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mChargeModeChanged:Z
    invoke-static {v1, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$402(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;Z)Z

    .line 259
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 260
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$4;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    invoke-virtual {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    .line 263
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
