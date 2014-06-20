.class Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettingsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v3, "UsbSettingsPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUTORUN] mStateReceiver() : action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const-string v3, "connected"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 86
    .local v2, usbConnected:Z
    const-string v3, "configured"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 88
    .local v1, usbConfigured:Z
    if-ne v2, v6, :cond_1

    if-nez v1, :cond_1

    .line 89
    const-string v3, "UsbSettingsPopup"

    const-string v4, "[AUTORUN] mStateReceiver() : ===== USB Connected ====="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {p1, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    .line 114
    .end local v1           #usbConfigured:Z
    .end local v2           #usbConnected:Z
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v1       #usbConfigured:Z
    .restart local v2       #usbConnected:Z
    :cond_1
    if-ne v2, v6, :cond_2

    if-ne v1, v6, :cond_2

    .line 92
    const-string v3, "UsbSettingsPopup"

    const-string v4, "[AUTORUN] mStateReceiver() : ===== USB Configured ====="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {p1, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    goto :goto_0

    .line 94
    :cond_2
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 95
    const-string v3, "UsbSettingsPopup"

    const-string v4, "[AUTORUN] mStateReceiver() : ===== USB Disconnected ====="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p1, v7}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    .line 98
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$000(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ecm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 101
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z
    invoke-static {v3, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$202(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;Z)Z

    .line 102
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    invoke-virtual {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 106
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z
    invoke-static {v3, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$202(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;Z)Z

    .line 107
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    invoke-virtual {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .line 110
    :cond_4
    const-string v3, "UsbSettingsPopup"

    const-string v4, "[AUTORUN] mStateReceiver() : ===== USB Unknown Connected ===="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p1, v7}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    goto :goto_0
.end method
