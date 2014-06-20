.class Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;
.super Ljava/lang/Object;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsFailInfo"
.end annotation


# instance fields
.field errorCode:I

.field hostName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/LGDataRecovery;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGDataRecovery;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "errorCode"

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;->hostName:Ljava/lang/String;

    .line 829
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;->errorCode:I

    .line 833
    iput-object p2, p0, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;->hostName:Ljava/lang/String;

    .line 834
    iput p3, p0, Lcom/android/internal/telephony/LGDataRecovery$DnsFailInfo;->errorCode:I

    .line 835
    return-void
.end method
