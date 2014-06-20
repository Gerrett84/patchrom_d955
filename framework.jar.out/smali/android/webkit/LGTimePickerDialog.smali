.class public Landroid/webkit/LGTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "LGTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallBack:Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;

.field private final mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/webkit/LGTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 5
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    iput-object p3, p0, Landroid/webkit/LGTimePickerDialog;->mCallBack:Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;

    .line 58
    invoke-virtual {p0}, Landroid/webkit/LGTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, themeContext:Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x1040459

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 60
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 61
    const/4 v3, -0x3

    const v4, 0x20b039f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/LGTimePickerDialog;->setIcon(I)V

    .line 63
    const v3, 0x1040457

    invoke-virtual {p0, v3}, Landroid/webkit/LGTimePickerDialog;->setTitle(I)V

    .line 65
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x10900e1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/webkit/LGTimePickerDialog;->setView(Landroid/view/View;)V

    .line 69
    const v3, 0x10203a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 70
    iget-object v3, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 71
    iget-object v3, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 72
    iget-object v3, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    .line 44
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/webkit/LGTimePickerDialog;-><init>(Landroid/content/Context;ILandroid/webkit/LGTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 46
    return-void
.end method


# virtual methods
.method public getTimePicker()Landroid/widget/TimePicker;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
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
    iget-object v0, p0, Landroid/webkit/LGTimePickerDialog;->mCallBack:Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 81
    iget-object v0, p0, Landroid/webkit/LGTimePickerDialog;->mCallBack:Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;->onTimeSet(II)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/LGTimePickerDialog;->mCallBack:Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 91
    iget-object v0, p0, Landroid/webkit/LGTimePickerDialog;->mCallBack:Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;

    invoke-interface {v0}, Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;->onClear()V

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
    const-string v3, "hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, hour:I
    const-string/jumbo v3, "minute"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 118
    .local v2, minute:I
    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 119
    .local v1, is24HourView:Z
    iget-object v3, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 120
    iget-object v3, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 121
    iget-object v3, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 122
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
    const-string v1, "hour"

    iget-object v2, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string/jumbo v1, "minute"

    iget-object v2, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v1, "is24hour"

    iget-object v2, p0, Landroid/webkit/LGTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    return-object v0
.end method
