.class public Lcom/android/lgesettings/RingtoneEntryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RingtoneEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;,
        Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/lgesettings/RingtoneItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field ei:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/RingtoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private vi:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "items"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 68
    iput-object p1, p0, Lcom/android/lgesettings/RingtoneEntryAdapter;->context:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/android/lgesettings/RingtoneEntryAdapter;->items:Ljava/util/ArrayList;

    .line 70
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/lgesettings/RingtoneEntryAdapter;->vi:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 76
    const/4 v5, 0x0

    .line 77
    .local v5, v:Landroid/view/View;
    const/4 v0, -0x1

    .line 79
    .local v0, checkView:I
    iget-object v6, p0, Lcom/android/lgesettings/RingtoneEntryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/RingtoneItem;

    .line 80
    .local v1, i:Lcom/android/lgesettings/RingtoneItem;
    if-eqz p2, :cond_0

    .line 81
    if-eqz v1, :cond_0

    .line 82
    invoke-interface {v1}, Lcom/android/lgesettings/RingtoneItem;->isSection()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 83
    move-object v5, p2

    .line 84
    const/4 v0, 0x1

    .line 95
    :cond_0
    :goto_0
    if-nez p2, :cond_6

    .line 96
    if-eqz v1, :cond_1

    .line 97
    invoke-interface {v1}, Lcom/android/lgesettings/RingtoneItem;->isSection()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, v1

    .line 98
    check-cast v3, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;

    .line 99
    .local v3, si:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;
    iget-object v6, p0, Lcom/android/lgesettings/RingtoneEntryAdapter;->vi:Landroid/view/LayoutInflater;

    const v7, 0x7f040129

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 101
    new-instance v6, Lcom/android/lgesettings/RingtoneEntryAdapter$1;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/RingtoneEntryAdapter$1;-><init>(Lcom/android/lgesettings/RingtoneEntryAdapter;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 108
    const v6, 0x7f0a017d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 109
    .local v2, sectionView:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    .end local v1           #i:Lcom/android/lgesettings/RingtoneItem;
    .end local v2           #sectionView:Landroid/widget/TextView;
    .end local v3           #si:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;
    :cond_1
    :goto_1
    return-object v5

    .line 85
    .restart local v1       #i:Lcom/android/lgesettings/RingtoneItem;
    :cond_2
    invoke-interface {v1}, Lcom/android/lgesettings/RingtoneItem;->isSection()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 86
    move-object v5, p2

    .line 87
    const/4 v0, 0x2

    goto :goto_0

    .line 89
    :cond_3
    const/4 p2, 0x0

    .line 90
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_4
    check-cast v1, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    .end local v1           #i:Lcom/android/lgesettings/RingtoneItem;
    iput-object v1, p0, Lcom/android/lgesettings/RingtoneEntryAdapter;->ei:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    .line 113
    iget-object v6, p0, Lcom/android/lgesettings/RingtoneEntryAdapter;->vi:Landroid/view/LayoutInflater;

    const v7, 0x7f040128

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 114
    const v6, 0x7f0a0290

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 116
    .local v4, title:Landroid/widget/TextView;
    if-eqz v4, :cond_5

    .line 117
    iget-object v6, p0, Lcom/android/lgesettings/RingtoneEntryAdapter;->ei:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    iget-object v6, v6, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_5
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 123
    .end local v4           #title:Landroid/widget/TextView;
    .restart local v1       #i:Lcom/android/lgesettings/RingtoneItem;
    :cond_6
    const/4 v6, 0x1

    if-ne v0, v6, :cond_7

    move-object v3, v1

    .line 124
    check-cast v3, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;

    .line 125
    .restart local v3       #si:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;
    const v6, 0x7f0a017d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 126
    .restart local v2       #sectionView:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 128
    .end local v2           #sectionView:Landroid/widget/TextView;
    .end local v3           #si:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;
    :cond_7
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 129
    check-cast v1, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    .end local v1           #i:Lcom/android/lgesettings/RingtoneItem;
    iput-object v1, p0, Lcom/android/lgesettings/RingtoneEntryAdapter;->ei:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    .line 130
    const v6, 0x7f0a0290

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 131
    .restart local v4       #title:Landroid/widget/TextView;
    if-eqz v4, :cond_8

    .line 132
    iget-object v6, p0, Lcom/android/lgesettings/RingtoneEntryAdapter;->ei:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    iget-object v6, v6, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_8
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
