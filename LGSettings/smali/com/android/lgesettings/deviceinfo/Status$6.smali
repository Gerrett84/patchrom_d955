.class Lcom/android/lgesettings/deviceinfo/Status$6;
.super Ljava/lang/Thread;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/deviceinfo/Status;->getSvcCmdInstants()V
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
    .line 1235
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status$6;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status$6;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    const/16 v1, 0x3f2

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status$6;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-virtual {v2}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/lgesettings/lge/Svc_cmd;->LgSvcCmd_getCmdValue(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/deviceinfo/Status;->mWdc:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->access$202(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;

    .line 1238
    return-void
.end method
