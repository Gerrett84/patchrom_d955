.class public Landroid/net/LinkProperties;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkProperties$CompareResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDnses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDomainName:Ljava/lang/String;

.field private mHttpProxy:Landroid/net/ProxyProperties;

.field mIfaceName:Ljava/lang/String;

.field private mLinkAddresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mRoutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 409
    new-instance v0, Landroid/net/LinkProperties$1;

    invoke-direct {v0}, Landroid/net/LinkProperties$1;-><init>()V

    sput-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    .line 77
    invoke-virtual {p0}, Landroid/net/LinkProperties;->clear()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkProperties;)V
    .locals 6
    .parameter "source"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    .line 82
    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .local v2, l:Landroid/net/LinkAddress;
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v2           #l:Landroid/net/LinkAddress;
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, i:Ljava/net/InetAddress;
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    .end local v0           #i:Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .local v3, r:Landroid/net/RouteInfo;
    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    .end local v3           #r:Landroid/net/RouteInfo;
    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :goto_3
    iput-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 89
    iget-object v4, p1, Landroid/net/LinkProperties;->mDomainName:Ljava/lang/String;

    iput-object v4, p0, Landroid/net/LinkProperties;->mDomainName:Ljava/lang/String;

    .line 91
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    return-void

    .line 87
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    goto :goto_3
.end method


# virtual methods
.method public addDns(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "dns"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    return-void
.end method

.method public addLinkAddress(Landroid/net/LinkAddress;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    return-void
.end method

.method public addRoute(Landroid/net/RouteInfo;)V
    .locals 1
    .parameter "route"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iput-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 149
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 150
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 151
    iput-object v1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 152
    iput-object v1, p0, Landroid/net/LinkProperties;->mDomainName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 5
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 288
    .local v2, result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    .line 289
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 290
    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 292
    .local v1, newAddress:Landroid/net/LinkAddress;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 293
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newAddress:Landroid/net/LinkAddress;
    :cond_1
    return-object v2
.end method

.method public compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 5
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 319
    .local v2, result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    .line 320
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 321
    if-eqz p1, :cond_1

    .line 322
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 323
    .local v1, newAddress:Ljava/net/InetAddress;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 324
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newAddress:Ljava/net/InetAddress;
    :cond_1
    return-object v2
.end method

.method public compareRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 5
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 349
    .local v2, result:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    .line 350
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 351
    if-eqz p1, :cond_1

    .line 352
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 353
    .local v1, r:Landroid/net/RouteInfo;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 354
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/RouteInfo;
    :cond_1
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    if-ne p0, p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 259
    :cond_1
    instance-of v3, p1, Landroid/net/LinkProperties;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 261
    check-cast v0, Landroid/net/LinkProperties;

    .line 263
    .local v0, target:Landroid/net/LinkProperties;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAddresses()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 104
    .local v2, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    .end local v2           #linkAddress:Landroid/net/LinkAddress;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method public getDnses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpProxy()Landroid/net/ProxyProperties;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkAddresses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRoutes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 369
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x29

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public isIdenticalAddresses(Landroid/net/LinkProperties;)Z
    .locals 4
    .parameter "target"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 201
    .local v1, targetAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v0

    .line 202
    .local v0, sourceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isIdenticalDnses(Landroid/net/LinkProperties;)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    .line 214
    .local v0, targetDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isIdenticalRoutes(Landroid/net/LinkProperties;)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    .line 226
    .local v0, targetRoutes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIpv4Connected()Z
    .locals 6

    .prologue
    .line 448
    const/4 v4, 0x0

    .line 449
    .local v4, ret:Z
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 451
    .local v1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 452
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 453
    check-cast v3, Ljava/net/Inet4Address;

    .line 454
    .local v3, i4addr:Ljava/net/Inet4Address;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 456
    const/4 v4, 0x1

    .line 461
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v3           #i4addr:Ljava/net/Inet4Address;
    :cond_1
    return v4
.end method

.method public isIpv6Connected()Z
    .locals 6

    .prologue
    .line 465
    const/4 v4, 0x0

    .line 466
    .local v4, ret:Z
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 468
    .local v1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 469
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet6Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 470
    check-cast v3, Ljava/net/Inet6Address;

    .line 471
    .local v3, i6addr:Ljava/net/Inet6Address;
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 473
    const/4 v4, 0x1

    .line 478
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v3           #i6addr:Ljava/net/Inet6Address;
    :cond_1
    return v4
.end method

.method public setDomainName(Ljava/lang/String;)V
    .locals 0
    .parameter "domainName"

    .prologue
    .line 140
    iput-object p1, p0, Landroid/net/LinkProperties;->mDomainName:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setHttpProxy(Landroid/net/ProxyProperties;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 133
    iput-object p1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 134
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 94
    iput-object p1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 165
    iget-object v8, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-nez v8, :cond_0

    const-string v3, ""

    .line 167
    .local v3, ifaceName:Ljava/lang/String;
    :goto_0
    const-string v4, "LinkAddresses: ["

    .line 168
    .local v4, linkAddresses:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .local v0, addr:Landroid/net/LinkAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 165
    .end local v0           #addr:Landroid/net/LinkAddress;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ifaceName:Ljava/lang/String;
    .end local v4           #linkAddresses:Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InterfaceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 169
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #ifaceName:Ljava/lang/String;
    .restart local v4       #linkAddresses:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    const-string v1, "DnsAddresses: ["

    .line 172
    .local v1, dns:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, addr:Ljava/net/InetAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 173
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v7, "Routes: ["

    .line 176
    .local v7, routes:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .local v6, route:Landroid/net/RouteInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 177
    .end local v6           #route:Landroid/net/RouteInfo;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 178
    iget-object v8, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-nez v8, :cond_4

    const-string v5, ""

    .line 180
    .local v5, proxy:Ljava/lang/String;
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 178
    .end local v5           #proxy:Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HttpProxy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v9}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 384
    .local v2, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 387
    .end local v2           #linkAddress:Landroid/net/LinkAddress;
    :cond_0
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 389
    .local v0, d:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 392
    .end local v0           #d:Ljava/net/InetAddress;
    :cond_1
    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-object v4, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 394
    .local v3, route:Landroid/net/RouteInfo;
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_2

    .line 397
    .end local v3           #route:Landroid/net/RouteInfo;
    :cond_2
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-eqz v4, :cond_3

    .line 398
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 399
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 403
    :goto_3
    return-void

    .line 401
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3
.end method
