.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiScreenEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    const-string v2, "wfd_state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->handleScreenStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;I)V

    .line 88
    :cond_0
    return-void
.end method
