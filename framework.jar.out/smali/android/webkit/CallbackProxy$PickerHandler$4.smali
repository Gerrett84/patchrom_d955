.class Landroid/webkit/CallbackProxy$PickerHandler$4;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;


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
    .line 356
    iput-object p1, p0, Landroid/webkit/CallbackProxy$PickerHandler$4;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler$4;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public onDateTimeSet(IIIII)V
    .locals 9
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 359
    new-instance v0, Ljava/util/Date;

    add-int/lit16 v1, p1, -0x76c

    const/4 v6, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 360
    .local v0, date:Ljava/util/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 361
    .local v7, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, value:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/CallbackProxy$PickerHandler$4;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-virtual {v1, v8}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 363
    return-void
.end method
