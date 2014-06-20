.class Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$6;
.super Landroid/database/ContentObserver;
.source "NextiKeyguardSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .parameter "selfChange"

    .prologue
    .line 818
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 829
    const/4 v6, 0x0

    .line 830
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 832
    .local v8, missedcount:I
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 833
    .local v9, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 834
    const-string v0, " AND new=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$1500()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 839
    if-eqz v6, :cond_0

    .line 840
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 843
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 845
    if-ltz v8, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->setMissedCallCount(I)V
    invoke-static {v0, v8}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$600(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :cond_0
    if-eqz v6, :cond_1

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 860
    .end local v9           #where:Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v7

    .line 851
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSelectorView.ContentObserver.onChange(): ContentObserver Exception Occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    if-eqz v6, :cond_1

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 855
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
