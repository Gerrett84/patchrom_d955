.class Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;
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
    .line 1495
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whitch"

    .prologue
    const/4 v3, 0x1

    .line 1498
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 1499
    if-eqz p1, :cond_0

    .line 1500
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1503
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1504
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1505
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    const-string v2, "ecm"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1506
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1509
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    .line 1555
    :goto_1
    return-void

    .line 1510
    :catch_0
    move-exception v0

    .line 1512
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] waiting exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1519
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdrom_storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdrom_storage,adb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1522
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassStorageSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1523
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const-string v2, "mass_storage"

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$802(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1524
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1525
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1526
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1527
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    .line 1541
    :goto_2
    sget-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    if-eqz v1, :cond_6

    .line 1543
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] DIALOG_PROGRESS : finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    if-eqz p1, :cond_3

    .line 1546
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1548
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_1

    .line 1529
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const-string v2, "mtp_only"

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$802(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1530
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1531
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1532
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 1535
    :cond_5
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1536
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1537
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 1551
    :cond_6
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] DIALOG_PROGRESS : Do not finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    goto/16 :goto_1
.end method
