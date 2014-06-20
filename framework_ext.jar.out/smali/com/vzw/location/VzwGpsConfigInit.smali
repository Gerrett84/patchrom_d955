.class public Lcom/vzw/location/VzwGpsConfigInit;
.super Ljava/lang/Object;
.source "VzwGpsConfigInit.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsConfigInit;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VzwGpsConfigInit"


# instance fields
.field private isWifi:Z

.field private mApplicationId:J

.field private mApplicationPassword:Ljava/lang/String;

.field private mFullyQualifiedAppName:Ljava/lang/String;

.field private mMpcHost:Ljava/net/InetAddress;

.field public mMpcHostName:Ljava/lang/String;

.field private mMpcPort:I

.field private mSmsPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/vzw/location/VzwGpsConfigInit$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsConfigInit$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsConfigInit;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationId:J

    .line 21
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    .line 23
    iput v3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    .line 24
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mFullyQualifiedAppName:Ljava/lang/String;

    .line 27
    iput-boolean v3, p0, Lcom/vzw/location/VzwGpsConfigInit;->isWifi:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->isWifi:Z

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/vzw/location/VzwGpsConfigInit;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationId:J

    return-void
.end method

.method static synthetic access$1(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vzw/location/VzwGpsConfigInit;Ljava/net/InetAddress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    return-void
.end method

.method static synthetic access$3(Lcom/vzw/location/VzwGpsConfigInit;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return-void
.end method

.method static synthetic access$4(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mFullyQualifiedAppName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mApplicationId=***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mApplicationPassword=***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mMpcHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mMpcPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mSmsPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mFullyQualifiedAppName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mFullyQualifiedAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mMpcHostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public getApplicationId()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationId:J

    return-wide v0
.end method

.method public getApplicationPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getFullyQualifiedAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mFullyQualifiedAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getMpcHost()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMpcPort()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return v0
.end method

.method public getSmsPrefixInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public resetMpc()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    .line 82
    return-void
.end method

.method public setCredentials(JLjava/lang/String;)V
    .locals 1
    .parameter "applicationId"
    .parameter "applicationPassword"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationId:J

    .line 70
    if-nez p3, :cond_0

    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMpc(Ljava/lang/String;I)V
    .locals 3
    .parameter "mpcHost"
    .parameter "mpcPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    if-nez p1, :cond_0

    .line 111
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    .line 127
    :goto_0
    iput p2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    .line 128
    return-void

    .line 114
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostName:Ljava/lang/String;

    .line 115
    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->isWifi:Z

    if-nez v1, :cond_1

    .line 116
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, uhe:Ljava/net/UnknownHostException;
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    goto :goto_0

    .line 119
    .end local v0           #uhe:Ljava/net/UnknownHostException;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMpc(Ljava/net/InetAddress;I)V
    .locals 1
    .parameter "mpcHost"
    .parameter "mpcPort"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    .line 93
    iput p2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostName:Ljava/lang/String;

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMpcHost(Ljava/lang/String;)V
    .locals 3
    .parameter "mpcHost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 152
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    .line 168
    :goto_0
    return-void

    .line 155
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostName:Ljava/lang/String;

    .line 156
    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->isWifi:Z

    if-nez v1, :cond_1

    .line 157
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, uhe:Ljava/net/UnknownHostException;
    iput-object v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    goto :goto_0

    .line 160
    .end local v0           #uhe:Ljava/net/UnknownHostException;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMpcHost(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "mpcHost"

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostName:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public setMpcPort(I)V
    .locals 0
    .parameter "mpcPort"

    .prologue
    .line 175
    iput p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    .line 176
    return-void
.end method

.method public setSmsPrefixInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "smsPrefix"
    .parameter "fullyQualifiedAppName"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mFullyQualifiedAppName:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mApplicationId=***, mApplicationPassword=***, mMpcHostName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMpcPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSmsPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFullyQualifiedAppName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mFullyQualifiedAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 251
    iget-wide v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mApplicationPassword:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    .line 254
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    :goto_0
    iget v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mSmsPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mFullyQualifiedAppName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHostName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 257
    .local v0, arrray:[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
