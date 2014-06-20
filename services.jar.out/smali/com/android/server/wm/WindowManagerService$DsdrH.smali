.class final Lcom/android/server/wm/WindowManagerService$DsdrH;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DsdrH"
.end annotation


# static fields
.field public static final REPORT_DUAL_SCREEN_STATUS_CHANGE:I = 0x1

.field public static final STOP_EXTERNAL_APP:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 8772
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8777
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 8852
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 8780
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDsdrUtil:Lcom/android/server/wm/WindowManagerService$DsdrUtil;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$DsdrUtil;->destroyExternalApp()V

    goto :goto_0

    .line 8785
    :pswitch_2
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSDR][WMS.java]handleMessage() : REPORT_DUAL_SCREEN_STATUS_CHANGE, mDualScreenStatus == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8786
    iget v2, p1, Landroid/os/Message;->arg2:I

    packed-switch v2, :pswitch_data_1

    .line 8829
    :goto_1
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v2, :cond_3

    .line 8831
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.LG_DUAL_SCREEN_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8832
    .local v1, notifyIntent:Landroid/content/Intent;
    const-string v2, "Enable"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8833
    const-string v2, "Status"

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8834
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSDR][WMS.java]handleMessage() : sending broadcast - mDualScreenActivated == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDualScreenStatus == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8835
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8838
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v7, :cond_0

    .line 8839
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mDsdpHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 8842
    .end local v1           #notifyIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 8843
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 8788
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v2, Lcom/android/server/wm/WindowManagerService;->mDualScreenConnected:Z

    goto :goto_1

    .line 8795
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v2, Lcom/android/server/wm/WindowManagerService;->mDualScreenActivated:Z

    goto :goto_1

    .line 8799
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v2, Lcom/android/server/wm/WindowManagerService;->mDualScreenVisible:Z

    goto :goto_1

    .line 8803
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowManagerService;->mDualScreenVisible:Z

    .line 8804
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x6

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyDsdrStatus(ZI)I
    invoke-static {v2, v5, v3}, Lcom/android/server/wm/WindowManagerService;->access$300(Lcom/android/server/wm/WindowManagerService;ZI)I

    .line 8805
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x7

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyDsdrStatus(ZI)I
    invoke-static {v2, v5, v3}, Lcom/android/server/wm/WindowManagerService;->access$300(Lcom/android/server/wm/WindowManagerService;ZI)I

    goto/16 :goto_1

    .line 8812
    :pswitch_8
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowManagerService;->mDualScreenActivated:Z

    .line 8813
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowManagerService;->mDualScreenVisible:Z

    goto/16 :goto_1

    .line 8817
    :pswitch_9
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowManagerService;->mDualScreenConnected:Z

    .line 8818
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSDR][WMS.java]handleMessage() : DUAL_SCREEN_STATUS_DISCONNECTED - mDualScreenVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mDualScreenVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8819
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDualScreenVisible:Z

    if-eqz v2, :cond_2

    .line 8820
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyDsdrStatus(ZI)I
    invoke-static {v2, v6, v7}, Lcom/android/server/wm/WindowManagerService;->access$300(Lcom/android/server/wm/WindowManagerService;ZI)I

    .line 8822
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowManagerService;->mDualScreenActivated:Z

    .line 8823
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowManagerService;->mDualScreenVisible:Z

    goto/16 :goto_1

    .line 8846
    :cond_3
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSDR][WMS.java]handleMessage() : context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSystemBooted =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$DsdrH;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 8786
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
