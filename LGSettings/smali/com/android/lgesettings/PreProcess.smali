.class public Lcom/android/lgesettings/PreProcess;
.super Ljava/lang/Object;
.source "PreProcess.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static encryptionInfoPaths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    const-string v0, "PreProcess"

    sput-object v0, Lcom/android/lgesettings/PreProcess;->TAG:Ljava/lang/String;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/mnt/sdcard/.ecryptfs/.sdinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/mnt/external_sd/.ecryptfs/.sdinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/mnt/_ExternalSD/.ecryptfs/.sdinfo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/PreProcess;->encryptionInfoPaths:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private delEncryptionInfo()V
    .locals 5

    .prologue
    .line 19
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/lgesettings/PreProcess;->encryptionInfoPaths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 20
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/lgesettings/PreProcess;->encryptionInfoPaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 22
    :cond_0
    sget-object v2, Lcom/android/lgesettings/PreProcess;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/lgesettings/PreProcess;->encryptionInfoPaths:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    .end local v0           #file:Ljava/io/File;
    :cond_1
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/android/lgesettings/PreProcess;->TAG:Ljava/lang/String;

    const-string v1, "START PreProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-direct {p0}, Lcom/android/lgesettings/PreProcess;->delEncryptionInfo()V

    .line 16
    return-void
.end method
