.class public Lcom/android/lgesettings/nfc/NfcStateListener;
.super Ljava/lang/Object;
.source "NfcStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleNfcStateChanged(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 69
    const-string v0, "NfcStateListener"

    const-string v1, "******* handleNfcStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public handleP2pStateChanged(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 75
    const-string v0, "NfcStateListener"

    const-string v1, "------ handleP2pStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public handleRwStateChanged(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 72
    const-string v0, "NfcStateListener"

    const-string v1, "====== handleRwStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
