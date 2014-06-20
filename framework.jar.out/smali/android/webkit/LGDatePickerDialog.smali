.class public Landroid/webkit/LGDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "LGDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Landroid/webkit/LGDatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/webkit/LGDatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v5, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 58
    iput-object p3, p0, Landroid/webkit/LGDatePickerDialog;->mCallBack:Landroid/webkit/LGDatePickerDialog$OnDateSetListener;

    .line 60
    invoke-virtual {p0}, Landroid/webkit/LGDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    .local v1, themeContext:Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x1040459

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    const/4 v3, -0x3

    const v4, 0x20b039f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/LGDatePickerDialog;->setIcon(I)V

    .line 65
    const v3, 0x1040458

    invoke-virtual {p0, v3}, Landroid/webkit/LGDatePickerDialog;->setTitle(I)V

    .line 67
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090038

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/webkit/LGDatePickerDialog;->setView(Landroid/view/View;)V

    .line 71
    const v3, 0x102028f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 72
    iget-object v3, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, p4, p5, p6, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/LGDatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 46
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/webkit/LGDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/webkit/LGDatePickerDialog$OnDateSetListener;III)V

    .line 48
    return-void
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 76
    packed-switch p2, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/LGDatePickerDialog;->mCallBack:Landroid/webkit/LGDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 81
    iget-object v0, p0, Landroid/webkit/LGDatePickerDialog;->mCallBack:Landroid/webkit/LGDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/webkit/LGDatePickerDialog$OnDateSetListener;->onDateSet(III)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/LGDatePickerDialog;->mCallBack:Landroid/webkit/LGDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 91
    iget-object v0, p0, Landroid/webkit/LGDatePickerDialog;->mCallBack:Landroid/webkit/LGDatePickerDialog$OnDateSetListener;

    invoke-interface {v0}, Landroid/webkit/LGDatePickerDialog$OnDateSetListener;->onClear()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 116
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 117
    .local v2, year:I
    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 118
    .local v1, month:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, day:I
    iget-object v3, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 120
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, state:Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string/jumbo v1, "month"

    iget-object v2, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v1, "day"

    iget-object v2, p0, Landroid/webkit/LGDatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    return-object v0
.end method
