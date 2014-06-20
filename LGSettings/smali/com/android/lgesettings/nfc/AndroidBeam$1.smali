.class Lcom/android/lgesettings/nfc/AndroidBeam$1;
.super Lcom/android/lgesettings/nfc/NfcStateListener;
.source "AndroidBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/AndroidBeam;
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
    .line 76
    iput-object p1, p0, Lcom/android/lgesettings/nfc/AndroidBeam$1;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleP2pStateChanged(I)V
    .locals 3
    .parameter "newState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$1;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #calls: Lcom/android/lgesettings/nfc/AndroidBeam;->setBeamSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$000(Lcom/android/lgesettings/nfc/AndroidBeam;Z)V

    .line 80
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$1;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$100(Lcom/android/lgesettings/nfc/AndroidBeam;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$1;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #calls: Lcom/android/lgesettings/nfc/AndroidBeam;->setBeamSwitchChecked(Z)V
    invoke-static {v0, v2}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$000(Lcom/android/lgesettings/nfc/AndroidBeam;Z)V

    .line 83
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$1;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$100(Lcom/android/lgesettings/nfc/AndroidBeam;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$1;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #calls: Lcom/android/lgesettings/nfc/AndroidBeam;->checkDisallowAndroidBeamPolicy()Z
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$200(Lcom/android/lgesettings/nfc/AndroidBeam;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/nfc/AndroidBeam$1;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    #getter for: Lcom/android/lgesettings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/AndroidBeam;->access$100(Lcom/android/lgesettings/nfc/AndroidBeam;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
