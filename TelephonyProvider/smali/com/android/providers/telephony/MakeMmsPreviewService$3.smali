.class Lcom/android/providers/telephony/MakeMmsPreviewService$3;
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

.field final synthetic val$id:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/MakeMmsPreviewService;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$3;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    iput-object p2, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$3;->val$id:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    const-string v0, "MakeMmsPreviewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pushing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$3;->val$id:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$3;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mStack:Lcom/android/providers/telephony/UniqueValuedStack;
    invoke-static {v0}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$100(Lcom/android/providers/telephony/MakeMmsPreviewService;)Lcom/android/providers/telephony/UniqueValuedStack;

    move-result-object v1

    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$3;->val$id:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/android/providers/telephony/UniqueValuedStack;->push(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$3;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$000(Lcom/android/providers/telephony/MakeMmsPreviewService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$3;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mProcessNextMessage:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$400(Lcom/android/providers/telephony/MakeMmsPreviewService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method
