.class Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;
.super Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;
.source "LgeVoiceProtectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeVoiceProtectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveState"
.end annotation


# instance fields
.field mFDTriggered:Z

.field mIdleDuration:I

.field final synthetic this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 348
    iput-object p1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;-><init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;)V

    .line 350
    iput v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->mIdleDuration:I

    .line 351
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->mFDTriggered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;-><init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)V

    return-void
.end method

.method private triggerDormant()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 355
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->isUMTS()Z

    move-result v4

    if-nez v4, :cond_0

    .line 356
    iget-object v3, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v4, "triggerDormant(): skip triggering since the attached network is non-3G"

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 373
    :goto_0
    return v2

    .line 360
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    #getter for: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilHookObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$700(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    #getter for: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilGoDormantFunc:Ljava/lang/reflect/Method;
    invoke-static {v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$800(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_2

    .line 361
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v4, "triggerDormant(): skip triggering since mQcRilHookObject or mQcRilGoDormantFunc is null"

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v4, "triggerDormant() using qcRilGoDormant with GO_DORMANT_INTERFACE_ALL"

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    #getter for: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilGoDormantFunc:Ljava/lang/reflect/Method;
    invoke-static {v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$800(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    #getter for: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilHookObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$700(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 369
    .local v1, ret:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 370
    .end local v1           #ret:Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "triggerDormant(): Failed to call qcRilGoDormant() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$900(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    move v2, v3

    .line 373
    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v2, "Enter to Active State"

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->isVpAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    #getter for: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIdleState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;
    invoke-static {v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$1000(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$1100(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/util/IState;)V

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    #getter for: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I
    invoke-static {v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$1200(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->triggerDormant()Z

    .line 393
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v2, "Add Reject Target rule to vp_OUTPUT Chain."

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mNetManageService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mNetManageService:Landroid/os/INetworkManagementService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setVoiceProtectionEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_2
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service.dropPacket exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$900(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    #getter for: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIdleState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;
    invoke-static {v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$1000(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$1300(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v2, "Add Reject Target rule from vp_OUTPUT Chain."

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mNetManageService:Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v1, v1, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mNetManageService:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setVoiceProtectionEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v2, "Exit from Active State"

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 415
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service.dropPacket exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$900(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    #getter for: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIdleState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;
    invoke-static {v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$1000(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$1400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 422
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 430
    invoke-super {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;->processMessage(Landroid/os/Message;)Z

    .line 435
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 425
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    const-string v1, "Go dormant response received"

    #calls: Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->access$300(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;->this$0:Lcom/android/internal/telephony/LgeVoiceProtectionManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->onGoDormantReponse(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x25cec
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    const-string v0, "[Active] "

    return-object v0
.end method
