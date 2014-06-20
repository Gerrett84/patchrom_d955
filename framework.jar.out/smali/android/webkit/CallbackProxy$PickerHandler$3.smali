.class Landroid/webkit/CallbackProxy$PickerHandler$3;
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
    .line 340
    iput-object p1, p0, Landroid/webkit/CallbackProxy$PickerHandler$3;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler$3;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 353
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
    .line 343
    new-instance v0, Ljava/util/Date;

    add-int/lit16 v1, p1, -0x76c

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    .line 344
    .local v0, date:Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v6, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 345
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 347
    .local v7, tmpValue:Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 348
    .local v8, value:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/CallbackProxy$PickerHandler$3;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-virtual {v1, v8}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 349
    return-void
.end method
