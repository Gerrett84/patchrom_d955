.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field public final simState:Lcom/android/internal/telephony/IccCardConstants$State;

.field public subscription:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .parameter "state"
    .parameter "sub"

    .prologue
    .line 498
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 500
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->subscription:I

    .line 501
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    .locals 8
    .parameter "intent"

    .prologue
    .line 506
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 507
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 509
    :cond_0
    const-string v5, "subscription"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 510
    .local v4, subscription:I
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SIM_STATE_CHANGED intent received on sub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v5, "ss"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, stateExtra:Ljava/lang/String;
    const-string v5, "ABSENT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 514
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, absentReason:Ljava/lang/String;
    const-string v5, "PERM_DISABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 519
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 549
    .end local v0           #absentReason:Ljava/lang/String;
    .local v2, state:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v5, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-object v5

    .line 521
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v0       #absentReason:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 523
    .end local v0           #absentReason:Ljava/lang/String;
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 524
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 525
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string v5, "LOCKED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 526
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, lockedReason:Ljava/lang/String;
    const-string v5, "PIN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 529
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 530
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v5, "PUK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 531
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 532
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const-string v5, "PERM_DISABLED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 533
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 534
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    const-string v5, "PERSO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 535
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 537
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 539
    .end local v1           #lockedReason:Ljava/lang/String;
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8
    const-string v5, "CARD_IO_ERROR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 540
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 541
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_9
    const-string v5, "LOADED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "IMSI"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 545
    :cond_a
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 547
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_b
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
