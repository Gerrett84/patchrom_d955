.class Landroid/webkit/CallbackProxy$PickerHandler$6;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy$PickerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/CallbackProxy$PickerHandler;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy$PickerHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Landroid/webkit/CallbackProxy$PickerHandler$6;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler$6;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public onWeekSet(II)V
    .locals 5
    .parameter "year"
    .parameter "weekOfYear"

    .prologue
    .line 388
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 389
    .local v0, nf:Ljava/text/NumberFormat;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 390
    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, week:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-W"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 393
    .local v1, value:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler$6;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-virtual {v3, v1}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 394
    return-void
.end method
