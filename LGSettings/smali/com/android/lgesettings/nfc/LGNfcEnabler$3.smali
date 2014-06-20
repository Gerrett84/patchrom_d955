.class Lcom/android/lgesettings/nfc/LGNfcEnabler$3;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;->showNfcOffDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$3;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$3;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcP2p()Z

    .line 919
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$3;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcDiscovery()Z

    .line 920
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$3;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcCard()Z

    .line 921
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$3;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->deinitNfcSystem()Z

    .line 922
    const-string v0, "LGNfcEnabler"

    const-string v1, "showNfcOffDlg onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return-void
.end method
