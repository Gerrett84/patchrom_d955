.class public Lcom/android/internal/telephony/MMdebuger;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MMdebuger$conHistory;,
        Lcom/android/internal/telephony/MMdebuger$PDNLostHistory;,
        Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;
    }
.end annotation


# static fields
.field protected static final DEACTIVE_REQ:I = 0x3

.field protected static final DEACTIVE_RSP:I = 0x4

.field protected static final SETUP_REQ:I = 0x1

.field protected static final SETUP_RSP:I = 0x2


# instance fields
.field public LastConRadioTech:I

.field public LastPDNIPv:I

.field public LastPDNType:I

.field LteEmmErrorcode:I

.field c:Ljava/util/Calendar;

.field public currentAPNId:I

.field public currentRadioTech:I

.field lastfailreasion:[I

.field lastfailreasionOfInternetPND:[I

.field lastfailreasionOnEHRPD:[I

.field lastfailreasionOnLTE:[I

.field private mConHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MMdebuger$conHistory;",
            ">;"
        }
    .end annotation
.end field

.field public mLcurDay:I

.field public mLcurHour:I

.field public mLcurMinute:I

.field public mLcurMonth:I

.field public mLcurSecond:I

.field public mLcurYear:I

.field public mMaxSize:I

.field private mPDNFailHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mPDNFailHistoryOnLTE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;",
            ">;"
        }
    .end annotation
.end field

.field public mcurDay:I

.field public mcurHour:I

.field public mcurMinute:I

.field public mcurMonth:I

.field public mcurSecond:I

.field public mcurYear:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v1, 0x46

    iput v1, p0, Lcom/android/internal/telephony/MMdebuger;->mMaxSize:I

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    .line 160
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasion:[I

    .line 164
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOfInternetPND:[I

    .line 165
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnLTE:[I

    .line 166
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnEHRPD:[I

    .line 168
    iput v2, p0, Lcom/android/internal/telephony/MMdebuger;->LteEmmErrorcode:I

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasion:[I

    aput v2, v1, v0

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOfInternetPND:[I

    aput v2, v1, v0

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnLTE:[I

    aput v2, v1, v0

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnEHRPD:[I

    aput v2, v1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public CleanLastfailReasion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOfInternetPND:[I

    aput v2, v0, v2

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOfInternetPND:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 510
    iput v2, p0, Lcom/android/internal/telephony/MMdebuger;->LteEmmErrorcode:I

    .line 511
    return-void
.end method

.method public SetLteEmmErrorCode(I)V
    .locals 0
    .parameter "ErrorCode"

    .prologue
    .line 378
    iput p1, p0, Lcom/android/internal/telephony/MMdebuger;->LteEmmErrorcode:I

    .line 379
    return-void
.end method

.method public UpdateCurrentTime()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mcurYear:I

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mcurMonth:I

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mcurDay:I

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mcurHour:I

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mcurMinute:I

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mcurSecond:I

    .line 222
    return-void
.end method

.method public UpdateLastCurrentTime()V
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mLcurYear:I

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mLcurMonth:I

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mLcurDay:I

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mLcurHour:I

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mLcurMinute:I

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->c:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mLcurSecond:I

    .line 207
    return-void
.end method

.method public dstoint(Ljava/lang/String;)I
    .locals 2
    .parameter "ds"

    .prologue
    const/4 v0, 0x2

    .line 517
    const-string v1, "fota"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    const/4 v0, 0x1

    .line 531
    :cond_0
    :goto_0
    return v0

    .line 521
    :cond_1
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    const-string v1, "dun"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getConnHistory(I)[I
    .locals 4
    .parameter "itemnum"

    .prologue
    .line 325
    const/16 v2, 0xb

    new-array v1, v2, [I

    .line 327
    .local v1, returnvalue:[I
    iget-object v2, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 328
    const/4 v1, 0x0

    .line 347
    .end local v1           #returnvalue:[I
    :goto_0
    return-object v1

    .line 331
    .restart local v1       #returnvalue:[I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MMdebuger$conHistory;

    .line 333
    .local v0, binfo:Lcom/android/internal/telephony/MMdebuger$conHistory;
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curYear:I

    aput v3, v1, v2

    .line 334
    const/4 v2, 0x1

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curMonth:I

    aput v3, v1, v2

    .line 335
    const/4 v2, 0x2

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curDay:I

    aput v3, v1, v2

    .line 336
    const/4 v2, 0x3

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curHour:I

    aput v3, v1, v2

    .line 337
    const/4 v2, 0x4

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curMinute:I

    aput v3, v1, v2

    .line 338
    const/4 v2, 0x5

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curSecond:I

    aput v3, v1, v2

    .line 340
    const/4 v2, 0x6

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->cmdtype:I

    aput v3, v1, v2

    .line 341
    const/4 v2, 0x7

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->cid:I

    aput v3, v1, v2

    .line 342
    const/16 v2, 0x8

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->serialnum:I

    aput v3, v1, v2

    .line 343
    const/16 v2, 0x9

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->currRadioTech:I

    aput v3, v1, v2

    .line 344
    const/16 v2, 0xa

    iget v3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->APNID:I

    aput v3, v1, v2

    goto :goto_0
.end method

.method public getLastFailreaon()[I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasion:[I

    return-object v0
.end method

.method public getLastFailreaonAtInternetPND()[I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOfInternetPND:[I

    return-object v0
.end method

.method public getLastFailreaonOnEHRPD()[I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnEHRPD:[I

    return-object v0
.end method

.method public getLastFailreaonOnLTE()[I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnLTE:[I

    return-object v0
.end method

.method public getLteEmmErrorcode()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/android/internal/telephony/MMdebuger;->LteEmmErrorcode:I

    return v0
.end method

.method public getTimeoutHistory(I)[I
    .locals 1
    .parameter "itemnum"

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveAPNType(I)V
    .locals 0
    .parameter "apnId"

    .prologue
    .line 232
    iput p1, p0, Lcom/android/internal/telephony/MMdebuger;->currentAPNId:I

    .line 233
    return-void
.end method

.method public saveRspHistory(III)V
    .locals 8
    .parameter "cmdtype"
    .parameter "Serial"
    .parameter "cid"

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMdebuger;->UpdateCurrentTime()V

    .line 293
    new-instance v0, Lcom/android/internal/telephony/MMdebuger$conHistory;

    iget v2, p0, Lcom/android/internal/telephony/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/MMdebuger$conHistory;-><init>(Lcom/android/internal/telephony/MMdebuger;IIIIII)V

    .line 298
    .local v0, binfo:Lcom/android/internal/telephony/MMdebuger$conHistory;
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_1

    .line 300
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->cmdtype:I

    .line 312
    :goto_0
    iput p3, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->cid:I

    .line 313
    iput p2, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->serialnum:I

    .line 314
    iget v1, p0, Lcom/android/internal/telephony/MMdebuger;->currentAPNId:I

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->APNID:I

    .line 315
    iget v1, p0, Lcom/android/internal/telephony/MMdebuger;->currentRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->currRadioTech:I

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    return-void

    .line 302
    :cond_1
    const/16 v1, 0x29

    if-ne p1, v1, :cond_2

    .line 304
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->cmdtype:I

    goto :goto_0

    .line 309
    :cond_2
    const/16 v1, 0x63

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->cmdtype:I

    goto :goto_0
.end method

.method public saveUpHistory(I)V
    .locals 8
    .parameter "Serial"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMdebuger;->UpdateCurrentTime()V

    .line 246
    new-instance v0, Lcom/android/internal/telephony/MMdebuger$conHistory;

    iget v2, p0, Lcom/android/internal/telephony/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/MMdebuger$conHistory;-><init>(Lcom/android/internal/telephony/MMdebuger;IIIIII)V

    .line 248
    .local v0, binfo:Lcom/android/internal/telephony/MMdebuger$conHistory;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->cmdtype:I

    .line 249
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->cid:I

    .line 250
    iput p1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->serialnum:I

    .line 251
    iget v1, p0, Lcom/android/internal/telephony/MMdebuger;->currentAPNId:I

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->APNID:I

    .line 252
    iget v1, p0, Lcom/android/internal/telephony/MMdebuger;->currentRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->currRadioTech:I

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public savecurrenttech(I)V
    .locals 0
    .parameter "newNetworkType"

    .prologue
    .line 227
    iput p1, p0, Lcom/android/internal/telephony/MMdebuger;->currentRadioTech:I

    .line 228
    return-void
.end method

.method public savedownHistory(II)V
    .locals 8
    .parameter "Serial"
    .parameter "cid"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMdebuger;->UpdateCurrentTime()V

    .line 269
    new-instance v0, Lcom/android/internal/telephony/MMdebuger$conHistory;

    iget v2, p0, Lcom/android/internal/telephony/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/MMdebuger$conHistory;-><init>(Lcom/android/internal/telephony/MMdebuger;IIIIII)V

    .line 271
    .local v0, binfo:Lcom/android/internal/telephony/MMdebuger$conHistory;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->cmdtype:I

    .line 272
    iput p2, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->cid:I

    .line 273
    iput p1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->serialnum:I

    .line 274
    iget v1, p0, Lcom/android/internal/telephony/MMdebuger;->currentAPNId:I

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->APNID:I

    .line 275
    iget v1, p0, Lcom/android/internal/telephony/MMdebuger;->currentRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$conHistory;->currRadioTech:I

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mConHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public setFailHistory(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .parameter "ds"
    .parameter "ipv"
    .parameter "currRadioTech"
    .parameter "reason"
    .parameter "reasonNum"
    .parameter "dy"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/MMdebuger;->mMaxSize:I

    if-lt v1, v2, :cond_2

    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMdebuger;->UpdateCurrentTime()V

    .line 423
    new-instance v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;

    iget v2, p0, Lcom/android/internal/telephony/MMdebuger;->mcurYear:I

    iget v3, p0, Lcom/android/internal/telephony/MMdebuger;->mcurMonth:I

    iget v4, p0, Lcom/android/internal/telephony/MMdebuger;->mcurDay:I

    iget v5, p0, Lcom/android/internal/telephony/MMdebuger;->mcurHour:I

    iget v6, p0, Lcom/android/internal/telephony/MMdebuger;->mcurMinute:I

    iget v7, p0, Lcom/android/internal/telephony/MMdebuger;->mcurSecond:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;-><init>(Lcom/android/internal/telephony/MMdebuger;IIIIII)V

    .line 426
    .local v0, binfo:Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;
    if-nez p6, :cond_5

    .line 427
    const/16 v1, 0x63

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    .line 431
    :goto_0
    iget v1, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    packed-switch v1, :pswitch_data_0

    .line 447
    :goto_1
    const-string v1, "IP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 448
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->LastFailPDNIPv:I

    .line 455
    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/MMdebuger;->LastConRadioTech:I

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->RequestRadioTech:I

    .line 456
    iput p3, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->ResponseRadioTech:I

    .line 457
    iput p4, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->reason:I

    .line 459
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const/16 v1, 0xe

    if-ne p3, v1, :cond_8

    .line 464
    iget v1, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    packed-switch v1, :pswitch_data_1

    .line 479
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistoryOnLTE:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_4
    :goto_4
    return-void

    .line 429
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MMdebuger;->dstoint(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    goto :goto_0

    .line 434
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasion:[I

    const/4 v2, 0x0

    aput p4, v1, v2

    goto :goto_1

    .line 437
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasion:[I

    const/4 v2, 0x1

    aput p4, v1, v2

    goto :goto_1

    .line 440
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasion:[I

    const/4 v2, 0x2

    aput p4, v1, v2

    goto :goto_1

    .line 449
    :cond_6
    const-string v1, "IPV6"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 450
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->LastFailPDNIPv:I

    goto :goto_2

    .line 451
    :cond_7
    const-string v1, "IPV4V6"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->LastFailPDNIPv:I

    goto :goto_2

    .line 467
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnLTE:[I

    const/4 v2, 0x0

    aput p4, v1, v2

    goto :goto_3

    .line 470
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnLTE:[I

    const/4 v2, 0x1

    aput p4, v1, v2

    .line 471
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOfInternetPND:[I

    const/4 v2, 0x0

    aput p5, v1, v2

    goto :goto_3

    .line 474
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnLTE:[I

    const/4 v2, 0x2

    aput p4, v1, v2

    goto :goto_3

    .line 482
    :cond_8
    const/16 v1, 0xd

    if-ne p3, v1, :cond_4

    .line 484
    iget v1, v0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->LastFailPDNType:I

    packed-switch v1, :pswitch_data_2

    .line 499
    :goto_5
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->mPDNFailHistoryonEHRPD:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 487
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnEHRPD:[I

    const/4 v2, 0x0

    aput p4, v1, v2

    goto :goto_5

    .line 490
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnEHRPD:[I

    const/4 v2, 0x1

    aput p4, v1, v2

    .line 491
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOfInternetPND:[I

    const/4 v2, 0x1

    aput p5, v1, v2

    goto :goto_5

    .line 494
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/MMdebuger;->lastfailreasionOnEHRPD:[I

    const/4 v2, 0x2

    aput p4, v1, v2

    goto :goto_5

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 464
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 484
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setMaxLogSize(I)V
    .locals 2
    .parameter "maxnum"

    .prologue
    const/16 v1, 0x1f4

    const/16 v0, 0xa

    .line 185
    iput p1, p0, Lcom/android/internal/telephony/MMdebuger;->mMaxSize:I

    .line 187
    if-le p1, v1, :cond_1

    .line 188
    iput v1, p0, Lcom/android/internal/telephony/MMdebuger;->mMaxSize:I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    if-ge p1, v0, :cond_0

    .line 190
    iput v0, p0, Lcom/android/internal/telephony/MMdebuger;->mMaxSize:I

    goto :goto_0
.end method

.method public setTimeoutHistory(IIIII)V
    .locals 0
    .parameter "currRadioTech"
    .parameter "reqRadioTech"
    .parameter "reqSrvState"
    .parameter "CurrSrvState"
    .parameter "apnid"

    .prologue
    .line 355
    return-void
.end method
