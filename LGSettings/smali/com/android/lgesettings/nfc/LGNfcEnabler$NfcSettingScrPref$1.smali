.class Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$1;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 749
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$1;->this$1:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$1;->this$1:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;

    invoke-static {p2}, Lcom/lge/nfclock/service/INfcLock$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfclock/service/INfcLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

    .line 759
    const-string v0, "LGNfcEnabler"

    const-string v1, "INfcLock: onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$1;->this$1:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;

    #calls: Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->updateNfcSettings()V
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->access$600(Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;)V

    .line 761
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$1;->this$1:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

    .line 753
    const-string v0, "LGNfcEnabler"

    const-string v1, "INfcLock: onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void
.end method
