.class Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1$1;
.super Ljava/util/TimerTask;
.source "AirplaneModeEnabler_VZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1$1;->this$1:Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1$1;->this$1:Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void
.end method
