.class Lcom/android/lgesettings/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;
    }
.end annotation


# instance fields
.field mChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field nfcState:I

.field p2pState:I

.field rwState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/android/lgesettings/nfc/NfcManager$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/NfcManager$1;-><init>(Lcom/android/lgesettings/nfc/NfcManager;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcManager;->mChangeListener:Ljava/util/ArrayList;

    .line 80
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "lge.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 82
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcManager;->resetNfcState()V

    .line 83
    return-void
.end method


# virtual methods
.method public addNfcStateListener(Lcom/android/lgesettings/nfc/NfcStateListener;I)V
    .locals 2
    .parameter "listener"
    .parameter "states"

    .prologue
    .line 111
    new-instance v0, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;-><init>(Lcom/android/lgesettings/nfc/NfcManager;Lcom/android/lgesettings/nfc/NfcManager$1;)V

    .line 112
    .local v0, info:Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;
    iput-object p1, v0, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->listener:Lcom/android/lgesettings/nfc/NfcStateListener;

    .line 113
    iput p2, v0, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->states:I

    .line 114
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcManager;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public handleNfcStateChanged()V
    .locals 4

    .prologue
    .line 118
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    .line 120
    .local v0, nfc:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getAdapterSysState()I

    move-result v3

    .line 121
    .local v3, sysState:I
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getAdapterDiscoveryState()I

    move-result v2

    .line 122
    .local v2, rwState:I
    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getAdapterP2pState()I

    move-result v1

    .line 124
    .local v1, p2pState:I
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/lgesettings/nfc/NfcManager;->handleNfcStateChanged(III)V

    .line 125
    return-void
.end method

.method public handleNfcStateChanged(III)V
    .locals 5
    .parameter "sysState"
    .parameter "rwState"
    .parameter "p2pState"

    .prologue
    .line 128
    const-string v2, "NfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current:nfc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/nfc/NfcManager;->nfcState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rw = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/nfc/NfcManager;->rwState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",p2p = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/nfc/NfcManager;->p2pState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v2, "NfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next:nfc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rw = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",p2p = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcManager;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcManager;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;

    .line 133
    .local v1, listener:Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/lgesettings/nfc/NfcManager;->notifyNfcStateChanged(Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;III)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v1           #listener:Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;
    :cond_0
    iput p1, p0, Lcom/android/lgesettings/nfc/NfcManager;->nfcState:I

    .line 137
    iput p2, p0, Lcom/android/lgesettings/nfc/NfcManager;->rwState:I

    .line 138
    iput p3, p0, Lcom/android/lgesettings/nfc/NfcManager;->p2pState:I

    .line 139
    return-void
.end method

.method public notifyNfcStateChanged(Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;III)V
    .locals 3
    .parameter "info"
    .parameter "sysState"
    .parameter "rwState"
    .parameter "p2pState"

    .prologue
    .line 143
    iget v0, p1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->states:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 144
    iget v0, p0, Lcom/android/lgesettings/nfc/NfcManager;->nfcState:I

    if-eq v0, p2, :cond_0

    .line 145
    iget-object v0, p1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->listener:Lcom/android/lgesettings/nfc/NfcStateListener;

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/nfc/NfcStateListener;->handleNfcStateChanged(I)V

    .line 149
    :cond_0
    iget v0, p1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->states:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 150
    iget v0, p0, Lcom/android/lgesettings/nfc/NfcManager;->rwState:I

    if-eq v0, p3, :cond_1

    .line 151
    iget-object v0, p1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->listener:Lcom/android/lgesettings/nfc/NfcStateListener;

    invoke-virtual {v0, p3}, Lcom/android/lgesettings/nfc/NfcStateListener;->handleRwStateChanged(I)V

    .line 156
    :cond_1
    const-string v0, "NfcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->states:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget v0, p1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->states:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 158
    iget v0, p0, Lcom/android/lgesettings/nfc/NfcManager;->p2pState:I

    if-eq v0, p4, :cond_2

    .line 159
    iget-object v0, p1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->listener:Lcom/android/lgesettings/nfc/NfcStateListener;

    invoke-virtual {v0, p4}, Lcom/android/lgesettings/nfc/NfcStateListener;->handleP2pStateChanged(I)V

    .line 163
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcManager;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcManager;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;

    .line 181
    .local v1, info:Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;
    iget-object v2, v1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->listener:Lcom/android/lgesettings/nfc/NfcStateListener;

    invoke-virtual {v2}, Lcom/android/lgesettings/nfc/NfcStateListener;->pause()V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v1           #info:Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;
    :cond_0
    return-void
.end method

.method public resetNfcState()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/android/lgesettings/nfc/NfcManager;->nfcState:I

    .line 107
    iput v0, p0, Lcom/android/lgesettings/nfc/NfcManager;->rwState:I

    .line 108
    iput v0, p0, Lcom/android/lgesettings/nfc/NfcManager;->p2pState:I

    .line 109
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcManager;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcManager;->mChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;

    .line 170
    .local v1, info:Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;
    iget-object v2, v1, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->listener:Lcom/android/lgesettings/nfc/NfcStateListener;

    invoke-virtual {v2}, Lcom/android/lgesettings/nfc/NfcStateListener;->resume()V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v1           #info:Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcManager;->resetNfcState()V

    .line 173
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcManager;->handleNfcStateChanged()V

    .line 174
    return-void
.end method
