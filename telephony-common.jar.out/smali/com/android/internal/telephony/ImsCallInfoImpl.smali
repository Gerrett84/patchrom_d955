.class public Lcom/android/internal/telephony/ImsCallInfoImpl;
.super Ljava/lang/Object;
.source "ImsCallInfoImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/ImsCallInfo;


# instance fields
.field private mConnectedName:Ljava/lang/String;

.field private mConnectedNumber:Ljava/lang/String;

.field private mConnectedNumberPresentation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumber:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    .line 25
    iput-object v1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConnectedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedNumberPresentation()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    return v0
.end method

.method public setConnectedName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setConnectedNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumber:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setConnectedNumberPresentation(I)V
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x3

    .line 44
    packed-switch p1, :pswitch_data_0

    .line 55
    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    .line 58
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    goto :goto_0

    .line 49
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    goto :goto_0

    .line 52
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/ImsCallInfoImpl;->mConnectedNumberPresentation:I

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
