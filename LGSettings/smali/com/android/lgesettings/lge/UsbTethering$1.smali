.class Lcom/android/lgesettings/lge/UsbTethering$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbTethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/UsbTethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/UsbTethering;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/UsbTethering;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    :try_start_0
    const-string v7, "availableArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 100
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "activeArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "erroredArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 104
    .local v4, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 105
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    #calls: Lcom/android/lgesettings/lge/UsbTethering;->updateState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v7, v8, v9, v10}, Lcom/android/lgesettings/lge/UsbTethering;->access$000(Lcom/android/lgesettings/lge/UsbTethering;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v3

    .line 108
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v7, "TetherSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "information of tether status is null="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .end local v3           #e:Ljava/lang/NullPointerException;
    :cond_1
    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 111
    const-string v7, "connected"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 112
    .local v6, usbConnected:Z
    const-string v7, "configured"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 113
    .local v5, usbConfigured:Z
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    const-string v8, "cdrom_storage"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    #setter for: Lcom/android/lgesettings/lge/UsbTethering;->mCdromStorage:Z
    invoke-static {v7, v8}, Lcom/android/lgesettings/lge/UsbTethering;->access$102(Lcom/android/lgesettings/lge/UsbTethering;Z)Z

    .line 115
    if-eqz v6, :cond_2

    .line 116
    if-eqz v5, :cond_0

    .line 117
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #setter for: Lcom/android/lgesettings/lge/UsbTethering;->mUsbConnection:Z
    invoke-static {v7, v10}, Lcom/android/lgesettings/lge/UsbTethering;->access$202(Lcom/android/lgesettings/lge/UsbTethering;Z)Z

    .line 118
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #calls: Lcom/android/lgesettings/lge/UsbTethering;->updateState()V
    invoke-static {v7}, Lcom/android/lgesettings/lge/UsbTethering;->access$300(Lcom/android/lgesettings/lge/UsbTethering;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #setter for: Lcom/android/lgesettings/lge/UsbTethering;->mUsbConnection:Z
    invoke-static {v7, v9}, Lcom/android/lgesettings/lge/UsbTethering;->access$202(Lcom/android/lgesettings/lge/UsbTethering;Z)Z

    .line 122
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #calls: Lcom/android/lgesettings/lge/UsbTethering;->updateState()V
    invoke-static {v7}, Lcom/android/lgesettings/lge/UsbTethering;->access$300(Lcom/android/lgesettings/lge/UsbTethering;)V

    goto :goto_0

    .line 124
    .end local v5           #usbConfigured:Z
    .end local v6           #usbConnected:Z
    :cond_3
    const-string v7, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 125
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #setter for: Lcom/android/lgesettings/lge/UsbTethering;->mMassStorageActive:Z
    invoke-static {v7, v10}, Lcom/android/lgesettings/lge/UsbTethering;->access$402(Lcom/android/lgesettings/lge/UsbTethering;Z)Z

    .line 126
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #calls: Lcom/android/lgesettings/lge/UsbTethering;->updateState()V
    invoke-static {v7}, Lcom/android/lgesettings/lge/UsbTethering;->access$300(Lcom/android/lgesettings/lge/UsbTethering;)V

    goto :goto_0

    .line 127
    :cond_4
    const-string v7, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 128
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #setter for: Lcom/android/lgesettings/lge/UsbTethering;->mMassStorageActive:Z
    invoke-static {v7, v9}, Lcom/android/lgesettings/lge/UsbTethering;->access$402(Lcom/android/lgesettings/lge/UsbTethering;Z)Z

    .line 129
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #calls: Lcom/android/lgesettings/lge/UsbTethering;->updateState()V
    invoke-static {v7}, Lcom/android/lgesettings/lge/UsbTethering;->access$300(Lcom/android/lgesettings/lge/UsbTethering;)V

    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lge.hotspotprovision.STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    invoke-virtual {v7}, Lcom/android/lgesettings/lge/UsbTethering;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 139
    const-string v7, "result"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_6

    .line 141
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #getter for: Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v7}, Lcom/android/lgesettings/lge/UsbTethering;->access$500(Lcom/android/lgesettings/lge/UsbTethering;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #setter for: Lcom/android/lgesettings/lge/UsbTethering;->mIsProvisioned:Z
    invoke-static {v7, v10}, Lcom/android/lgesettings/lge/UsbTethering;->access$602(Lcom/android/lgesettings/lge/UsbTethering;Z)Z

    .line 143
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #calls: Lcom/android/lgesettings/lge/UsbTethering;->processTurnOnOff()Z
    invoke-static {v7}, Lcom/android/lgesettings/lge/UsbTethering;->access$700(Lcom/android/lgesettings/lge/UsbTethering;)Z

    goto/16 :goto_0

    .line 145
    :cond_6
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #getter for: Lcom/android/lgesettings/lge/UsbTethering;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v7}, Lcom/android/lgesettings/lge/UsbTethering;->access$500(Lcom/android/lgesettings/lge/UsbTethering;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    iget-object v7, p0, Lcom/android/lgesettings/lge/UsbTethering$1;->this$0:Lcom/android/lgesettings/lge/UsbTethering;

    #setter for: Lcom/android/lgesettings/lge/UsbTethering;->mIsProvisioned:Z
    invoke-static {v7, v9}, Lcom/android/lgesettings/lge/UsbTethering;->access$602(Lcom/android/lgesettings/lge/UsbTethering;Z)Z

    goto/16 :goto_0
.end method
