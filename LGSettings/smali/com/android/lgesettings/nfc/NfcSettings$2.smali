.class Lcom/android/lgesettings/nfc/NfcSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcSettings.java"


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
    .line 150
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$2;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const-string v2, "NFC_SETTINGS"

    const-string v3, "NfcAdapter.ACTION_ADAPTER_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings$2;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->handleNfcStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/nfc/NfcSettings;->access$000(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    const-string v2, "NFC_SETTINGS"

    const-string v3, "NfcAdapter.ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings$2;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 163
    .local v1, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings$2;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->handleNfcStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/nfc/NfcSettings;->access$000(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    .line 165
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings$2;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->handleNfcLockStateChanged()V
    invoke-static {v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$100(Lcom/android/lgesettings/nfc/NfcSettings;)V

    goto :goto_0

    .line 167
    .end local v1           #adapter:Landroid/nfc/NfcAdapter;
    :cond_2
    const-string v2, "com.lge.nfclock.LOCK_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "NFC_SETTINGS"

    const-string v3, "NfcAdapter.ACTION_LOCK_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings$2;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 171
    .restart local v1       #adapter:Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings$2;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->handleNfcStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/nfc/NfcSettings;->access$000(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    .line 173
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings$2;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->handleNfcLockStateChanged()V
    invoke-static {v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$100(Lcom/android/lgesettings/nfc/NfcSettings;)V

    goto :goto_0
.end method
