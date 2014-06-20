.class Lcom/android/lgesettings/nfc/AndroidBeam$3;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/AndroidBeam;->showBeamOffDlg()V
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
    .line 306
    iput-object p1, p0, Lcom/android/lgesettings/nfc/AndroidBeam$3;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$3;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mNfcAdapter:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$300(Lcom/android/lgesettings/nfc/AndroidBeam;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcP2p()Z

    .line 309
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 310
    return-void
.end method
