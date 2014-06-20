.class Lcom/android/lgesettings/nfc/AndroidBeam$11;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/AndroidBeam;->airplaneDlg()V
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
    .line 454
    iput-object p1, p0, Lcom/android/lgesettings/nfc/AndroidBeam$11;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$11;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/AndroidBeam;->isUnchecked(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$11;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->showNfcFirstConnectOffDlg()V

    .line 474
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 475
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$11;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$11;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$100(Lcom/android/lgesettings/nfc/AndroidBeam;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$11;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->initNfcSystem()Z

    .line 467
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$11;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcCard()Z

    .line 468
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$11;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 469
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$11;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    goto :goto_0
.end method
