.class Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
.super Landroid/content/pm/ResolveInfo;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/hotkey/AllAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveInfoEx"
.end annotation


# instance fields
.field private pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/hotkey/AllAppsList;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/hotkey/AllAppsList;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .parameter
    .parameter "resolveinfo"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    .line 534
    invoke-direct {p0, p2}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->pkgName:Ljava/lang/String;

    .line 535
    return-void
.end method


# virtual methods
.method public getPKGName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->pkgName:Ljava/lang/String;

    .line 551
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method

.method public setPKGName(Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"

    .prologue
    .line 538
    if-eqz p1, :cond_0

    .line 539
    iput-object p1, p0, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->pkgName:Ljava/lang/String;

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->pkgName:Ljava/lang/String;

    goto :goto_0
.end method
