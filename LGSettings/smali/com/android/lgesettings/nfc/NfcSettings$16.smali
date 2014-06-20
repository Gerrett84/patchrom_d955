.class Lcom/android/lgesettings/nfc/NfcSettings$16;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V
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
    .line 883
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$16;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$16;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->getNfcLockInitNumberRemains()I
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettings;->access$1300(Lcom/android/lgesettings/nfc/NfcSettings;)I

    move-result v0

    if-lez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$16;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$16;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlgID:I
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$500(Lcom/android/lgesettings/nfc/NfcSettings;)I

    move-result v1

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$400(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$16;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->handleNfcLockStateChanged()V
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettings;->access$100(Lcom/android/lgesettings/nfc/NfcSettings;)V

    goto :goto_0
.end method
