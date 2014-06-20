.class public Landroid/webkit/LGDateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "LGDateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private final mDateTimePicker:Landroid/webkit/LGDateTimePicker;

.field private final mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;IIIIIZ)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 73
    iput-object p3, p0, Landroid/webkit/LGDateTimePickerDialog;->mCallBack:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

    .line 75
    invoke-virtual {p0}, Landroid/webkit/LGDateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    .local v1, themeContext:Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x1040459

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGDateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGDateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 78
    const/4 v3, -0x3

    const v4, 0x20b039f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGDateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 79
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/LGDateTimePickerDialog;->setIcon(I)V

    .line 80
    const v3, 0x20b0396

    invoke-virtual {p0, v3}, Landroid/webkit/LGDateTimePickerDialog;->setTitle(I)V

    .line 82
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 83
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x203000d

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/webkit/LGDateTimePickerDialog;->setView(Landroid/view/View;)V

    .line 86
    const v3, 0x20e005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/LGDateTimePicker;

    iput-object v3, p0, Landroid/webkit/LGDateTimePickerDialog;->mDateTimePicker:Landroid/webkit/LGDateTimePicker;

    .line 88
    iget-object v3, p0, Landroid/webkit/LGDateTimePickerDialog;->mDateTimePicker:Landroid/webkit/LGDateTimePicker;

    const v4, 0x20e0059

    invoke-virtual {v3, v4}, Landroid/webkit/LGDateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 89
    iget-object v3, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, p4, p5, p6, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 90
    iget-object v3, p0, Landroid/webkit/LGDateTimePickerDialog;->mDateTimePicker:Landroid/webkit/LGDateTimePicker;

    const v4, 0x20e005a

    invoke-virtual {v3, v4}, Landroid/webkit/LGDateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 91
    iget-object v3, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 92
    iget-object v3, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 93
    iget-object v3, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;IIIIIZ)V
    .locals 10
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    .line 57
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/webkit/LGDateTimePickerDialog;-><init>(Landroid/content/Context;ILandroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;IIIIIZ)V

    .line 60
    return-void
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method public getTimePicker()Landroid/widget/TimePicker;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 97
    packed-switch p2, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 100
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/LGDateTimePickerDialog;->mCallBack:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 102
    iget-object v0, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 103
    iget-object v0, p0, Landroid/webkit/LGDateTimePickerDialog;->mCallBack:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

    iget-object v1, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;->onDateTimeSet(IIIII)V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/LGDateTimePickerDialog;->mCallBack:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 114
    iget-object v0, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 115
    iget-object v0, p0, Landroid/webkit/LGDateTimePickerDialog;->mCallBack:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

    invoke-interface {v0}, Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;->onClear()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 147
    const-string/jumbo v6, "year"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 148
    .local v5, year:I
    const-string/jumbo v6, "month"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 149
    .local v4, month:I
    const-string v6, "day"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, day:I
    const-string v6, "hour"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, hour:I
    const-string/jumbo v6, "minute"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 152
    .local v3, minute:I
    const-string v6, "is24hour"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 153
    .local v2, is24HourView:Z
    iget-object v6, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v4, v0, v7}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 154
    iget-object v6, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 155
    iget-object v6, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 156
    iget-object v6, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 157
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, state:Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string/jumbo v1, "month"

    iget-object v2, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v1, "day"

    iget-object v2, p0, Landroid/webkit/LGDateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v1, "hour"

    iget-object v2, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string/jumbo v1, "minute"

    iget-object v2, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v1, "is24hour"

    iget-object v2, p0, Landroid/webkit/LGDateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    return-object v0
.end method
