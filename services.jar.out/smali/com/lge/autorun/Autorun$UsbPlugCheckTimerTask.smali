.class public Lcom/lge/autorun/Autorun$UsbPlugCheckTimerTask;
.super Ljava/util/TimerTask;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/autorun/Autorun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbPlugCheckTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/autorun/Autorun;


# direct methods
.method public constructor <init>(Lcom/lge/autorun/Autorun;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/lge/autorun/Autorun$UsbPlugCheckTimerTask;->this$0:Lcom/lge/autorun/Autorun;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/lge/autorun/Autorun$UsbPlugCheckTimerTask;->this$0:Lcom/lge/autorun/Autorun;

    const/4 v1, 0x1

    #setter for: Lcom/lge/autorun/Autorun;->mUsbUnPlugged:Z
    invoke-static {v0, v1}, Lcom/lge/autorun/Autorun;->access$502(Lcom/lge/autorun/Autorun;Z)Z

    .line 365
    iget-object v0, p0, Lcom/lge/autorun/Autorun$UsbPlugCheckTimerTask;->this$0:Lcom/lge/autorun/Autorun;

    #getter for: Lcom/lge/autorun/Autorun;->mHandler:Lcom/lge/autorun/Autorun$UsbHandler;
    invoke-static {v0}, Lcom/lge/autorun/Autorun;->access$200(Lcom/lge/autorun/Autorun;)Lcom/lge/autorun/Autorun$UsbHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/autorun/Autorun$UsbHandler;->sendMessage(I)V

    .line 366
    return-void
.end method
