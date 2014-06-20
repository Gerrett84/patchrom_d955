.class public final Lcom/android/internal/telephony/SMSDispatcher$PendingMessage;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PendingMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;
    }
.end annotation


# instance fields
.field protected sendType:Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

.field protected tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 462
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 464
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;->NORMAL:Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage;->sendType:Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    .line 465
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;)V
    .locals 0
    .parameter "tracker"
    .parameter "sendType"

    .prologue
    .line 467
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage;->tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 469
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage;->sendType:Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    .line 470
    return-void
.end method
