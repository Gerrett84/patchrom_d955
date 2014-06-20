.class Lcom/android/lgesettings/nfc/NfcSettings$14;
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
    .line 846
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$14;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$14;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$14;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlgID:I
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$500(Lcom/android/lgesettings/nfc/NfcSettings;)I

    move-result v1

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$400(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    .line 850
    return-void
.end method
