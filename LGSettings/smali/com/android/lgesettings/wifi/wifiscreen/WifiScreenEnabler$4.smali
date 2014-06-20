.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$4;
.super Landroid/os/Handler;
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
    .line 303
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$4;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 306
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler$4;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->access$100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
