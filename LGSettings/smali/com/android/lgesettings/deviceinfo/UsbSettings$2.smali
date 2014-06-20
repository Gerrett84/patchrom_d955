.class Lcom/android/lgesettings/deviceinfo/UsbSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 164
    .local v11, action:Ljava/lang/String;
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] mStateReceiver() : action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] onReceive() : app userid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current userid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 177
    const-string v1, "connected"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 178
    .local v18, usbConnected:Z
    const-string v1, "configured"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 180
    .local v17, usbConfigured:Z
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] mStateReceiver() : getDefaultFunction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] mStateReceiver() : USB_FUNCTION_CDROM_STORAGE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cdrom_storage"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] mStateReceiver() : mDirectAutorun = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] mStateReceiver() : mActivityUsbModeChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] mStateReceiver() : mActivityFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    if-nez v17, :cond_2

    .line 187
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] mStateReceiver() : ===== USB Connected ====="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    .line 190
    const-string v1, "cdrom_storage"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const/4 v2, 0x3

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$200(Lcom/android/lgesettings/deviceinfo/UsbSettings;I)V

    goto/16 :goto_0

    .line 193
    :cond_2
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_8

    .line 194
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] mStateReceiver() : ===== USB Configured ====="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    .line 197
    const-string v1, "cdrom_storage"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const/4 v2, 0x3

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$200(Lcom/android/lgesettings/deviceinfo/UsbSettings;I)V

    .line 239
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    if-nez v1, :cond_6

    const-string v1, "ecm"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "cdrom_storage"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMultiUser()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isAutorunTimer()Z

    move-result v1

    if-nez v1, :cond_6

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getAutorunDialogDoNotShow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 200
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->cancelProgressPopup()V
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$300(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    .line 207
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMultiUser()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v1

    if-nez v1, :cond_5

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 212
    .local v13, activity:Landroid/app/Activity;
    if-eqz v13, :cond_5

    .line 213
    invoke-virtual {v13}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    .line 214
    .local v12, actionBar:Landroid/app/ActionBar;
    if-eqz v12, :cond_5

    .line 215
    invoke-virtual {v12}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v20

    .line 216
    .local v20, v:Landroid/view/View;
    if-eqz v20, :cond_5

    .line 217
    const/16 v1, 0x3e8

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    .line 218
    .local v14, autorunButton:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->setHasOptionsMenu(Z)V

    .line 219
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 226
    .end local v12           #actionBar:Landroid/app/ActionBar;
    .end local v13           #activity:Landroid/app/Activity;
    .end local v14           #autorunButton:Landroid/widget/ImageButton;
    .end local v20           #v:Landroid/view/View;
    :cond_5
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->supportAutorunMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getAutorunDialogDoNotShow(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isAutorunTimer()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMultiUser()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const/4 v2, 0x6

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$200(Lcom/android/lgesettings/deviceinfo/UsbSettings;I)V

    goto/16 :goto_1

    .line 249
    :catch_0
    move-exception v15

    .line 251
    .local v15, e:Ljava/lang/InterruptedException;
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] waiting exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 256
    .end local v15           #e:Ljava/lang/InterruptedException;
    :cond_6
    sget-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    if-nez v1, :cond_0

    const-string v1, "mass_storage"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassSeperatedModel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->startUmsSelection()V
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$500(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    goto/16 :goto_0

    .line 263
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 266
    :cond_8
    if-nez v18, :cond_13

    if-nez v17, :cond_13

    .line 267
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] mStateReceiver() : ===== USB Disconnected ====="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    .line 270
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v1

    if-nez v1, :cond_a

    .line 271
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 273
    :cond_9
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    .line 277
    :goto_3
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 280
    :cond_a
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->cancelProgressPopup()V
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$300(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    .line 283
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 284
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] mStateReceiver() : mDefaultFunction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$700(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$802(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 290
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v1

    if-nez v1, :cond_b

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtp_only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMtpAutorunModel()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 327
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbLauncher:Z
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 275
    :cond_c
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    goto/16 :goto_3

    .line 293
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "5"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_4

    .line 295
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pc_suite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "0"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_4

    .line 298
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_4

    .line 302
    :cond_10
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMultiUser()Z

    move-result v1

    if-nez v1, :cond_b

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 304
    .restart local v13       #activity:Landroid/app/Activity;
    if-eqz v13, :cond_11

    .line 305
    invoke-virtual {v13}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    .line 306
    .restart local v12       #actionBar:Landroid/app/ActionBar;
    if-eqz v12, :cond_11

    .line 307
    invoke-virtual {v12}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v20

    .line 308
    .restart local v20       #v:Landroid/view/View;
    if-eqz v20, :cond_11

    .line 309
    const/16 v1, 0x3e8

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    .line 310
    .restart local v14       #autorunButton:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->setHasOptionsMenu(Z)V

    .line 311
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 312
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 317
    .end local v12           #actionBar:Landroid/app/ActionBar;
    .end local v14           #autorunButton:Landroid/widget/ImageButton;
    .end local v20           #v:Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$900(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$900(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 320
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInstallAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInstallAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_4

    .line 331
    .end local v13           #activity:Landroid/app/Activity;
    :cond_13
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] mStateReceiver() : ===== USB Unknown Connected ===="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 334
    .end local v17           #usbConfigured:Z
    .end local v18           #usbConnected:Z
    :cond_14
    const-string v1, "com.lge.intent.action.autorun_timeout"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 335
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->cancelProgressPopup()V
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$300(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 339
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    const-string v2, "ecm"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    invoke-static/range {p1 .. p1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 345
    :cond_15
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdrom_storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdrom_storage,adb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 348
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassStorageSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const-string v2, "mass_storage"

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$802(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    .line 367
    :goto_5
    sget-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    if-eqz v1, :cond_19

    .line 369
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] mStateReceiver() : finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 355
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const-string v2, "mtp_only"

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$802(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    .line 361
    :cond_18
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    .line 374
    :cond_19
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] mStateReceiver() : Do not finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    goto/16 :goto_0

    .line 378
    :cond_1a
    const-string v1, "com.lge.intent.action.autorun_ack"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 379
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isOldVersionModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->autorunAck()V
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1200(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    goto/16 :goto_0

    .line 385
    :cond_1b
    const-string v1, "com.lge.intent.action.autorun_change_mode"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 386
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->cancelProgressPopup()V
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$300(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    .line 389
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isOldVersionModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->autorunChangeMode()V
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1300(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    goto/16 :goto_0

    .line 392
    :cond_1c
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Z

    move-result v16

    .line 395
    .local v16, enabled:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1500(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1500(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v2, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 399
    :cond_1d
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 400
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;
    invoke-static {v6}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1500(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbMenu(Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 396
    :cond_1e
    const/4 v1, 0x0

    goto :goto_6

    .line 404
    .end local v16           #enabled:Z
    :cond_1f
    const-string v1, "com.lge.intent.action.mass_state_change"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 405
    invoke-static/range {p1 .. p1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->checkStorageVolume(Landroid/content/Context;)V

    .line 406
    const-string v1, "extra_usb_default_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 408
    .local v19, usbMode:Ljava/lang/String;
    if-eqz v19, :cond_20

    const-string v1, "charge_only"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, v19

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$802(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$700(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-result-object v1

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassStorageEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 415
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 416
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;
    invoke-static {v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbMenu(Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 421
    .end local v19           #usbMode:Ljava/lang/String;
    :cond_21
    const-string v1, "com.lge.intent.action.tether_state_change"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 422
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 423
    const-string v1, "extra_usb_default_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 424
    .restart local v19       #usbMode:Ljava/lang/String;
    if-eqz v19, :cond_0

    const-string v1, "charge_only"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, v19

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$802(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$700(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    .end local v19           #usbMode:Ljava/lang/String;
    :cond_22
    const-string v1, "com.lge.intent.action.activity_finish"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0
.end method
