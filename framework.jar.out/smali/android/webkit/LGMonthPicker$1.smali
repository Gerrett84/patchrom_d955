.class Landroid/webkit/LGMonthPicker$1;
.super Ljava/lang/Object;
.source "LGMonthPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LGMonthPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LGMonthPicker;


# direct methods
.method constructor <init>(Landroid/webkit/LGMonthPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

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
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 111
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #calls: Landroid/webkit/LGMonthPicker;->updateInputState()V
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$000(Landroid/webkit/LGMonthPicker;)V

    .line 112
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$200(Landroid/webkit/LGMonthPicker;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/webkit/LGMonthPicker;->access$100(Landroid/webkit/LGMonthPicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 114
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$300(Landroid/webkit/LGMonthPicker;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 115
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mMonthOffset:I
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$400(Landroid/webkit/LGMonthPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mMonthOffset:I
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$400(Landroid/webkit/LGMonthPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-ne p3, v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$200(Landroid/webkit/LGMonthPicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 128
    :goto_0
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    iget-object v1, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/webkit/LGMonthPicker;->access$200(Landroid/webkit/LGMonthPicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/webkit/LGMonthPicker;->access$200(Landroid/webkit/LGMonthPicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    #calls: Landroid/webkit/LGMonthPicker;->setMonth(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/LGMonthPicker;->access$600(Landroid/webkit/LGMonthPicker;II)V

    .line 129
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #calls: Landroid/webkit/LGMonthPicker;->updateSpinners()V
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$700(Landroid/webkit/LGMonthPicker;)V

    .line 130
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #calls: Landroid/webkit/LGMonthPicker;->notifyMonthChanged()V
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$800(Landroid/webkit/LGMonthPicker;)V

    .line 131
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mMonthOffset:I
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$400(Landroid/webkit/LGMonthPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mMonthOffset:I
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$400(Landroid/webkit/LGMonthPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    if-ne p3, v0, :cond_1

    .line 118
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$200(Landroid/webkit/LGMonthPicker;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$200(Landroid/webkit/LGMonthPicker;)Ljava/util/Calendar;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$500(Landroid/webkit/LGMonthPicker;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 123
    iget-object v0, p0, Landroid/webkit/LGMonthPicker$1;->this$0:Landroid/webkit/LGMonthPicker;

    #getter for: Landroid/webkit/LGMonthPicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/webkit/LGMonthPicker;->access$200(Landroid/webkit/LGMonthPicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 125
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
