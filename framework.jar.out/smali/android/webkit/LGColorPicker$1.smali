.class Landroid/webkit/LGColorPicker$1;
.super Ljava/lang/Object;
.source "LGColorPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LGColorPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LGColorPicker;


# direct methods
.method constructor <init>(Landroid/webkit/LGColorPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 5
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 89
    iget-object v3, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    #calls: Landroid/webkit/LGColorPicker;->updateInputState()V
    invoke-static {v3}, Landroid/webkit/LGColorPicker;->access$000(Landroid/webkit/LGColorPicker;)V

    .line 91
    iget-object v3, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    #getter for: Landroid/webkit/LGColorPicker;->mCurrentColor:I
    invoke-static {v3}, Landroid/webkit/LGColorPicker;->access$100(Landroid/webkit/LGColorPicker;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 92
    .local v2, red:I
    iget-object v3, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    #getter for: Landroid/webkit/LGColorPicker;->mCurrentColor:I
    invoke-static {v3}, Landroid/webkit/LGColorPicker;->access$100(Landroid/webkit/LGColorPicker;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 93
    .local v1, green:I
    iget-object v3, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    #getter for: Landroid/webkit/LGColorPicker;->mCurrentColor:I
    invoke-static {v3}, Landroid/webkit/LGColorPicker;->access$100(Landroid/webkit/LGColorPicker;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 95
    .local v0, blue:I
    iget-object v3, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    #getter for: Landroid/webkit/LGColorPicker;->mRedSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/webkit/LGColorPicker;->access$200(Landroid/webkit/LGColorPicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 96
    move v2, p3

    .line 105
    :goto_0
    iget-object v3, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    #calls: Landroid/webkit/LGColorPicker;->setColor(I)V
    invoke-static {v3, v4}, Landroid/webkit/LGColorPicker;->access$500(Landroid/webkit/LGColorPicker;I)V

    .line 106
    iget-object v3, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    #calls: Landroid/webkit/LGColorPicker;->updateSpinners()V
    invoke-static {v3}, Landroid/webkit/LGColorPicker;->access$600(Landroid/webkit/LGColorPicker;)V

    .line 107
    iget-object v3, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    #calls: Landroid/webkit/LGColorPicker;->notifyColorChanged()V
    invoke-static {v3}, Landroid/webkit/LGColorPicker;->access$700(Landroid/webkit/LGColorPicker;)V

    .line 108
    return-void

    .line 97
    :cond_0
    iget-object v3, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    #getter for: Landroid/webkit/LGColorPicker;->mGreenSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/webkit/LGColorPicker;->access$300(Landroid/webkit/LGColorPicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 98
    move v1, p3

    goto :goto_0

    .line 99
    :cond_1
    iget-object v3, p0, Landroid/webkit/LGColorPicker$1;->this$0:Landroid/webkit/LGColorPicker;

    #getter for: Landroid/webkit/LGColorPicker;->mBlueSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/webkit/LGColorPicker;->access$400(Landroid/webkit/LGColorPicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 100
    move v0, p3

    goto :goto_0

    .line 102
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method
