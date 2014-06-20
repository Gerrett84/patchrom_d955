.class public Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;
.super Ljava/lang/Object;
.source "LGEIccUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/LGEIccUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSPType"
.end annotation


# instance fields
.field public CodeScheme:B

.field public DestAddr:[B

.field public ParamIndicator:B

.field public ProtoclID:B

.field public SVCCenterAddr:[B

.field public ValidPeriod:B

.field public alphaID:[B

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/LGEIccUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/LGEIccUtils;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 360
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->this$0:Lcom/android/internal/telephony/uicc/LGEIccUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 362
    .local v0, InitData:[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 364
    iput-byte v2, p0, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ParamIndicator:B

    .line 365
    invoke-static {v0, v3, v4}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->subarray([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->DestAddr:[B

    .line 366
    invoke-static {v0, v3, v4}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->subarray([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    .line 367
    iput-byte v2, p0, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ProtoclID:B

    .line 368
    iput-byte v2, p0, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->CodeScheme:B

    .line 369
    iput-byte v2, p0, Lcom/android/internal/telephony/uicc/LGEIccUtils$SMSPType;->ValidPeriod:B

    .line 370
    return-void
.end method
