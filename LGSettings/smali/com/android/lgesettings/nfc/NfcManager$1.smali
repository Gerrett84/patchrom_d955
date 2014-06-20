.class Lcom/android/lgesettings/nfc/NfcManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/NfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/NfcManager;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/NfcManager;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcManager$1;->this$0:Lcom/android/lgesettings/nfc/NfcManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    const-string v5, "lge.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    const-string v5, "com.lge.nfcaddon.extra.ADAPTER_SYSTEM_STATE"

    const/16 v6, 0x29

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 92
    .local v4, systemExtra:I
    const-string v5, "com.lge.nfcaddon.extra.ADAPTER_CARD_STATE"

    const/16 v6, 0xb

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 93
    .local v1, cardExtra:I
    const-string v5, "com.lge.nfcaddon.extra.ADAPTER_DISCOVERY_STATE"

    const/16 v6, 0x15

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 94
    .local v3, rwExtra:I
    const-string v5, "com.lge.nfcaddon.extra.ADAPTER_P2P_STATE"

    const/16 v6, 0x1f

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 96
    .local v2, p2pExtra:I
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcManager$1;->this$0:Lcom/android/lgesettings/nfc/NfcManager;

    invoke-virtual {v5, v4, v3, v2}, Lcom/android/lgesettings/nfc/NfcManager;->handleNfcStateChanged(III)V

    .line 98
    const-string v5, "NfcManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive sys ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", p2p ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v1           #cardExtra:I
    .end local v2           #p2pExtra:I
    .end local v3           #rwExtra:I
    .end local v4           #systemExtra:I
    :cond_0
    return-void
.end method
