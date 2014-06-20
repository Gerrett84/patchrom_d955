.class public Landroid/webkit/LGColorPickerDialog;
.super Landroid/app/AlertDialog;
.source "LGColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGColorPickerDialog$OnColorSetListener;
    }
.end annotation


# static fields
.field private static final COLOR:Ljava/lang/String; = "color"


# instance fields
.field private final mCallBack:Landroid/webkit/LGColorPickerDialog$OnColorSetListener;

.field private final mColorPicker:Landroid/webkit/LGColorPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/webkit/LGColorPickerDialog$OnColorSetListener;I)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-object p3, p0, Landroid/webkit/LGColorPickerDialog;->mCallBack:Landroid/webkit/LGColorPickerDialog$OnColorSetListener;

    .line 51
    invoke-virtual {p0}, Landroid/webkit/LGColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    .local v1, themeContext:Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x1040459

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    const/4 v3, -0x3

    const v4, 0x20b039f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/LGColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/LGColorPickerDialog;->setIcon(I)V

    .line 57
    const v3, 0x20b039b

    invoke-virtual {p0, v3}, Landroid/webkit/LGColorPickerDialog;->setTitle(I)V

    .line 59
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 60
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x203000b

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/webkit/LGColorPickerDialog;->setView(Landroid/view/View;)V

    .line 63
    const v3, 0x20e0057

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/LGColorPicker;

    iput-object v3, p0, Landroid/webkit/LGColorPickerDialog;->mColorPicker:Landroid/webkit/LGColorPicker;

    .line 64
    iget-object v3, p0, Landroid/webkit/LGColorPickerDialog;->mColorPicker:Landroid/webkit/LGColorPicker;

    invoke-virtual {v3, p4, v5}, Landroid/webkit/LGColorPicker;->init(ILandroid/webkit/LGColorPicker$OnColorChangedListener;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/LGColorPickerDialog$OnColorSetListener;I)V
    .locals 1
    .parameter "context"
    .parameter "callBack"
    .parameter "color"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/webkit/LGColorPickerDialog;-><init>(Landroid/content/Context;ILandroid/webkit/LGColorPickerDialog$OnColorSetListener;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public getColorPicker()Landroid/webkit/LGColorPicker;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/webkit/LGColorPickerDialog;->mColorPicker:Landroid/webkit/LGColorPicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 68
    packed-switch p2, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 71
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/LGColorPickerDialog;->mCallBack:Landroid/webkit/LGColorPickerDialog$OnColorSetListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Landroid/webkit/LGColorPickerDialog;->mColorPicker:Landroid/webkit/LGColorPicker;

    invoke-virtual {v0}, Landroid/webkit/LGColorPicker;->clearFocus()V

    .line 73
    iget-object v0, p0, Landroid/webkit/LGColorPickerDialog;->mCallBack:Landroid/webkit/LGColorPickerDialog$OnColorSetListener;

    iget-object v1, p0, Landroid/webkit/LGColorPickerDialog;->mColorPicker:Landroid/webkit/LGColorPicker;

    invoke-virtual {v1}, Landroid/webkit/LGColorPicker;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/webkit/LGColorPickerDialog$OnColorSetListener;->onColorSet(I)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/LGColorPickerDialog;->mCallBack:Landroid/webkit/LGColorPickerDialog$OnColorSetListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Landroid/webkit/LGColorPickerDialog;->mColorPicker:Landroid/webkit/LGColorPicker;

    invoke-virtual {v0}, Landroid/webkit/LGColorPicker;->clearFocus()V

    .line 83
    iget-object v0, p0, Landroid/webkit/LGColorPickerDialog;->mCallBack:Landroid/webkit/LGColorPickerDialog$OnColorSetListener;

    invoke-interface {v0}, Landroid/webkit/LGColorPickerDialog$OnColorSetListener;->onClear()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string v1, "color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, color:I
    iget-object v1, p0, Landroid/webkit/LGColorPickerDialog;->mColorPicker:Landroid/webkit/LGColorPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/LGColorPicker;->init(ILandroid/webkit/LGColorPicker$OnColorChangedListener;)V

    .line 108
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "color"

    iget-object v2, p0, Landroid/webkit/LGColorPickerDialog;->mColorPicker:Landroid/webkit/LGColorPicker;

    invoke-virtual {v2}, Landroid/webkit/LGColorPicker;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    return-object v0
.end method
