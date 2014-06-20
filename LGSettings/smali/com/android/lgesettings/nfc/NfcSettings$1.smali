.class Lcom/android/lgesettings/nfc/NfcSettings$1;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/NfcSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-static {p2}, Lcom/lge/nfclock/service/INfcLock$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfclock/service/INfcLock;

    move-result-object v2

    iput-object v2, v1, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    .line 134
    const-string v1, "NFC_SETTINGS"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    iget-object v1, v1, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v1, :cond_1

    .line 137
    const-string v1, "NFC_SETTINGS"

    const-string v2, "onServiceConnected : mINfcLock == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 142
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->handleNfcStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$000(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    .line 144
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->handleNfcLockStateChanged()V
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$100(Lcom/android/lgesettings/nfc/NfcSettings;)V

    .line 145
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$1;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    .line 128
    const-string v0, "NFC_SETTINGS"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method
