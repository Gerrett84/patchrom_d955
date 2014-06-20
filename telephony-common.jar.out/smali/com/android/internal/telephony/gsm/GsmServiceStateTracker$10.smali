.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 5742
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5744
    const/16 v2, 0x52

    if-eq p2, v2, :cond_1

    .line 5745
    if-eqz p1, :cond_0

    .line 5746
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5747
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5748
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$10;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->postDismissDialog()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 5753
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 5751
    goto :goto_0

    :cond_1
    move v0, v1

    .line 5753
    goto :goto_0
.end method
