.class public Lcom/lge/autorun/Autorun$autorunTimerTask;
.super Ljava/util/TimerTask;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/autorun/Autorun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "autorunTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/autorun/Autorun;


# direct methods
.method public constructor <init>(Lcom/lge/autorun/Autorun;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/lge/autorun/Autorun$autorunTimerTask;->this$0:Lcom/lge/autorun/Autorun;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 425
    const-string v0, "TIMEOUT"

    .line 426
    .local v0, timout:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/autorun/Autorun$autorunTimerTask;->this$0:Lcom/lge/autorun/Autorun;

    #getter for: Lcom/lge/autorun/Autorun;->mHandler:Lcom/lge/autorun/Autorun$UsbHandler;
    invoke-static {v1}, Lcom/lge/autorun/Autorun;->access$200(Lcom/lge/autorun/Autorun;)Lcom/lge/autorun/Autorun$UsbHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/lge/autorun/Autorun$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 427
    return-void
.end method
