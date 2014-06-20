.class Lcom/lge/autorun/Autorun$3;
.super Landroid/os/UEventObserver;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/autorun/Autorun;->callUsbPlugFunction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/autorun/Autorun;


# direct methods
.method constructor <init>(Lcom/lge/autorun/Autorun;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/lge/autorun/Autorun$3;->this$0:Lcom/lge/autorun/Autorun;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 373
    const-string v1, "USB_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/lge/autorun/Autorun$3;->this$0:Lcom/lge/autorun/Autorun;

    #calls: Lcom/lge/autorun/Autorun;->judgeUsbPlugState(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/lge/autorun/Autorun;->access$600(Lcom/lge/autorun/Autorun;Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method
