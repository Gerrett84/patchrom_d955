.class Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;
.super Ljava/lang/Thread;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BasebandVersionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DeviceInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x1388

    .line 960
    iget-object v2, p0, Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    #getter for: Lcom/android/lgesettings/DeviceInfoSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/lgesettings/DeviceInfoSettings;->access$300(Lcom/android/lgesettings/DeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 963
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/lge/Svc_cmd;->getQcrilMsgTunnelServiceStatus(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 965
    const/16 v2, 0x1388

    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/lgesettings/lge/Svc_cmd;->LgSvcCmd_getCmdValue(ILandroid/content/Context;)Ljava/lang/String;

    .line 966
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    iget-object v3, p0, Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/lgesettings/lge/Svc_cmd;->LgSvcCmd_getCmdValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/lgesettings/DeviceInfoSettings;->mBasebandVersion:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/lgesettings/DeviceInfoSettings;->access$002(Lcom/android/lgesettings/DeviceInfoSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 973
    iget-object v2, p0, Lcom/android/lgesettings/DeviceInfoSettings$BasebandVersionThread;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    #getter for: Lcom/android/lgesettings/DeviceInfoSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/lgesettings/DeviceInfoSettings;->access$300(Lcom/android/lgesettings/DeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 974
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, ie:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
