.class Lcom/android/lgesettings/nfc/NfcSettings$3;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    .line 179
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$3;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$3;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$200(Lcom/android/lgesettings/nfc/NfcSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$3;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$200(Lcom/android/lgesettings/nfc/NfcSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 186
    .local v0, btn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
