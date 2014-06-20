.class Landroid/webkit/CallbackProxy$PickerHandler$5;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;


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
    .line 370
    iput-object p1, p0, Landroid/webkit/CallbackProxy$PickerHandler$5;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler$5;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onMonthSet(II)V
    .locals 5
    .parameter "year"
    .parameter "monthOfYear"

    .prologue
    .line 373
    new-instance v0, Ljava/util/Date;

    add-int/lit16 v3, p1, -0x76c

    const/4 v4, 0x1

    invoke-direct {v0, v3, p2, v4}, Ljava/util/Date;-><init>(III)V

    .line 374
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler$5;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-virtual {v3, v2}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 377
    return-void
.end method
