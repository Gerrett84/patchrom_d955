.class Landroid/webkit/CallbackProxy$PickerHandler$2;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;


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
    .line 326
    iput-object p1, p0, Landroid/webkit/CallbackProxy$PickerHandler$2;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler$2;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public onTimeSet(II)V
    .locals 8
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 329
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Landroid/webkit/CallbackProxy$PickerHandler$2;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    #getter for: Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/webkit/CallbackProxy$PickerHandler;->access$000(Landroid/webkit/CallbackProxy$PickerHandler;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler$2;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    #getter for: Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/webkit/CallbackProxy$PickerHandler;->access$000(Landroid/webkit/CallbackProxy$PickerHandler;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler$2;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    #getter for: Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/webkit/CallbackProxy$PickerHandler;->access$000(Landroid/webkit/CallbackProxy$PickerHandler;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    .line 330
    .local v0, date:Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v6, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 331
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, value:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/CallbackProxy$PickerHandler$2;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-virtual {v1, v7}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 333
    return-void
.end method
