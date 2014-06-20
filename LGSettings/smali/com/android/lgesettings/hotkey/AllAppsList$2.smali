.class Lcom/android/lgesettings/hotkey/AllAppsList$2;
.super Ljava/lang/Object;
.source "AllAppsList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/hotkey/AllAppsList;->makeAppListItems()V
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
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/lgesettings/hotkey/AllAppsList;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/hotkey/AllAppsList;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/lgesettings/hotkey/AllAppsList$2;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 227
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList$2;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 230
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eq v0, v1, :cond_1

    .line 231
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 233
    :goto_0
    return v0

    .line 231
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList$2;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/lgesettings/hotkey/AllAppsList$2;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$100(Lcom/android/lgesettings/hotkey/AllAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList$2;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$100(Lcom/android/lgesettings/hotkey/AllAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    check-cast p1, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    .end local p1
    check-cast p2, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/hotkey/AllAppsList$2;->compare(Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)I

    move-result v0

    return v0
.end method
