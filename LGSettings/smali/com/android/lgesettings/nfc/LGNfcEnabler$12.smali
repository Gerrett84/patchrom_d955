.class Lcom/android/lgesettings/nfc/LGNfcEnabler$12;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;->airplaneNfcDlg()V
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
    .line 1089
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$12;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$12;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isUnchecked(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1093
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$12;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->showNfcFirstConnectOffDlg()V

    .line 1102
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1103
    return-void

    .line 1098
    :cond_0
    new-instance v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$12;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    .line 1099
    .local v0, mTrigger:Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->trigger(Z)Z

    goto :goto_0
.end method
