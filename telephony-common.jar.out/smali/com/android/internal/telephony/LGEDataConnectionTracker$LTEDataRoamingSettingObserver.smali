.class Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "LGEDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGEDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LTEDataRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGEDataConnectionTracker;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    .line 2374
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2375
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/LGEDataConnectionTracker;->handleLTEDataOnRoamingChange()V
    invoke-static {v0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$400(Lcom/android/internal/telephony/LGEDataConnectionTracker;)V

    .line 2392
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2378
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2379
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "data_lte_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2381
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2384
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2385
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2386
    return-void
.end method
