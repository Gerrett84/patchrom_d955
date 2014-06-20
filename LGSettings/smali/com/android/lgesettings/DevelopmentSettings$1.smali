.class Lcom/android/lgesettings/DevelopmentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DevelopmentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1512
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1513
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mLastEnabledState:Z
    invoke-static {v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$200(Lcom/android/lgesettings/DevelopmentSettings;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$300(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1514
    const-string v3, "connected"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1516
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #setter for: Lcom/android/lgesettings/DevelopmentSettings;->usbConnected:Z
    invoke-static {v3, v1}, Lcom/android/lgesettings/DevelopmentSettings;->access$402(Lcom/android/lgesettings/DevelopmentSettings;Z)Z

    .line 1517
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1518
    .local v2, mContext:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$500(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1519
    iget-object v5, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    #setter for: Lcom/android/lgesettings/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5, v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$502(Lcom/android/lgesettings/DevelopmentSettings;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;

    .line 1520
    :cond_0
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1522
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$500(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ecm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$500(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pc_suite"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1525
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$600(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1541
    .end local v2           #mContext:Landroid/content/Context;
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_2

    .line 1542
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v3

    iget-object v5, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/lgesettings/DevelopmentSettings;->access$600(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/lgesettings/MDMSettingsAdapter;->setAdbEnableMenu(Landroid/preference/CheckBoxPreference;)V

    .line 1547
    :cond_2
    sget-boolean v3, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v3, :cond_3

    .line 1549
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "adb_blocked"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    .line 1550
    .local v1, isBlockedByMdm:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 1551
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$600(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1552
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$600(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1558
    .end local v1           #isBlockedByMdm:Z
    :cond_3
    return-void

    .line 1530
    .restart local v2       #mContext:Landroid/content/Context;
    :cond_4
    const-string v3, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1531
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$600(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1536
    .end local v2           #mContext:Landroid/content/Context;
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #setter for: Lcom/android/lgesettings/DevelopmentSettings;->usbConnected:Z
    invoke-static {v3, v4}, Lcom/android/lgesettings/DevelopmentSettings;->access$402(Lcom/android/lgesettings/DevelopmentSettings;Z)Z

    .line 1537
    iget-object v3, p0, Lcom/android/lgesettings/DevelopmentSettings$1;->this$0:Lcom/android/lgesettings/DevelopmentSettings;

    #getter for: Lcom/android/lgesettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/DevelopmentSettings;->access$600(Lcom/android/lgesettings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    move v1, v4

    .line 1549
    goto :goto_1
.end method
