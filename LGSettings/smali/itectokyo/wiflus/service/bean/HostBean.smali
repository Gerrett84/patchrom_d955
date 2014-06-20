.class public Litectokyo/wiflus/service/bean/HostBean;
.super Ljava/lang/Object;
.source "HostBean.java"


# instance fields
.field private appId:I

.field private connection:I

.field private groupOwner:Z

.field private mac:Ljava/lang/String;

.field private profileName:Ljava/lang/String;

.field private reqConectMac:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private thumbPath:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAppId(I)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 27
    iput p1, p0, Litectokyo/wiflus/service/bean/HostBean;->appId:I

    .line 28
    return-void
.end method

.method public setConnection(I)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 108
    iput p1, p0, Litectokyo/wiflus/service/bean/HostBean;->connection:I

    .line 109
    return-void
.end method

.method public setGroupOwner(Z)V
    .locals 0
    .parameter "groupOwner"

    .prologue
    .line 92
    iput-boolean p1, p0, Litectokyo/wiflus/service/bean/HostBean;->groupOwner:Z

    .line 93
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .parameter "mac"

    .prologue
    .line 59
    iput-object p1, p0, Litectokyo/wiflus/service/bean/HostBean;->mac:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 0
    .parameter "profileName"

    .prologue
    .line 124
    iput-object p1, p0, Litectokyo/wiflus/service/bean/HostBean;->profileName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setRequestConnectMac(Ljava/lang/String;)V
    .locals 0
    .parameter "mac"

    .prologue
    .line 75
    iput-object p1, p0, Litectokyo/wiflus/service/bean/HostBean;->reqConectMac:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 156
    iput-object p1, p0, Litectokyo/wiflus/service/bean/HostBean;->status:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbPath"

    .prologue
    .line 140
    iput-object p1, p0, Litectokyo/wiflus/service/bean/HostBean;->thumbPath:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 43
    iput-object p1, p0, Litectokyo/wiflus/service/bean/HostBean;->uid:Ljava/lang/String;

    .line 44
    return-void
.end method
