.class Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 120
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mTempString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mTempString:Ljava/lang/String;

    const-string v1, "112"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mTempString:Ljava/lang/String;

    const-string v1, "911"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mTempString:Ljava/lang/String;

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mTempString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->makeEmergencyCall(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mTempString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mTempString:Ljava/lang/String;

    const-string v1, "112"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mTempString:Ljava/lang/String;

    const-string v1, "911"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mTempString:Ljava/lang/String;

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mTempString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->makeEmergencyCall(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_3
    const-string v0, "EmergencyButton"

    const-string v1, "  ---do nothing--- data enteerd in not 112 , 000, 911 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
