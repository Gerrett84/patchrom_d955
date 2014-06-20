.class public Lcom/android/lgesettings/data/DataWarningDialogTCL;
.super Lcom/android/internal/app/AlertActivity;
.source "DataWarningDialogTCL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final DATA_ENABLE_DIALOG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCancelable:Z

.field private mCheck:Z

.field private mCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDoNotShow:Landroid/widget/CheckBox;

.field private tViewDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 27
    const-string v0, "DataWarningDialogTCL"

    iput-object v0, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "android.intent.action.DATA_ENABLE_DIALOG"

    iput-object v0, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->DATA_ENABLE_DIALOG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCancelable:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    .line 93
    new-instance v0, Lcom/android/lgesettings/data/DataWarningDialogTCL$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/data/DataWarningDialogTCL$1;-><init>(Lcom/android/lgesettings/data/DataWarningDialogTCL;)V

    iput-object v0, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/data/DataWarningDialogTCL;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    return p1
.end method

.method private setCheckboxDB(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "checked"

    .prologue
    .line 121
    const-string v0, "DataWarningDialogTCL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataEnableDB(): mClickedPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-boolean v0, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "do_not_show_again_tcl_warn"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "do_not_show_again_tcl_warn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 112
    const-string v0, "DataWarningDialogTCL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPositiveButton select="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "TCL"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-boolean v0, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    invoke-direct {p0, p0, v0}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->setCheckboxDB(Landroid/content/Context;Z)V

    .line 116
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->setResult(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->finish()V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v2, "DataWarningDialogTCL"

    const-string v5, "DataEnableDialog onCreate"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f040066

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, view:Landroid/view/View;
    iget-object v0, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 47
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const v2, 0x7f080ffb

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 52
    :goto_0
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 53
    const v2, 0x1010355

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 54
    const v2, 0x7f08059d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 55
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 56
    const v2, 0x7f0a00e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mDoNotShow:Landroid/widget/CheckBox;

    .line 57
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    iget-object v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mDoNotShow:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 66
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->setupAlert()V

    .line 68
    const v2, 0x7f0a00e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->tViewDescription:Landroid/widget/TextView;

    .line 69
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    iget-object v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->tViewDescription:Landroid/widget/TextView;

    const v3, 0x7f080f27

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :goto_2
    if-eqz p1, :cond_0

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    const-string v2, "currentValue"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    .line 86
    :cond_0
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->setFinishOnTouchOutside(Z)V

    .line 90
    :cond_1
    return-void

    .line 50
    :cond_2
    const v2, 0x7f080ff3

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/data/DataWarningDialogTCL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "do_not_show_again_tcl_warn"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    .line 62
    iget-object v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mDoNotShow:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    iget-object v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mDoNotShow:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :cond_4
    move v2, v4

    .line 60
    goto :goto_3

    .line 72
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->tViewDescription:Landroid/widget/TextView;

    const v3, 0x7f080ff2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    const-string v0, "DataWarningDialogTCL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState(): mCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v0, "currentValue"

    iget-boolean v1, p0, Lcom/android/lgesettings/data/DataWarningDialogTCL;->mCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    return-void
.end method
