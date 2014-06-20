.class Lcom/android/providers/telephony/MakeMmsPreviewService$4;
.super Ljava/lang/Object;
.source "MakeMmsPreviewService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/MakeMmsPreviewService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

.field final synthetic val$ids:[J


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/MakeMmsPreviewService;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$4;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    iput-object p2, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$4;->val$ids:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$4;->val$ids:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 179
    const-string v1, "MakeMmsPreviewService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pushing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$4;->val$ids:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$4;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mStack:Lcom/android/providers/telephony/UniqueValuedStack;
    invoke-static {v1}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$100(Lcom/android/providers/telephony/MakeMmsPreviewService;)Lcom/android/providers/telephony/UniqueValuedStack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$4;->val$ids:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/telephony/UniqueValuedStack;->push(Ljava/lang/Object;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$4;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$000(Lcom/android/providers/telephony/MakeMmsPreviewService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$4;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mProcessNextMessage:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$400(Lcom/android/providers/telephony/MakeMmsPreviewService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method
