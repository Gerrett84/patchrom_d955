.class Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BtUiEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 771
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 773
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] onReceive()... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 777
    const-string v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 778
    invoke-static {}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 779
    const-string v3, "android.bluetooth.pbap.intent.PBAP_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 780
    .local v2, state:I
    if-ne v2, v7, :cond_3

    .line 781
    const-string v3, "PBAP Connected"

    invoke-static {p1, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->displayToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 789
    .end local v2           #state:I
    :cond_0
    :goto_0
    const-string v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 790
    invoke-static {}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$2200()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "LGBT_CNDTL_SCENARIO_VZW_SHOW_PBAP_CONN_TOAST"

    invoke-static {v3}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 791
    :cond_1
    const-string v3, "android.bluetooth.pbap.intent.PBAP_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 792
    .restart local v2       #state:I
    if-ne v2, v7, :cond_2

    .line 793
    const v3, 0x7f0814f4

    invoke-static {p1, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->displayToast(Landroid/content/Context;I)V

    .line 812
    .end local v2           #state:I
    :cond_2
    :goto_1
    return-void

    .line 782
    .restart local v2       #state:I
    :cond_3
    if-nez v2, :cond_0

    .line 783
    const-string v3, "PBAP Disconnected"

    invoke-static {p1, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->displayToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 799
    .end local v2           #state:I
    :cond_4
    const-string v3, "voice_video_record_playing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 800
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->isRecordStarted:Z

    goto :goto_1

    .line 801
    :cond_5
    const-string v3, "voice_video_record_finish"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 802
    sput-boolean v6, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->isRecordStarted:Z

    goto :goto_1

    .line 806
    :cond_6
    const-string v3, "com.lge.btui.action.BlockAVRCPToggle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 807
    const-string v3, "blockToggle"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, block:Ljava/lang/String;
    const-string v3, "service.btui.BlockAVRCPToggle"

    invoke-static {v3, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
