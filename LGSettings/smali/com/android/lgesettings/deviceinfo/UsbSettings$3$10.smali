.class Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 1562
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1565
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    .line 1566
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 1567
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 1608
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ecm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1618
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1619
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string v3, "ecm"

    invoke-virtual {v2, v3, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1620
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v3, v3, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1623
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1630
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    .line 1655
    :goto_1
    return v1

    .line 1624
    :catch_0
    move-exception v0

    .line 1626
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "UsbSettings"

    const-string v3, "[AUTORUN] waiting exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1633
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1634
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v3, v3, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1635
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v3, v3, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1638
    sget-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    if-eqz v2, :cond_2

    .line 1640
    const-string v2, "UsbSettings"

    const-string v3, "[AUTORUN] DIALOG_PROGRESS : finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    if-eqz p1, :cond_1

    .line 1643
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1645
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v2, v2, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto :goto_1

    .line 1648
    :cond_2
    const-string v2, "UsbSettings"

    const-string v3, "[AUTORUN] DIALOG_PROGRESS : Do not finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    goto :goto_1

    .line 1655
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
