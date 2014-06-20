.class Landroid/telephony/PhoneNumberUtils$SpecialNumbers;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialNumbers"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field public resIDOfNums:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "number"
    .parameter "resIDOfNums"

    .prologue
    .line 3889
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3890
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbers;->number:Ljava/lang/String;

    .line 3891
    iput p2, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbers;->resIDOfNums:I

    .line 3892
    return-void
.end method
