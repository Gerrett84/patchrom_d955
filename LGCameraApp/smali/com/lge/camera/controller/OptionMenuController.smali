.class public Lcom/lge/camera/controller/OptionMenuController;
.super Lcom/lge/camera/controller/Controller;
.source "OptionMenuController.java"


# instance fields
.field private mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

.field private mCameraOptionMenu:[[I

.field private mHideOptionMenu:Z

.field private mOptionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOptionMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/OptionMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionMenuState:I

.field private mOptionMenuView:Landroid/view/View;

.field private mSmartCameraOptionMenu:[[I

.field private mVideoOptionMenu:[[I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 6
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 55
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 31
    iput v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuState:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    .line 34
    iput-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    .line 35
    iput-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    .line 37
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mCameraOptionMenu:[[I

    .line 43
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mSmartCameraOptionMenu:[[I

    .line 48
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mVideoOptionMenu:[[I

    .line 78
    iput-boolean v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mHideOptionMenu:Z

    .line 182
    new-instance v0, Lcom/lge/camera/controller/OptionMenuController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/OptionMenuController$2;-><init>(Lcom/lge/camera/controller/OptionMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 56
    return-void

    .line 37
    nop

    :array_0
    .array-data 0x4
        0xft 0x3t 0xbt 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x38t 0x0t 0xbt 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x9at 0x1t 0xbt 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 43
    :array_3
    .array-data 0x4
        0x38t 0x0t 0xbt 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x9at 0x1t 0xbt 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 48
    :array_5
    .array-data 0x4
        0xft 0x3t 0xbt 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x38t 0x0t 0xbt 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0xect 0x1t 0xbt 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public addOptionMenu(Ljava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "resId"

    .prologue
    .line 162
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 163
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    const/4 v0, 0x0

    .line 164
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Lcom/lge/camera/components/OptionMenu;

    invoke-direct {v1, p1, v0}, Lcom/lge/camera/components/OptionMenu;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 165
    .local v1, menu:Lcom/lge/camera/components/OptionMenu;
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #menu:Lcom/lge/camera/components/OptionMenu;
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p2}, Lcom/lge/camera/ControllerFunction;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public createOptionMenu(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    iput p1, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuState:I

    .line 133
    iget v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuState:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mCameraOptionMenu:[[I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/OptionMenuController;->makeMenuList([[I)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mSmartCameraOptionMenu:[[I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/OptionMenuController;->makeMenuList([[I)V

    goto :goto_0

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mVideoOptionMenu:[[I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/OptionMenuController;->makeMenuList([[I)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideOptionMenu()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mHideOptionMenu:Z

    if-nez v1, :cond_0

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mHideOptionMenu:Z

    .line 85
    iget-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090102

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 88
    .local v0, optionMenu:Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    const/4 v1, 0x0

    new-instance v2, Lcom/lge/camera/controller/OptionMenuController$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/OptionMenuController$1;-><init>(Lcom/lge/camera/controller/OptionMenuController;)V

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/OptionMenuController;->startOptionMenuAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 105
    .end local v0           #optionMenu:Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method public isOptionMenuShowing()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeMenuList([[I)V
    .locals 5
    .parameter "menuList"

    .prologue
    .line 152
    array-length v2, p1

    if-ltz v2, :cond_0

    .line 153
    const-string v1, ""

    .line 154
    .local v1, menuString:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    aget-object v3, p1, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/OptionMenuController;->addOptionMenu(Ljava/lang/String;I)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0           #i:I
    .end local v1           #menuString:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onOptionItemSeleteced(Ljava/lang/String;)V
    .locals 4
    .parameter "itemTitle"

    .prologue
    const-wide/16 v2, 0xc8

    .line 255
    if-nez p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b030f

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ShowQuickFunctionDragDrop"

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0038

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ShowResetDialog"

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b019a

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b01ec

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/OptionMenuController$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/OptionMenuController$3;-><init>(Lcom/lge/camera/controller/OptionMenuController;)V

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/lge/camera/controller/OptionMenuController;->releaseOptionMenu()V

    .line 278
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 279
    return-void
.end method

.method public releaseOptionMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090102

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 111
    .local v0, optionMenu:Landroid/widget/ListView;
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900c1

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 114
    .local v1, vg:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 115
    iput-object v4, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    .line 116
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/adapter/OptionMenuAdapter;->unbind()V

    .line 118
    iput-object v4, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mHideOptionMenu:Z

    .line 123
    .end local v0           #optionMenu:Landroid/widget/ListView;
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public removeMenu(Ljava/lang/String;I)V
    .locals 4
    .parameter "title"
    .parameter "resId"

    .prologue
    .line 170
    iget-object v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, menu:Lcom/lge/camera/components/OptionMenu;
    iget-object v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 173
    .local v2, menuSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 174
    iget-object v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #menu:Lcom/lge/camera/components/OptionMenu;
    check-cast v1, Lcom/lge/camera/components/OptionMenu;

    .line 175
    .restart local v1       #menu:Lcom/lge/camera/components/OptionMenu;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lge/camera/components/OptionMenu;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0           #i:I
    .end local v1           #menu:Lcom/lge/camera/components/OptionMenu;
    .end local v2           #menuSize:I
    :cond_1
    return-void
.end method

.method public showOptionMenu(I)V
    .locals 6
    .parameter "type"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/OptionMenuController;->createOptionMenu(I)V

    .line 61
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f03001d

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    .line 63
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900c1

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 64
    .local v1, vg:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    new-instance v2, Lcom/lge/camera/adapter/OptionMenuAdapter;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03001c

    iget-object v5, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/camera/adapter/OptionMenuAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    .line 69
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090102

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 70
    .local v0, optionMenu:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/OptionMenuController;->startRotation(I)V

    .line 74
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/OptionMenuController;->startOptionMenuAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 76
    .end local v0           #optionMenu:Landroid/widget/ListView;
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public startOptionMenuAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 16
    .parameter "show"
    .parameter "listener"

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 353
    :goto_0
    return-void

    .line 285
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 287
    const/high16 v2, 0x3f80

    .local v2, fromX:F
    const/high16 v3, 0x3f80

    .local v3, toX:F
    const/high16 v4, 0x3f80

    .local v4, fromY:F
    const/high16 v5, 0x3f80

    .line 288
    .local v5, toY:F
    const/high16 v13, 0x3f80

    .local v13, startAlpha:F
    const/high16 v12, 0x3f80

    .line 289
    .local v12, endAlpha:F
    const/4 v7, 0x0

    .local v7, pivotX:F
    const/4 v9, 0x0

    .line 291
    .local v9, pivotY:F
    if-eqz p1, :cond_1

    .line 292
    const v2, 0x3f666666

    .line 293
    const v4, 0x3f666666

    .line 294
    const/4 v13, 0x0

    .line 301
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 340
    :goto_2
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 342
    .local v1, sa:Landroid/view/animation/ScaleAnimation;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x4020

    invoke-direct {v6, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 343
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v13, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 344
    .local v10, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3fc0

    invoke-direct {v6, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v10, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 346
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v11, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 347
    .local v11, aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 348
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 349
    const-wide/16 v14, 0xc8

    invoke-virtual {v11, v14, v15}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 350
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 296
    .end local v1           #sa:Landroid/view/animation/ScaleAnimation;
    .end local v10           #aa:Landroid/view/animation/AlphaAnimation;
    .end local v11           #aniSet:Landroid/view/animation/AnimationSet;
    :cond_1
    const v3, 0x3f666666

    .line 297
    const v5, 0x3f666666

    .line 298
    const/4 v12, 0x0

    goto :goto_1

    .line 303
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 304
    const/high16 v7, 0x3f80

    .line 305
    const/high16 v9, 0x3f80

    goto :goto_2

    .line 307
    :cond_2
    const/high16 v7, 0x3f00

    .line 308
    const/high16 v9, 0x3f80

    .line 310
    goto :goto_2

    .line 312
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 313
    const/high16 v7, 0x3f80

    .line 314
    const/4 v9, 0x0

    goto :goto_2

    .line 316
    :cond_3
    const/high16 v7, 0x3f00

    .line 317
    const/high16 v9, 0x3f80

    .line 319
    goto :goto_2

    .line 321
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 322
    const/high16 v7, 0x3f80

    .line 323
    const/high16 v9, 0x3f00

    goto :goto_2

    .line 325
    :cond_4
    const/4 v7, 0x0

    .line 326
    const/high16 v9, 0x3f80

    .line 328
    goto :goto_2

    .line 330
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 331
    const/high16 v7, 0x3f80

    .line 332
    const/high16 v9, 0x3f00

    goto/16 :goto_2

    .line 334
    :cond_5
    const/4 v7, 0x0

    .line 335
    const/high16 v9, 0x3f80

    goto/16 :goto_2

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public startRotation(I)V
    .locals 7
    .parameter "degree"

    .prologue
    .line 201
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f090101

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateLayout;

    .line 202
    .local v4, rl:Lcom/lge/camera/components/RotateLayout;
    if-eqz v4, :cond_0

    .line 203
    invoke-virtual {v4}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 204
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 205
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    const/16 v5, 0xb

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 210
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0009

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 211
    .local v1, lcdHeight:I
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0247

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 212
    .local v2, optionMenuWidth:I
    sparse-switch p1, :sswitch_data_0

    .line 246
    :goto_1
    invoke-virtual {v4, v3}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-virtual {v4, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 252
    .end local v1           #lcdHeight:I
    .end local v2           #optionMenuWidth:I
    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #rl:Lcom/lge/camera/components/RotateLayout;
    :cond_0
    :goto_2
    return-void

    .line 208
    .restart local v3       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4       #rl:Lcom/lge/camera/components/RotateLayout;
    :cond_1
    const/16 v5, 0xc

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #rl:Lcom/lge/camera/components/RotateLayout;
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v5, "CameraApp"

    const-string v6, "ClassCastException:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 214
    .end local v0           #e:Ljava/lang/ClassCastException;
    .restart local v1       #lcdHeight:I
    .restart local v2       #optionMenuWidth:I
    .restart local v3       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4       #rl:Lcom/lge/camera/components/RotateLayout;
    :sswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 215
    const/16 v5, 0xc

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 216
    const/4 v5, 0x0

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 218
    :cond_2
    const/16 v5, 0x9

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 219
    const/4 v5, 0x0

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 220
    sub-int v5, v1, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 224
    :sswitch_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 225
    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    const/4 v5, 0x0

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 228
    :cond_3
    const/16 v5, 0x9

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 229
    const/4 v5, 0x0

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 230
    sub-int v5, v1, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 235
    :sswitch_2
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 236
    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 237
    sub-int v5, v1, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 239
    :cond_4
    const/16 v5, 0x9

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 240
    const/4 v5, 0x0

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
