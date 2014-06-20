.class Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SsbEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/SsbEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdcardStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/SsbEnabler;


# direct methods
.method private constructor <init>(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Litectokyo/wiflus/SsbEnabler;Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 776
    invoke-direct {p0, p1}, Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;-><init>(Litectokyo/wiflus/SsbEnabler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 779
    const-string v1, "SsbEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SsbEnabler SdcardStateChangedReceiver action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 782
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 791
    :cond_0
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$32(Litectokyo/wiflus/SsbEnabler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$SdcardStateChangedReceiver;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$32(Litectokyo/wiflus/SsbEnabler;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 793
    return-void
.end method
