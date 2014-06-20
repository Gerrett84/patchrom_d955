.class public interface abstract Lcom/android/internal/telephony/ImsCallInfo;
.super Ljava/lang/Object;
.source "ImsCallInfo.java"


# static fields
.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3


# virtual methods
.method public abstract getConnectedName()Ljava/lang/String;
.end method

.method public abstract getConnectedNumber()Ljava/lang/String;
.end method

.method public abstract getConnectedNumberPresentation()I
.end method
