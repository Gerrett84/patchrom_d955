.class Lcom/android/lgesettings/nfc/NfcSettingsFragment$6;
.super Ljava/lang/Object;
.source "NfcSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcSettingsFragment;->showNfcOffDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/NfcSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettingsFragment$6;->this$0:Lcom/android/lgesettings/nfc/NfcSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 786
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 787
    return-void
.end method
