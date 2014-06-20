.class Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/lgesettings/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/lgesettings/DreamSettings;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/DreamSettings;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/lgesettings/DreamSettings;

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 427
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 428
    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;Lcom/android/lgesettings/DreamBackend$DreamInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/lgesettings/DreamBackend$DreamInfo;)V

    return-void
.end method

.method private activate(Lcom/android/lgesettings/DreamBackend$DreamInfo;)V
    .locals 3
    .parameter "dreamInfo"

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->getCurrentSelection()Lcom/android/lgesettings/DreamBackend$DreamInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    :goto_0
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 525
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->isActive:Z

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->isActive:Z

    .line 528
    iget-object v1, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;
    invoke-static {v1}, Lcom/android/lgesettings/DreamSettings;->access$300(Lcom/android/lgesettings/DreamSettings;)Lcom/android/lgesettings/DreamBackend;

    move-result-object v1

    iget-object v2, p1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 529
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 504
    .local v0, row:Landroid/view/View;
    new-instance v1, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$4;

    invoke-direct {v1, p0, v0}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$4;-><init>(Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    return-object v0
.end method

.method private createDreamSummaryRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04005b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 490
    .local v0, row:Landroid/view/View;
    new-instance v1, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$3;-><init>(Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    return-object v0
.end method

.method private getCurrentSelection()Lcom/android/lgesettings/DreamBackend$DreamInfo;
    .locals 3

    .prologue
    .line 514
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 515
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;

    .line 516
    .local v0, dreamInfo:Lcom/android/lgesettings/DreamBackend$DreamInfo;
    iget-boolean v2, v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    .line 519
    .end local v0           #dreamInfo:Lcom/android/lgesettings/DreamBackend$DreamInfo;
    :goto_1
    return-object v0

    .line 514
    .restart local v0       #dreamInfo:Lcom/android/lgesettings/DreamBackend$DreamInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v0           #dreamInfo:Lcom/android/lgesettings/DreamBackend$DreamInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;

    .line 433
    .local v0, dreamInfo:Lcom/android/lgesettings/DreamBackend$DreamInfo;
    const-string v7, "getView(%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    #calls: Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v7, v8}, Lcom/android/lgesettings/DreamSettings;->access$600(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    if-nez p1, :cond_2

    .line 435
    if-eqz p2, :cond_0

    move-object v3, p2

    .line 436
    .local v3, row:Landroid/view/View;
    :goto_0
    const-string v7, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 437
    const v7, 0x1020016

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/lgesettings/DreamSettings;

    const v9, 0x7f080fb9

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/DreamSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move-object v4, v3

    .line 485
    .end local v3           #row:Landroid/view/View;
    .local v4, row:Landroid/view/View;
    :goto_2
    return-object v4

    .line 435
    .end local v4           #row:Landroid/view/View;
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->createDreamSummaryRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 439
    .restart local v3       #row:Landroid/view/View;
    :cond_1
    const v7, 0x1020016

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/lgesettings/DreamSettings;

    const v9, 0x7f081040

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/DreamSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 444
    .end local v3           #row:Landroid/view/View;
    :cond_2
    if-eqz p2, :cond_3

    .line 445
    const v7, 0x1020006

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 446
    .local v1, icon:Landroid/widget/ImageView;
    if-nez v1, :cond_3

    .line 447
    const/4 p2, 0x0

    .line 451
    .end local v1           #icon:Landroid/widget/ImageView;
    :cond_3
    if-eqz p2, :cond_4

    move-object v3, p2

    .line 452
    .restart local v3       #row:Landroid/view/View;
    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 455
    const v7, 0x1020006

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    const v7, 0x1020016

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    const v7, 0x1020019

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 462
    .local v2, radioButton:Landroid/widget/RadioButton;
    iget-boolean v7, v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 463
    new-instance v7, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$1;

    invoke-direct {v7, p0, v3}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$1;-><init>(Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    iget-object v7, v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_5

    const/4 v6, 0x1

    .line 475
    .local v6, showSettings:Z
    :goto_4
    const v7, 0x102001a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 476
    .local v5, settingsButton:Landroid/widget/ImageView;
    if-eqz v6, :cond_6

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-boolean v7, v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v7, :cond_7

    const/high16 v7, 0x3f80

    :goto_6
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 478
    iget-boolean v7, v0, Lcom/android/lgesettings/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 479
    new-instance v7, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$2;

    invoke-direct {v7, p0, v3}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$2;-><init>(Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v4, v3

    .line 485
    .end local v3           #row:Landroid/view/View;
    .restart local v4       #row:Landroid/view/View;
    goto/16 :goto_2

    .line 451
    .end local v2           #radioButton:Landroid/widget/RadioButton;
    .end local v4           #row:Landroid/view/View;
    .end local v5           #settingsButton:Landroid/widget/ImageView;
    .end local v6           #showSettings:Z
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    .line 471
    .restart local v2       #radioButton:Landroid/widget/RadioButton;
    .restart local v3       #row:Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 476
    .restart local v5       #settingsButton:Landroid/widget/ImageView;
    .restart local v6       #showSettings:Z
    :cond_6
    const/4 v7, 0x4

    goto :goto_5

    .line 477
    :cond_7
    const v7, 0x3ea8f5c3

    goto :goto_6
.end method
