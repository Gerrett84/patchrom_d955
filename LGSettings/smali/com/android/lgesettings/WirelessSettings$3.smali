.class Lcom/android/lgesettings/WirelessSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 905
    iput-object p1, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

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

    .line 908
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 911
    invoke-static {p2}, Lcom/android/lgesettings/WirelessSettings;->access$402(Landroid/content/Intent;)Landroid/content/Intent;

    .line 915
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 917
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 919
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 922
    .local v3, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 923
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->bluetoothAvailable:Z
    invoke-static {v4}, Lcom/android/lgesettings/WirelessSettings;->access$500(Lcom/android/lgesettings/WirelessSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 924
    iget-object v7, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    #calls: Lcom/android/lgesettings/WirelessSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v7, v4, v5, v6}, Lcom/android/lgesettings/WirelessSettings;->access$600(Lcom/android/lgesettings/WirelessSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 979
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 933
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->updateState()V
    invoke-static {v4}, Lcom/android/lgesettings/WirelessSettings;->access$200(Lcom/android/lgesettings/WirelessSettings;)V

    goto :goto_0

    .line 937
    :cond_2
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 938
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothEnableForTether:Z
    invoke-static {v4}, Lcom/android/lgesettings/WirelessSettings;->access$700(Lcom/android/lgesettings/WirelessSettings;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 939
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 955
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->bluetoothAvailable:Z
    invoke-static {v4}, Lcom/android/lgesettings/WirelessSettings;->access$500(Lcom/android/lgesettings/WirelessSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 956
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->updateState()V
    invoke-static {v4}, Lcom/android/lgesettings/WirelessSettings;->access$200(Lcom/android/lgesettings/WirelessSettings;)V

    goto :goto_0

    .line 942
    :sswitch_0
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v4}, Lcom/android/lgesettings/WirelessSettings;->access$000(Lcom/android/lgesettings/WirelessSettings;)Landroid/bluetooth/BluetoothPan;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 943
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #setter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothEnableForTether:Z
    invoke-static {v4, v7}, Lcom/android/lgesettings/WirelessSettings;->access$702(Lcom/android/lgesettings/WirelessSettings;Z)Z

    goto :goto_1

    .line 948
    :sswitch_1
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #setter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothEnableForTether:Z
    invoke-static {v4, v7}, Lcom/android/lgesettings/WirelessSettings;->access$702(Lcom/android/lgesettings/WirelessSettings;Z)Z

    goto :goto_1

    .line 960
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->PROVISION:Z
    invoke-static {v4}, Lcom/android/lgesettings/WirelessSettings;->access$800(Lcom/android/lgesettings/WirelessSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.hotspotprovision.STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 962
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 963
    const-string v4, "WirelessSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BTUI]hotspotprovision.STATE_CHANGED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "result"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 965
    const-string v4, "result"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 967
    const-string v4, "WirelessSettings"

    const-string v5, "[BTUI] 4G MOBILE HOTSPOT PROVISION OK."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 969
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #setter for: Lcom/android/lgesettings/WirelessSettings;->mIsProvisioned:Z
    invoke-static {v4, v8}, Lcom/android/lgesettings/WirelessSettings;->access$902(Lcom/android/lgesettings/WirelessSettings;Z)Z

    .line 970
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->gotoNextStep(Z)V
    invoke-static {v4, v8}, Lcom/android/lgesettings/WirelessSettings;->access$1000(Lcom/android/lgesettings/WirelessSettings;Z)V

    goto/16 :goto_0

    .line 972
    :cond_5
    const-string v4, "WirelessSettings"

    const-string v5, "[BTUI] 4G MOBILE HOTSPOT PROVISION FAIL."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 974
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings$3;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #setter for: Lcom/android/lgesettings/WirelessSettings;->mIsProvisioned:Z
    invoke-static {v4, v7}, Lcom/android/lgesettings/WirelessSettings;->access$902(Lcom/android/lgesettings/WirelessSettings;Z)Z

    goto/16 :goto_0

    .line 939
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
