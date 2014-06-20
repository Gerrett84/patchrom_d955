.class Lcom/android/lgesettings/wifi/WifiApEnabler$22;
.super Ljava/util/TimerTask;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiApEnabler;->setUpsellTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1915
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2400(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler$22;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1960
    return-void
.end method
