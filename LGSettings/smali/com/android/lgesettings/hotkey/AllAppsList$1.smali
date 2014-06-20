.class Lcom/android/lgesettings/hotkey/AllAppsList$1;
.super Ljava/lang/Object;
.source "AllAppsList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/hotkey/AllAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/hotkey/AllAppsList;


# virtual methods
.method public compare(Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList$1;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/lgesettings/hotkey/AllAppsList;->getAppLaunchCount(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$000(Lcom/android/lgesettings/hotkey/AllAppsList;Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, launchCount1:I
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList$1;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/lgesettings/hotkey/AllAppsList;->getAppLaunchCount(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$000(Lcom/android/lgesettings/hotkey/AllAppsList;Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, launchCount2:I
    sub-int v2, v1, v0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    check-cast p1, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    .end local p1
    check-cast p2, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/hotkey/AllAppsList$1;->compare(Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)I

    move-result v0

    return v0
.end method
