.class public Lcom/kddi/android/CpaManager$Settings;
.super Ljava/lang/Object;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/CpaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field public static final AUTH_TYPE_CHAP:I = 0x3

.field public static final AUTH_TYPE_NONE:I = 0x1

.field public static final AUTH_TYPE_PAP:I = 0x2

.field public static final AUTH_TYPE_PAP_CHAP:I = 0x4


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public dns1:Ljava/lang/String;

.field public dns2:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public proxyHost:Ljava/lang/String;

.field public proxyPort:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object v1, p0, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    .line 325
    iput-object v1, p0, Lcom/kddi/android/CpaManager$Settings;->userId:Ljava/lang/String;

    .line 326
    iput-object v1, p0, Lcom/kddi/android/CpaManager$Settings;->password:Ljava/lang/String;

    .line 327
    const/4 v0, 0x1

    iput v0, p0, Lcom/kddi/android/CpaManager$Settings;->authType:I

    .line 328
    iput-object v1, p0, Lcom/kddi/android/CpaManager$Settings;->dns1:Ljava/lang/String;

    .line 329
    iput-object v1, p0, Lcom/kddi/android/CpaManager$Settings;->dns2:Ljava/lang/String;

    .line 330
    iput-object v1, p0, Lcom/kddi/android/CpaManager$Settings;->proxyHost:Ljava/lang/String;

    .line 331
    iput-object v1, p0, Lcom/kddi/android/CpaManager$Settings;->proxyPort:Ljava/lang/String;

    return-void
.end method
