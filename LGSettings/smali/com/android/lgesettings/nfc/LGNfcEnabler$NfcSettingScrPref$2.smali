.class Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$2;
.super Landroid/content/BroadcastReceiver;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$2;->this$1:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$2;->this$1:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;

    #calls: Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->updateNfcSettings()V
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->access$600(Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;)V

    .line 768
    const-string v0, "LGNfcEnabler"

    const-string v1, "on airplane mode receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void
.end method
