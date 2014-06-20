.class Lcom/android/lgesettings/nfc/AndroidBeam$6;
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
    .line 406
    iput-object p1, p0, Lcom/android/lgesettings/nfc/AndroidBeam$6;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$6;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$100(Lcom/android/lgesettings/nfc/AndroidBeam;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 411
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 412
    return-void
.end method
