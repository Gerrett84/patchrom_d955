.class Lcom/android/lgesettings/deviceinfo/Status$5;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status$5;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status$5;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #calls: Lcom/android/lgesettings/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/Status;->access$1600(Lcom/android/lgesettings/deviceinfo/Status;)V

    .line 542
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status$5;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #calls: Lcom/android/lgesettings/deviceinfo/Status;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/Status;->access$1700(Lcom/android/lgesettings/deviceinfo/Status;)V

    .line 543
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status$5;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    iput-object p1, v0, Lcom/android/lgesettings/deviceinfo/Status;->mSignalStrength_LTE:Landroid/telephony/SignalStrength;

    .line 548
    const-string v0, "starmotor"

    const-string v1, "signal1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status$5;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/Status;->updateSignalStrength()V

    .line 550
    return-void
.end method
