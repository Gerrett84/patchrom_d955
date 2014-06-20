.class public Landroid/telephony/TelephonyManager$AkaResponse;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AkaResponse"
.end annotation


# instance fields
.field public Ck:[B

.field public Ik:[B

.field public auts:[B

.field public kc:[B

.field public res:[B

.field final synthetic this$0:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter "bundle"

    .prologue
    .line 1807
    iput-object p1, p0, Landroid/telephony/TelephonyManager$AkaResponse;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1808
    const-string/jumbo v0, "res"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$AkaResponse;->res:[B

    .line 1809
    const-string v0, "Ck"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$AkaResponse;->Ck:[B

    .line 1810
    const-string v0, "Ik"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$AkaResponse;->Ik:[B

    .line 1811
    const-string/jumbo v0, "kc"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$AkaResponse;->kc:[B

    .line 1812
    const-string v0, "auts"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$AkaResponse;->auts:[B

    .line 1813
    return-void
.end method
