.class Lcom/android/lgesettings/nfc/NfcSettings$9;
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
    .line 700
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->newPin:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettings;->access$300(Lcom/android/lgesettings/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->getInputText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v1, 0x2

    #setter for: Lcom/android/lgesettings/nfc/NfcSettings;->mDlgID:I
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$502(Lcom/android/lgesettings/nfc/NfcSettings;I)I

    .line 706
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    const/4 v1, 0x7

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$400(Lcom/android/lgesettings/nfc/NfcSettings;I)V

    .line 720
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->oldPin:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/NfcSettings;->access$600(Lcom/android/lgesettings/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->oldPin:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$600(Lcom/android/lgesettings/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->newPin:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$300(Lcom/android/lgesettings/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->changeNfcLockNumber(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->access$700(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;Ljava/lang/String;)Z

    .line 715
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 717
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080249

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings$9;->this$0:Lcom/android/lgesettings/nfc/NfcSettings;

    #getter for: Lcom/android/lgesettings/nfc/NfcSettings;->newPin:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$300(Lcom/android/lgesettings/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/nfc/NfcSettings;->initNfcLockNumber(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->access$800(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Z

    goto :goto_1
.end method
