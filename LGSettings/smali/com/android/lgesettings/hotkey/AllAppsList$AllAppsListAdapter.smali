.class Lcom/android/lgesettings/hotkey/AllAppsList$AllAppsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/hotkey/AllAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllAppsListAdapter"
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
    .line 463
    iput-object p1, p0, Lcom/android/lgesettings/hotkey/AllAppsList$AllAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    .line 464
    const v0, 0x7f04009d

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;
    invoke-static {p1}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$600(Lcom/android/lgesettings/hotkey/AllAppsList;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 465
    iput-object p2, p0, Lcom/android/lgesettings/hotkey/AllAppsList$AllAppsListAdapter;->context:Landroid/app/Activity;

    .line 466
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 471
    move-object v2, p2

    .line 472
    .local v2, row:Landroid/view/View;
    const/4 v3, 0x0

    .line 474
    .local v3, wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    if-nez v2, :cond_0

    .line 475
    iget-object v4, p0, Lcom/android/lgesettings/hotkey/AllAppsList$AllAppsListAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 477
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04009d

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 478
    new-instance v3, Lcom/android/lgesettings/hotkey/AppListItemWrapper;

    .end local v3           #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    invoke-direct {v3, v2}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;-><init>(Landroid/view/View;)V

    .line 479
    .restart local v3       #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 484
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/hotkey/AllAppsList$AllAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;
    invoke-static {v4}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$600(Lcom/android/lgesettings/hotkey/AllAppsList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    .line 485
    .local v0, appInfo:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    invoke-virtual {v3}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->getLabel()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/hotkey/AllAppsList$AllAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$100(Lcom/android/lgesettings/hotkey/AllAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v4, p0, Lcom/android/lgesettings/hotkey/AllAppsList$AllAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    invoke-virtual {v3}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->getIcon()Landroid/widget/ImageView;

    move-result-object v5

    #calls: Lcom/android/lgesettings/hotkey/AllAppsList;->setAppIcon(Landroid/widget/ImageView;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)V
    invoke-static {v4, v5, v0}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$400(Lcom/android/lgesettings/hotkey/AllAppsList;Landroid/widget/ImageView;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)V

    .line 488
    return-object v2

    .line 481
    .end local v0           #appInfo:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    check-cast v3, Lcom/android/lgesettings/hotkey/AppListItemWrapper;

    .restart local v3       #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    goto :goto_0
.end method
