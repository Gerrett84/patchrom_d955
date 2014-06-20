.class Landroid/webkit/CallbackProxy$PickerHandler$7;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkit/LGColorPickerDialog$OnColorSetListener;


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
    .line 401
    iput-object p1, p0, Landroid/webkit/CallbackProxy$PickerHandler$7;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClear()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler$7;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public onColorSet(I)V
    .locals 10
    .parameter "color"

    .prologue
    const/16 v9, 0x10

    .line 405
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 406
    .local v4, red:I
    if-ge v4, v9, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, redStr:Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 408
    .local v2, green:I
    if-ge v2, v9, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, greenStr:Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 410
    .local v0, blue:I
    if-ge v0, v9, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, blueStr:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 413
    .local v6, value:Ljava/lang/String;
    iget-object v7, p0, Landroid/webkit/CallbackProxy$PickerHandler$7;->this$1:Landroid/webkit/CallbackProxy$PickerHandler;

    invoke-virtual {v7, v6}, Landroid/webkit/CallbackProxy$PickerHandler;->valueSelected(Ljava/lang/String;)V

    .line 414
    return-void

    .line 406
    .end local v0           #blue:I
    .end local v1           #blueStr:Ljava/lang/String;
    .end local v2           #green:I
    .end local v3           #greenStr:Ljava/lang/String;
    .end local v5           #redStr:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 408
    .restart local v2       #green:I
    .restart local v5       #redStr:Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 410
    .restart local v0       #blue:I
    .restart local v3       #greenStr:Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
