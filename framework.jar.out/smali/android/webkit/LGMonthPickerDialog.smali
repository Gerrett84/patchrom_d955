.class public Landroid/webkit/LGMonthPickerDialog;
.super Landroid/app/AlertDialog;
.source "LGMonthPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;
    }
.end annotation


# static fields
.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;

.field private final mMonthPicker:Landroid/webkit/LGMonthPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/webkit/LGMonthPickerDialog$OnMonthSetListener;II)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 53
    iput-object p3, p0, Landroid/webkit/LGMonthPickerDialog;->mCallBack:Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;

    .line 55
    invoke-virtual {p0}, Landroid/webkit/LGMonthPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    .local v1, themeContext:Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x1040459

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGMonthPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGMonthPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 58
    const/4 v3, -0x3

    const v4, 0x20b039f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGMonthPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 59
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/LGMonthPickerDialog;->setIcon(I)V

    .line 60
    const v3, 0x20b0397

    invoke-virtual {p0, v3}, Landroid/webkit/LGMonthPickerDialog;->setTitle(I)V

    .line 62
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2030014

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/webkit/LGMonthPickerDialog;->setView(Landroid/view/View;)V

    .line 66
    const v3, 0x20e0067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/LGMonthPicker;

    iput-object v3, p0, Landroid/webkit/LGMonthPickerDialog;->mMonthPicker:Landroid/webkit/LGMonthPicker;

    .line 67
    iget-object v3, p0, Landroid/webkit/LGMonthPickerDialog;->mMonthPicker:Landroid/webkit/LGMonthPicker;

    invoke-virtual {v3, p4, p5, v5}, Landroid/webkit/LGMonthPicker;->init(IILandroid/webkit/LGMonthPicker$OnMonthChangedListener;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;II)V
    .locals 6
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"

    .prologue
    .line 42
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/LGMonthPickerDialog;-><init>(Landroid/content/Context;ILandroid/webkit/LGMonthPickerDialog$OnMonthSetListener;II)V

    .line 44
    return-void
.end method


# virtual methods
.method public getMonthPicker()Landroid/webkit/LGMonthPicker;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/LGMonthPickerDialog;->mMonthPicker:Landroid/webkit/LGMonthPicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 71
    packed-switch p2, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/LGMonthPickerDialog;->mCallBack:Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Landroid/webkit/LGMonthPickerDialog;->mMonthPicker:Landroid/webkit/LGMonthPicker;

    invoke-virtual {v0}, Landroid/webkit/LGMonthPicker;->clearFocus()V

    .line 76
    iget-object v0, p0, Landroid/webkit/LGMonthPickerDialog;->mCallBack:Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;

    iget-object v1, p0, Landroid/webkit/LGMonthPickerDialog;->mMonthPicker:Landroid/webkit/LGMonthPicker;

    invoke-virtual {v1}, Landroid/webkit/LGMonthPicker;->getYear()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/LGMonthPickerDialog;->mMonthPicker:Landroid/webkit/LGMonthPicker;

    invoke-virtual {v2}, Landroid/webkit/LGMonthPicker;->getMonth()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;->onMonthSet(II)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/LGMonthPickerDialog;->mCallBack:Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/webkit/LGMonthPickerDialog;->mMonthPicker:Landroid/webkit/LGMonthPicker;

    invoke-virtual {v0}, Landroid/webkit/LGMonthPicker;->clearFocus()V

    .line 86
    iget-object v0, p0, Landroid/webkit/LGMonthPickerDialog;->mCallBack:Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;

    invoke-interface {v0}, Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;->onClear()V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 110
    const-string/jumbo v2, "year"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, year:I
    const-string/jumbo v2, "month"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, month:I
    iget-object v2, p0, Landroid/webkit/LGMonthPickerDialog;->mMonthPicker:Landroid/webkit/LGMonthPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroid/webkit/LGMonthPicker;->init(IILandroid/webkit/LGMonthPicker$OnMonthChangedListener;)V

    .line 113
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, state:Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/webkit/LGMonthPickerDialog;->mMonthPicker:Landroid/webkit/LGMonthPicker;

    invoke-virtual {v2}, Landroid/webkit/LGMonthPicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string/jumbo v1, "month"

    iget-object v2, p0, Landroid/webkit/LGMonthPickerDialog;->mMonthPicker:Landroid/webkit/LGMonthPicker;

    invoke-virtual {v2}, Landroid/webkit/LGMonthPicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    return-object v0
.end method
