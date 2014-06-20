.class Landroid/webkit/LGWeekPicker$1;
.super Ljava/lang/Object;
.source "LGWeekPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LGWeekPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LGWeekPicker;


# direct methods
.method constructor <init>(Landroid/webkit/LGWeekPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Landroid/webkit/LGWeekPicker$1;->this$0:Landroid/webkit/LGWeekPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 6
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/4 v5, 0x1

    .line 100
    iget-object v3, p0, Landroid/webkit/LGWeekPicker$1;->this$0:Landroid/webkit/LGWeekPicker;

    #calls: Landroid/webkit/LGWeekPicker;->updateInputState()V
    invoke-static {v3}, Landroid/webkit/LGWeekPicker;->access$000(Landroid/webkit/LGWeekPicker;)V

    .line 101
    iget-object v3, p0, Landroid/webkit/LGWeekPicker$1;->this$0:Landroid/webkit/LGWeekPicker;

    invoke-virtual {v3}, Landroid/webkit/LGWeekPicker;->getYear()I

    move-result v2

    .line 102
    .local v2, year:I
    iget-object v3, p0, Landroid/webkit/LGWeekPicker$1;->this$0:Landroid/webkit/LGWeekPicker;

    invoke-virtual {v3}, Landroid/webkit/LGWeekPicker;->getWeek()I

    move-result v1

    .line 103
    .local v1, week:I
    iget-object v3, p0, Landroid/webkit/LGWeekPicker$1;->this$0:Landroid/webkit/LGWeekPicker;

    #getter for: Landroid/webkit/LGWeekPicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/webkit/LGWeekPicker;->access$100(Landroid/webkit/LGWeekPicker;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 105
    .local v0, maxWeekOfYear:I
    iget-object v3, p0, Landroid/webkit/LGWeekPicker$1;->this$0:Landroid/webkit/LGWeekPicker;

    #getter for: Landroid/webkit/LGWeekPicker;->mWeekSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/webkit/LGWeekPicker;->access$200(Landroid/webkit/LGWeekPicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 106
    if-ne p2, v0, :cond_0

    if-ne p3, v5, :cond_0

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    const/4 v1, 0x1

    .line 123
    :goto_0
    iget-object v3, p0, Landroid/webkit/LGWeekPicker$1;->this$0:Landroid/webkit/LGWeekPicker;

    #calls: Landroid/webkit/LGWeekPicker;->setWeek(II)V
    invoke-static {v3, v2, v1}, Landroid/webkit/LGWeekPicker;->access$400(Landroid/webkit/LGWeekPicker;II)V

    .line 124
    iget-object v3, p0, Landroid/webkit/LGWeekPicker$1;->this$0:Landroid/webkit/LGWeekPicker;

    #calls: Landroid/webkit/LGWeekPicker;->updateSpinners()V
    invoke-static {v3}, Landroid/webkit/LGWeekPicker;->access$500(Landroid/webkit/LGWeekPicker;)V

    .line 125
    iget-object v3, p0, Landroid/webkit/LGWeekPicker$1;->this$0:Landroid/webkit/LGWeekPicker;

    #calls: Landroid/webkit/LGWeekPicker;->notifyWeekChanged()V
    invoke-static {v3}, Landroid/webkit/LGWeekPicker;->access$600(Landroid/webkit/LGWeekPicker;)V

    .line 126
    return-void

    .line 109
    :cond_0
    if-ne p2, v5, :cond_1

    if-ne p3, v0, :cond_1

    .line 110
    add-int/lit8 v2, v2, -0x1

    .line 113
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    sub-int v3, p3, p2

    add-int/2addr v1, v3

    goto :goto_0

    .line 117
    :cond_2
    iget-object v3, p0, Landroid/webkit/LGWeekPicker$1;->this$0:Landroid/webkit/LGWeekPicker;

    #getter for: Landroid/webkit/LGWeekPicker;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/webkit/LGWeekPicker;->access$300(Landroid/webkit/LGWeekPicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 118
    move v2, p3

    goto :goto_0

    .line 120
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method
