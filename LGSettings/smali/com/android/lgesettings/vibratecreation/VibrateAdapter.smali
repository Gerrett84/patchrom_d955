.class public abstract Lcom/android/lgesettings/vibratecreation/VibrateAdapter;
.super Landroid/widget/BaseAdapter;
.source "VibrateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    }
.end annotation


# static fields
.field private static TYPE_SECTION_HEADER:I


# instance fields
.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput v0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->TYPE_SECTION_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->sections:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 2
    .parameter "caption"
    .parameter "adapter"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->sections:Ljava/util/List;

    new-instance v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateAdapter;Ljava/lang/String;Landroid/widget/Adapter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, total:I
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->sections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;

    .line 33
    .local v1, section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    iget-object v3, v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;->adapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    .line 35
    .end local v1           #section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    :cond_0
    return v2
.end method

.method protected abstract getHeaderView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .parameter "position"

    .prologue
    .line 87
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->sections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;

    .line 88
    .local v1, section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    if-nez p1, :cond_0

    .line 99
    .end local v1           #section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    :goto_1
    return-object v1

    .line 91
    .restart local v1       #section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    :cond_0
    iget-object v3, v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;->adapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 92
    .local v2, size:I
    const-string v3, "VibrateAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getItem] position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v3, "VibrateAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getItem] size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-ge p1, v2, :cond_1

    .line 95
    iget-object v3, v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;->adapter:Landroid/widget/Adapter;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 97
    :cond_1
    sub-int/2addr p1, v2

    .line 98
    goto :goto_0

    .line 99
    .end local v1           #section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    .end local v2           #size:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 72
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 125
    .local v2, sectionIndex:I
    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->sections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;

    .line 126
    .local v1, section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    if-nez p1, :cond_0

    .line 127
    iget-object v4, v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;->caption:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, p2, p3}, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->getHeaderView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 141
    .end local v1           #section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    :goto_1
    return-object v4

    .line 130
    .restart local v1       #section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    :cond_0
    iget-object v4, v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;->adapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 131
    .local v3, size:I
    const-string v4, "VibrateAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getview] position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v4, "VibrateAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getview] size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-ge p1, v3, :cond_1

    .line 134
    const-string v4, "VibrateAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getview] size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;->adapter:Landroid/widget/Adapter;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 138
    :cond_1
    sub-int/2addr p1, v3

    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 140
    goto :goto_0

    .line 141
    .end local v1           #section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    .end local v3           #size:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 43
    const/4 v2, 0x1

    .line 45
    .local v2, total:I
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->sections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;

    .line 46
    .local v1, section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    iget-object v3, v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;->adapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 48
    .end local v1           #section:Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
    :cond_0
    return v2
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->getItemViewType(I)I

    move-result v0

    sget v1, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;->TYPE_SECTION_HEADER:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
