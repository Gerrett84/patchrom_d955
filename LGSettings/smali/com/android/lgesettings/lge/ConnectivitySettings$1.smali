.class Lcom/android/lgesettings/lge/ConnectivitySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/ConnectivitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/ConnectivitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    const-string v4, "connected"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 189
    .local v2, usbConnected:Z
    const-string v4, "configured"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 191
    .local v1, usbConfigured:Z
    const-string v4, "ConnectivitySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStateReceiver() : usbConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v4, "ConnectivitySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStateReceiver() : usbConfigured="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SPR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    invoke-virtual {v4}, Lcom/android/lgesettings/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v3

    .line 199
    .local v3, usbTethered:Z
    const-string v4, "ConnectivitySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStateReceiver() : usbTethered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz v3, :cond_4

    .line 201
    iget-object v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #getter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$000(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 208
    .end local v3           #usbTethered:Z
    :cond_2
    :goto_0
    if-eqz v2, :cond_5

    .line 209
    iget-object v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #setter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnection:Z
    invoke-static {v4, v8}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$102(Lcom/android/lgesettings/lge/ConnectivitySettings;Z)Z

    .line 210
    if-eqz v1, :cond_3

    .line 211
    iget-object v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    iget-object v5, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #getter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$200(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/lgesettings/lge/ConnectivitySettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$300(Lcom/android/lgesettings/lge/ConnectivitySettings;Ljava/lang/String;)V

    .line 230
    .end local v1           #usbConfigured:Z
    .end local v2           #usbConnected:Z
    :cond_3
    :goto_1
    return-void

    .line 204
    .restart local v1       #usbConfigured:Z
    .restart local v2       #usbConnected:Z
    .restart local v3       #usbTethered:Z
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #getter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$000(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 215
    .end local v3           #usbTethered:Z
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #setter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnection:Z
    invoke-static {v4, v7}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$102(Lcom/android/lgesettings/lge/ConnectivitySettings;Z)Z

    .line 217
    iget-object v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #getter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$000(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 220
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SPR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 221
    :cond_6
    iget-object v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #getter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTethered:Z
    invoke-static {v4}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$400(Lcom/android/lgesettings/lge/ConnectivitySettings;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 222
    iget-object v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #calls: Lcom/android/lgesettings/lge/ConnectivitySettings;->connectUsbTether(Z)V
    invoke-static {v4, v7}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$500(Lcom/android/lgesettings/lge/ConnectivitySettings;Z)V

    .line 224
    :cond_7
    sput-boolean v7, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTetherChanged:Z

    .line 226
    :cond_8
    iget-object v4, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    iget-object v5, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$1;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #getter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$200(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/lgesettings/lge/ConnectivitySettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$300(Lcom/android/lgesettings/lge/ConnectivitySettings;Ljava/lang/String;)V

    goto :goto_1
.end method
