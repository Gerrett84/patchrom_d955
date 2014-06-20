.class Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserDictionarySettingsImageGetter"
.end annotation


# instance fields
.field private mEmptyTextView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/UserDictionarySettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/android/lgesettings/UserDictionarySettings;)V
    .locals 1
    .parameter "tv"
    .parameter "emptyWords"

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mRef:Ljava/lang/ref/WeakReference;

    .line 121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mEmptyTextView:Ljava/lang/ref/WeakReference;

    .line 122
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 152
    iput-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mRef:Ljava/lang/ref/WeakReference;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mEmptyTextView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mEmptyTextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 156
    iput-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mEmptyTextView:Ljava/lang/ref/WeakReference;

    .line 158
    :cond_1
    return-void
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "source"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 127
    iget-object v6, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_1

    move-object v5, v7

    .line 129
    .local v5, userDictSetting:Lcom/android/lgesettings/UserDictionarySettings;
    :goto_0
    const v3, 0x7f020253

    .line 131
    .local v3, resId:I
    if-eqz v5, :cond_3

    .line 132
    invoke-virtual {v5}, Lcom/android/lgesettings/UserDictionarySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 133
    .local v2, res:Landroid/content/res/Resources;
    if-eqz v2, :cond_3

    .line 134
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    .local v1, emptyWordDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 136
    iget-object v6, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mEmptyTextView:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_2

    move-object v0, v7

    .line 138
    .local v0, emptyTextView:Landroid/widget/TextView;
    :goto_1
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3ff3333333333333L

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 140
    .local v4, textSize:I
    invoke-virtual {v1, v10, v10, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    .end local v0           #emptyTextView:Landroid/widget/TextView;
    .end local v1           #emptyWordDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v4           #textSize:I
    :cond_0
    :goto_2
    return-object v1

    .line 127
    .end local v3           #resId:I
    .end local v5           #userDictSetting:Lcom/android/lgesettings/UserDictionarySettings;
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/lgesettings/UserDictionarySettings;

    move-object v5, v6

    goto :goto_0

    .line 136
    .restart local v1       #emptyWordDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #res:Landroid/content/res/Resources;
    .restart local v3       #resId:I
    .restart local v5       #userDictSetting:Lcom/android/lgesettings/UserDictionarySettings;
    :cond_2
    iget-object v6, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsImageGetter;->mEmptyTextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v0, v6

    goto :goto_1

    .end local v1           #emptyWordDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_3
    move-object v1, v7

    .line 146
    goto :goto_2
.end method
