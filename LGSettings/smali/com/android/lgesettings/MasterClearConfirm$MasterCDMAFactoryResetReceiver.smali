.class Lcom/android/lgesettings/MasterClearConfirm$MasterCDMAFactoryResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterCDMAFactoryResetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/MasterClearConfirm;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/MasterClearConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/lgesettings/MasterClearConfirm$MasterCDMAFactoryResetReceiver;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/MasterClearConfirm;Lcom/android/lgesettings/MasterClearConfirm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/android/lgesettings/MasterClearConfirm$MasterCDMAFactoryResetReceiver;-><init>(Lcom/android/lgesettings/MasterClearConfirm;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 448
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_CDMA_REQUEST_FACTORY_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$MasterCDMAFactoryResetReceiver;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #calls: Lcom/android/lgesettings/MasterClearConfirm;->MasterCDMAFactoryResetCompleted(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/lgesettings/MasterClearConfirm;->access$700(Lcom/android/lgesettings/MasterClearConfirm;Landroid/content/Intent;)V

    .line 452
    :cond_0
    return-void
.end method
