.class Lcom/android/lgesettings/nfc/AndroidBeam$7;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/AndroidBeam;->showNfcFirstConnectOffDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/AndroidBeam;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/lgesettings/nfc/AndroidBeam$7;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$7;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/AndroidBeam;->markUnchecked(I)V

    .line 395
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$7;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$7;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->initNfcSystem()Z

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$7;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcCard()Z

    .line 402
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$7;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 403
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$7;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    .line 404
    const-string v0, "AndroidBeam"

    const-string v1, "showNfcOffDlg onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method
