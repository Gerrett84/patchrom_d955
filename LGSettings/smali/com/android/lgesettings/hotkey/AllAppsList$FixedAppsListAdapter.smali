.class Lcom/android/lgesettings/hotkey/AllAppsList$FixedAppsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/hotkey/AllAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FixedAppsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/lgesettings/hotkey/AllAppsList;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/hotkey/AllAppsList;Landroid/app/Activity;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/lgesettings/hotkey/AllAppsList$FixedAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    .line 328
    const v0, 0x7f04009d

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mFixedApps:Ljava/util/List;
    invoke-static {p1}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$200(Lcom/android/lgesettings/hotkey/AllAppsList;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 329
    iput-object p2, p0, Lcom/android/lgesettings/hotkey/AllAppsList$FixedAppsListAdapter;->context:Landroid/app/Activity;

    .line 330
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 333
    move-object v2, p2

    .line 334
    .local v2, row:Landroid/view/View;
    const/4 v3, 0x0

    .line 336
    .local v3, wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    if-nez v2, :cond_1

    .line 337
    iget-object v4, p0, Lcom/android/lgesettings/hotkey/AllAppsList$FixedAppsListAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 338
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04009d

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 339
    new-instance v3, Lcom/android/lgesettings/hotkey/AppListItemWrapper;

    .end local v3           #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    invoke-direct {v3, v2}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;-><init>(Landroid/view/View;)V

    .line 340
    .restart local v3       #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 345
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    if-nez p1, :cond_0

    .line 346
    invoke-virtual {v3}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->getLabel()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f08097a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 347
    invoke-virtual {v3}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->getIcon()Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0202a1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    :cond_0
    const v4, 0x7f0a0136

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 351
    .local v0, divider:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList$FixedAppsListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_2

    .line 352
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    :goto_1
    return-object v2

    .line 342
    .end local v0           #divider:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    check-cast v3, Lcom/android/lgesettings/hotkey/AppListItemWrapper;

    .restart local v3       #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    goto :goto_0

    .line 354
    .restart local v0       #divider:Landroid/widget/ImageView;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
