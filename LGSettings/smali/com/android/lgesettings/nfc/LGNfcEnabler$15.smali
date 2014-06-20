.class Lcom/android/lgesettings/nfc/LGNfcEnabler$15;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;->airplaneBeamDlg()V
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
    .line 1125
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1127
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isUnchecked(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->showNfcFirstConnectOffDlg()V

    .line 1147
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1148
    return-void

    .line 1134
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1135
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08025c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1139
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->initNfcSystem()Z

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcCard()Z

    .line 1143
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 1144
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08025b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
