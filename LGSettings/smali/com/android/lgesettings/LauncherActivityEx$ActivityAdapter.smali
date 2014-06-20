.class Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "LauncherActivityEx.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/LauncherActivityEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter$ArrayFilter;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field protected mActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/LauncherActivityEx$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field protected final mIconResizer:Lcom/android/lgesettings/LauncherActivityEx$IconResizer;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/LauncherActivityEx$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowIcons:Z

.field final synthetic this$0:Lcom/android/lgesettings/LauncherActivityEx;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/LauncherActivityEx;Lcom/android/lgesettings/LauncherActivityEx$IconResizer;)V
    .locals 2
    .parameter
    .parameter "resizer"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->this$0:Lcom/android/lgesettings/LauncherActivityEx;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->lock:Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mIconResizer:Lcom/android/lgesettings/LauncherActivityEx$IconResizer;

    .line 96
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Lcom/android/lgesettings/LauncherActivityEx;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    invoke-virtual {p1}, Lcom/android/lgesettings/LauncherActivityEx;->onEvaluateShowIcons()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mShowIcons:Z

    .line 101
    new-instance v0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;

    invoke-virtual {p1}, Lcom/android/lgesettings/LauncherActivityEx;->makeListItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;-><init>(Lcom/android/lgesettings/LauncherActivityEx;Ljava/util/List;)V

    .line 102
    .local v0, categoryList:Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;
    invoke-virtual {v0}, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->makeCategoryListItems()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    .line 103
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Lcom/android/lgesettings/LauncherActivityEx$ListItem;)V
    .locals 7
    .parameter "view"
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 160
    const v3, 0x7f0a017f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 161
    .local v2, text:Landroid/widget/TextView;
    const v3, 0x7f0a0133

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 162
    .local v0, divider:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->this$0:Lcom/android/lgesettings/LauncherActivityEx;

    invoke-virtual {v3}, Lcom/android/lgesettings/LauncherActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 164
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v3, p2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-boolean v3, p2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->fFinalitem:Z

    if-nez v3, :cond_0

    .line 166
    const v3, 0x1080013

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    iget-boolean v3, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mShowIcons:Z

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, p2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mIconResizer:Lcom/android/lgesettings/LauncherActivityEx$IconResizer;

    iget-object v4, p2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->this$0:Lcom/android/lgesettings/LauncherActivityEx;

    invoke-virtual {v5}, Lcom/android/lgesettings/LauncherActivityEx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 172
    :cond_1
    iget-object v3, p2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter$ArrayFilter;-><init>(Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;Lcom/android/lgesettings/LauncherActivityEx$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 140
    iget-object v3, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    .line 141
    .local v2, item:Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    iget-object v3, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    const-string v4, "category"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b3

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 143
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    invoke-virtual {p2, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 147
    const v3, 0x7f0a017d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    .local v0, categoryView:Landroid/widget/TextView;
    iget-object v3, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p2

    .line 155
    .end local v0           #categoryView:Landroid/widget/TextView;
    .end local p2
    .local v1, convertView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 153
    .end local v1           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b5

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 154
    iget-object v3, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    invoke-direct {p0, p2, v3}, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->bindView(Landroid/view/View;Lcom/android/lgesettings/LauncherActivityEx$ListItem;)V

    move-object v1, p2

    .line 155
    .end local p2
    .restart local v1       #convertView:Landroid/view/View;
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 4
    .parameter "position"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->this$0:Lcom/android/lgesettings/LauncherActivityEx;

    iget-object v2, v2, Lcom/android/lgesettings/LauncherActivityEx;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    .line 112
    .local v1, item:Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    iget-object v2, v1, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v2, v1, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, v1, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public itemForPosition(I)Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    goto :goto_0
.end method
