.class public Lcom/android/lgesettings/utils/CheckPatchInfo;
.super Landroid/app/Activity;
.source "CheckPatchInfo.java"


# instance fields
.field private mAddPatch:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v7, 0x7f04002e

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/utils/CheckPatchInfo;->setContentView(I)V

    .line 34
    const v7, 0x7f0a0061

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/utils/CheckPatchInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/lgesettings/utils/CheckPatchInfo;->mAddPatch:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/CheckPatchInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, item:I
    new-instance v2, Lcom/android/lgesettings/AddPatchInfo;

    invoke-direct {v2}, Lcom/android/lgesettings/AddPatchInfo;-><init>()V

    .line 38
    .local v2, mAddPatchInfo:Lcom/android/lgesettings/AddPatchInfo;
    const-string v6, "patch list"

    .line 39
    .local v6, title:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 59
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/utils/CheckPatchInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v7, p0, Lcom/android/lgesettings/utils/CheckPatchInfo;->mAddPatch:Landroid/widget/TextView;

    const/high16 v8, 0x41a0

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v7, p0, Lcom/android/lgesettings/utils/CheckPatchInfo;->mAddPatch:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/lgesettings/AddPatchInfo;->getPatchInfo()Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void

    .line 41
    :pswitch_0
    const-string v6, "Sound patch list"

    .line 42
    new-instance v5, Lcom/android/lgesettings/AddPatchInfo$Sound;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v2}, Lcom/android/lgesettings/AddPatchInfo$Sound;-><init>(Lcom/android/lgesettings/AddPatchInfo;)V

    .line 43
    .local v5, soundInfo:Lcom/android/lgesettings/AddPatchInfo$Sound;
    goto :goto_0

    .line 45
    .end local v5           #soundInfo:Lcom/android/lgesettings/AddPatchInfo$Sound;
    :pswitch_1
    const-string v6, "Quick button patch list"

    .line 46
    new-instance v3, Lcom/android/lgesettings/AddPatchInfo$QuickButton;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v2}, Lcom/android/lgesettings/AddPatchInfo$QuickButton;-><init>(Lcom/android/lgesettings/AddPatchInfo;)V

    .line 47
    .local v3, quickButton_Info:Lcom/android/lgesettings/AddPatchInfo$QuickButton;
    goto :goto_0

    .line 49
    .end local v3           #quickButton_Info:Lcom/android/lgesettings/AddPatchInfo$QuickButton;
    :pswitch_2
    const-string v6, "Short cut patch list"

    .line 50
    new-instance v4, Lcom/android/lgesettings/AddPatchInfo$ShortCut;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v2}, Lcom/android/lgesettings/AddPatchInfo$ShortCut;-><init>(Lcom/android/lgesettings/AddPatchInfo;)V

    .line 51
    .local v4, shorCut_Info:Lcom/android/lgesettings/AddPatchInfo$ShortCut;
    goto :goto_0

    .line 53
    .end local v4           #shorCut_Info:Lcom/android/lgesettings/AddPatchInfo$ShortCut;
    :pswitch_3
    const-string v6, "Accessibility patch list"

    .line 54
    new-instance v0, Lcom/android/lgesettings/AddPatchInfo$Acccessibility;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/android/lgesettings/AddPatchInfo$Acccessibility;-><init>(Lcom/android/lgesettings/AddPatchInfo;)V

    .line 55
    .local v0, accessibility_Info:Lcom/android/lgesettings/AddPatchInfo$Acccessibility;
    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
