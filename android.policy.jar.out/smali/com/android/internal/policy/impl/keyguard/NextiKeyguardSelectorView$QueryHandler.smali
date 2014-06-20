.class Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NextiKeyguardSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    .line 599
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 600
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 607
    packed-switch p1, :pswitch_data_0

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 610
    :pswitch_0
    if-eqz p3, :cond_0

    .line 611
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$500()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SecuritySelectorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NextiKeyguardSelectorView.QueryHandler.onQueryComplete(): call log query complete."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    const/4 v0, -0x1

    .line 615
    .local v0, missedcount:I
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 616
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 617
    if-ltz v0, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;

    #calls: Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->setMissedCallCount(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->access$600(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;I)V

    goto :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 625
    return-void
.end method
