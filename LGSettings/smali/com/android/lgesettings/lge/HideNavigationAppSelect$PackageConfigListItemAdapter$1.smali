.class Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter$1;
.super Ljava/lang/Object;
.source "HideNavigationAppSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter$1;->this$1:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;

    .line 373
    .local v0, cache:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;
    iget-object v2, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 374
    .local v1, enable:Z
    :goto_0
    iget-object v2, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    :goto_1
    return-void

    .line 373
    .end local v1           #enable:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 377
    .restart local v1       #enable:Z
    :cond_1
    iget-object v2, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 378
    iget-object v2, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter$1;->this$1:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    #getter for: Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$500(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)Landroid/app/IActivityManager;

    move-result-object v2

    if-nez v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter$1;->this$1:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    #setter for: Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2, v3}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$502(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Landroid/app/IActivityManager;)Landroid/app/IActivityManager;

    .line 382
    :cond_2
    if-eqz v1, :cond_3

    .line 383
    iget-object v2, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter$1;->this$1:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    iget-object v3, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->packageName:Ljava/lang/String;

    #calls: Lcom/android/lgesettings/lge/HideNavigationAppSelect;->setHideNavigationApp(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$600(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Ljava/lang/String;)V

    goto :goto_1

    .line 385
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter$1;->this$1:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;

    iget-object v2, v2, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    iget-object v3, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->packageName:Ljava/lang/String;

    #calls: Lcom/android/lgesettings/lge/HideNavigationAppSelect;->deleteHideNavigationApp(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$700(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Ljava/lang/String;)V

    goto :goto_1
.end method
