.class public Landroid/webkit/LGWeekPickerDialog;
.super Landroid/app/AlertDialog;
.source "LGWeekPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;
    }
.end annotation


# static fields
.field private static final WEEK:Ljava/lang/String; = "week"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;

.field private final mWeekPicker:Landroid/webkit/LGWeekPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/webkit/LGWeekPickerDialog$OnWeekSetListener;II)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "weekOfYear"

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    iput-object p3, p0, Landroid/webkit/LGWeekPickerDialog;->mCallBack:Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;

    .line 54
    invoke-virtual {p0}, Landroid/webkit/LGWeekPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    .local v1, themeContext:Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x1040459

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGWeekPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGWeekPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    const/4 v3, -0x3

    const v4, 0x20b039f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGWeekPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 58
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/LGWeekPickerDialog;->setIcon(I)V

    .line 59
    const v3, 0x20b0398

    invoke-virtual {p0, v3}, Landroid/webkit/LGWeekPickerDialog;->setTitle(I)V

    .line 61
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2030027

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/webkit/LGWeekPickerDialog;->setView(Landroid/view/View;)V

    .line 65
    const v3, 0x20e0083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/LGWeekPicker;

    iput-object v3, p0, Landroid/webkit/LGWeekPickerDialog;->mWeekPicker:Landroid/webkit/LGWeekPicker;

    .line 66
    iget-object v3, p0, Landroid/webkit/LGWeekPickerDialog;->mWeekPicker:Landroid/webkit/LGWeekPicker;

    invoke-virtual {v3, p4, p5, v5}, Landroid/webkit/LGWeekPicker;->init(IILandroid/webkit/LGWeekPicker$OnWeekChangedListener;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;II)V
    .locals 6
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "weekOfYear"

    .prologue
    .line 41
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/LGWeekPickerDialog;-><init>(Landroid/content/Context;ILandroid/webkit/LGWeekPickerDialog$OnWeekSetListener;II)V

    .line 43
    return-void
.end method


# virtual methods
.method public getWeekPicker()Landroid/webkit/LGWeekPicker;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/webkit/LGWeekPickerDialog;->mWeekPicker:Landroid/webkit/LGWeekPicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    packed-switch p2, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 73
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/LGWeekPickerDialog;->mCallBack:Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/webkit/LGWeekPickerDialog;->mWeekPicker:Landroid/webkit/LGWeekPicker;

    invoke-virtual {v0}, Landroid/webkit/LGWeekPicker;->clearFocus()V

    .line 75
    iget-object v0, p0, Landroid/webkit/LGWeekPickerDialog;->mCallBack:Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;

    iget-object v1, p0, Landroid/webkit/LGWeekPickerDialog;->mWeekPicker:Landroid/webkit/LGWeekPicker;

    invoke-virtual {v1}, Landroid/webkit/LGWeekPicker;->getYear()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/LGWeekPickerDialog;->mWeekPicker:Landroid/webkit/LGWeekPicker;

    invoke-virtual {v2}, Landroid/webkit/LGWeekPicker;->getWeek()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;->onWeekSet(II)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/LGWeekPickerDialog;->mCallBack:Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/webkit/LGWeekPickerDialog;->mWeekPicker:Landroid/webkit/LGWeekPicker;

    invoke-virtual {v0}, Landroid/webkit/LGWeekPicker;->clearFocus()V

    .line 85
    iget-object v0, p0, Landroid/webkit/LGWeekPickerDialog;->mCallBack:Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;

    invoke-interface {v0}, Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;->onClear()V

    goto :goto_0

    .line 70
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
    .line 108
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 109
    const-string/jumbo v2, "year"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, year:I
    const-string/jumbo v2, "week"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, week:I
    iget-object v2, p0, Landroid/webkit/LGWeekPickerDialog;->mWeekPicker:Landroid/webkit/LGWeekPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroid/webkit/LGWeekPicker;->init(IILandroid/webkit/LGWeekPicker$OnWeekChangedListener;)V

    .line 112
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, state:Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/webkit/LGWeekPickerDialog;->mWeekPicker:Landroid/webkit/LGWeekPicker;

    invoke-virtual {v2}, Landroid/webkit/LGWeekPicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v1, "week"

    iget-object v2, p0, Landroid/webkit/LGWeekPickerDialog;->mWeekPicker:Landroid/webkit/LGWeekPicker;

    invoke-virtual {v2}, Landroid/webkit/LGWeekPicker;->getWeek()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    return-object v0
.end method
