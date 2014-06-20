.class Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;
.super Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingWrite"
.end annotation


# instance fields
.field private mData:[B

.field private mEfid:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;I[BLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "efid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 3552
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 3553
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V

    .line 3554
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->mData:[B

    .line 3555
    iput p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->mEfid:I

    .line 3556
    return-void
.end method


# virtual methods
.method public onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "res"
    .parameter "e"

    .prologue
    .line 3560
    if-eqz p2, :cond_0

    .line 3561
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3578
    :goto_0
    return-void

    .line 3571
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/PhoneBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$1900(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 3572
    .local v0, iccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->mEfid:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingWrite;->mData:[B

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3573
    .end local v0           #iccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catch_0
    move-exception v1

    .line 3574
    .local v1, ne:Ljava/lang/NullPointerException;
    const-string v2, "GSM"

    const-string v3, "NullPointerException occur - mUiccController.getUiccCardApplication(UiccController.APP_FAM_IMS).getIccFileHandler()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
