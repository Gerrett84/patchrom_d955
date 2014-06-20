.class Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;
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
    .line 1664
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1666
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I
    invoke-static {v0, p2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2102(Lcom/android/lgesettings/deviceinfo/UsbSettings;I)I

    .line 1668
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1669
    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_TETHER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const-string v1, "ecm"

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$802(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1671
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$700(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 1673
    const-string v0, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v1, "5"

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1676
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1677
    sput-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1678
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1679
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1688
    :goto_0
    if-eqz p1, :cond_0

    .line 1689
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    .line 1717
    :cond_1
    :goto_1
    return-void

    .line 1681
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1682
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1684
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->doSleep(I)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2200(Lcom/android/lgesettings/deviceinfo/UsbSettings;I)V

    .line 1685
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "5"

    invoke-static {v0, v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1686
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z
    invoke-static {v0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2302(Lcom/android/lgesettings/deviceinfo/UsbSettings;Z)Z

    goto :goto_0

    .line 1692
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1693
    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_PC_SUITE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const-string v1, "pc_suite"

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$802(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1695
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$700(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 1697
    const-string v0, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1700
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1701
    sput-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1702
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1703
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1712
    :goto_2
    if-eqz p1, :cond_4

    .line 1713
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1715
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_1

    .line 1705
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1706
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1708
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->doSleep(I)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2200(Lcom/android/lgesettings/deviceinfo/UsbSettings;I)V

    .line 1709
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1710
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z
    invoke-static {v0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2302(Lcom/android/lgesettings/deviceinfo/UsbSettings;Z)Z

    goto :goto_2
.end method
