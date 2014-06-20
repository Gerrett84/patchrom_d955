.class Lcom/lge/autorun/Autorun$2;
.super Landroid/os/UEventObserver;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/autorun/Autorun;
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
    .line 173
    iput-object p1, p0, Lcom/lge/autorun/Autorun$2;->this$0:Lcom/lge/autorun/Autorun;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, 0x6000

    .line 177
    const-string v3, "AUTORUN"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUTORUN] USB UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v3, "AUTORUN"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, autorun:Ljava/lang/String;
    const-string v3, "USB_DRV"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, usb_drv:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 184
    iget-object v3, p0, Lcom/lge/autorun/Autorun$2;->this$0:Lcom/lge/autorun/Autorun;

    #getter for: Lcom/lge/autorun/Autorun;->mHandler:Lcom/lge/autorun/Autorun$UsbHandler;
    invoke-static {v3}, Lcom/lge/autorun/Autorun;->access$200(Lcom/lge/autorun/Autorun;)Lcom/lge/autorun/Autorun$UsbHandler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lcom/lge/autorun/Autorun$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    if-eqz v2, :cond_0

    .line 188
    const-string v3, "uninstalled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    const-string v3, "AUTORUN"

    const-string v4, "USB driver is not installed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.USB_DRIVER_INSTALLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    const-string v3, "installed"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    iget-object v3, p0, Lcom/lge/autorun/Autorun$2;->this$0:Lcom/lge/autorun/Autorun;

    iget-object v3, v3, Lcom/lge/autorun/Autorun;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "installed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const-string v3, "AUTORUN"

    const-string v4, "USB driver is installed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.USB_DRIVER_INSTALLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    const-string v3, "installed"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    iget-object v3, p0, Lcom/lge/autorun/Autorun$2;->this$0:Lcom/lge/autorun/Autorun;

    iget-object v3, v3, Lcom/lge/autorun/Autorun;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
