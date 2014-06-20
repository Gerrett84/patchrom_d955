.class Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;
.super Ljava/lang/Thread;
.source "CdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KddiCdmaInfoRec"
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "KddiCdmaInfoRec"


# instance fields
.field private r:Landroid/os/AsyncResult;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter
    .parameter "rusult"

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 1611
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1612
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->r:Landroid/os/AsyncResult;

    .line 1613
    return-void
.end method

.method private handleCdmaInfoRecForOffhook(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaInformationRecords;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v6, 0x1

    .line 1733
    if-nez p1, :cond_1

    .line 1761
    :cond_0
    return-void

    .line 1737
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 1738
    .local v2, infoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v3, :cond_2

    .line 1739
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    #calls: Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1741
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1743
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v0, :cond_0

    .line 1745
    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCdmaInfoRecReceivedKddi:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isNotifyRingingConnectionKddi:Z

    if-nez v3, :cond_0

    .line 1750
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->handleClirInfoRecKddi(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;Lcom/android/internal/telephony/cdma/CdmaConnection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1751
    iput-boolean v6, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCdmaInfoRecReceivedKddi:Z

    .line 1752
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClirInfoRecKddi() end isCdmaInfoRecReceivedKddi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCdmaInfoRecReceivedKddi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #calls: Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    .line 1757
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cwKddi:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #calls: Lcom/android/internal/telephony/cdma/CdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1758
    iput-boolean v6, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isNotifyRingingConnectionKddi:Z

    goto :goto_0
.end method

.method private handleCdmaInfoRecForRinging(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaInformationRecords;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v6, 0x1

    .line 1680
    if-nez p1, :cond_1

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1684
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1686
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v0, :cond_0

    .line 1689
    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCdmaInfoRecReceivedKddi:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isNotifyRingingConnectionKddi:Z

    if-nez v3, :cond_0

    .line 1696
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .line 1697
    .local v2, infoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    if-eqz v3, :cond_3

    .line 1698
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->handleNumberInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;Lcom/android/internal/telephony/cdma/CdmaConnection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1699
    iput-boolean v6, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCdmaInfoRecReceivedKddi:Z

    .line 1700
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNumberInfoRec() end isCdmaInfoRecReceivedKddi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCdmaInfoRecReceivedKddi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1702
    :cond_3
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    if-eqz v3, :cond_4

    .line 1703
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->handleClirInfoRecKddi(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;Lcom/android/internal/telephony/cdma/CdmaConnection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1704
    iput-boolean v6, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCdmaInfoRecReceivedKddi:Z

    .line 1705
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClirInfoRecKddi() end isCdmaInfoRecReceivedKddi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCdmaInfoRecReceivedKddi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1710
    :cond_4
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!!!!!!!! error infoRec.record= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1714
    .end local v2           #infoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_6

    .line 1715
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #calls: Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$000(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    goto/16 :goto_0

    .line 1716
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    .line 1717
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    #calls: Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    .line 1719
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cwKddi:Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    #calls: Lcom/android/internal/telephony/cdma/CdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1720
    iput-boolean v6, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isNotifyRingingConnectionKddi:Z

    goto/16 :goto_0
.end method

.method private handleClirInfoRecKddi(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;Lcom/android/internal/telephony/cdma/CdmaConnection;)Z
    .locals 3
    .parameter "clirInfoRec"
    .parameter "connection"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1796
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return v0

    .line 1800
    :cond_1
    iget-boolean v2, p2, Lcom/android/internal/telephony/cdma/CdmaConnection;->isNumberInfoReceivedKddi:Z

    if-eqz v2, :cond_2

    iget v2, p2, Lcom/android/internal/telephony/cdma/CdmaConnection;->presentationIndicatorsKddi:I

    if-ne v2, v1, :cond_3

    .line 1803
    :cond_2
    iget-byte v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;->cause:B

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1805
    :pswitch_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v0, p2, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    :cond_3
    :goto_1
    move v0, v1

    .line 1826
    goto :goto_0

    .line 1809
    :pswitch_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    iput v0, p2, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    goto :goto_1

    .line 1814
    :pswitch_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    iput v0, p2, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    goto :goto_1

    .line 1818
    :pswitch_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    iput v0, p2, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    goto :goto_1

    .line 1803
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleNumberInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;Lcom/android/internal/telephony/cdma/CdmaConnection;)Z
    .locals 4
    .parameter "numberInfoRec"
    .parameter "connection"

    .prologue
    const/4 v1, 0x1

    .line 1769
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1770
    :cond_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNumberInfoRec return numberInfoRec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/4 v1, 0x0

    .line 1788
    :goto_0
    return v1

    .line 1774
    :cond_1
    iget-byte v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->pi:B

    iput v2, p2, Lcom/android/internal/telephony/cdma/CdmaConnection;->presentationIndicatorsKddi:I

    .line 1775
    iget-byte v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->pi:B

    if-nez v2, :cond_2

    .line 1776
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;->number:Ljava/lang/String;

    .line 1778
    .local v0, dirtyPhoneNumberKddi:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    .line 1781
    .end local v0           #dirtyPhoneNumberKddi:Ljava/lang/String;
    :cond_2
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v2, p2, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 1783
    iput-boolean v1, p2, Lcom/android/internal/telephony/cdma/CdmaConnection;->isNumberInfoReceivedKddi:Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1618
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->r:Landroid/os/AsyncResult;

    if-nez v6, :cond_1

    .line 1672
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->r:Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1630
    .local v4, listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    const/4 v5, 0x0

    .line 1632
    .local v5, sleep_ms:I
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->isDialingOrAlerting()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1635
    :cond_4
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1636
    add-int/lit8 v5, v5, 0xa

    .line 1640
    :goto_1
    const/16 v6, 0x2710

    if-lt v5, v6, :cond_2

    .line 1641
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "while loop abnormal exit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1625
    .end local v4           #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .end local v5           #sleep_ms:I
    :catch_0
    move-exception v2

    .line 1626
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1637
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v4       #listInfoRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/CdmaInformationRecords;>;"
    .restart local v5       #sleep_ms:I
    :catch_1
    move-exception v2

    .line 1638
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KddiCdmaInfoRec run stopped: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1647
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_5
    const/4 v3, 0x0

    .local v3, iKddi:I
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 1648
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1650
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1651
    .local v1, cnKddi:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v6, :cond_6

    .line 1654
    iget v6, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    if-ltz v6, :cond_8

    .line 1655
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaConnection;

    check-cast v6, Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 1647
    .end local v1           #cnKddi:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1656
    .restart local v1       #cnKddi:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v6, :cond_7

    goto :goto_3

    .line 1664
    .end local v1           #cnKddi:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1665
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->handleCdmaInfoRecForRinging(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1666
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_0

    .line 1667
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker$KddiCdmaInfoRec;->handleCdmaInfoRecForOffhook(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1658
    :catch_2
    move-exception v6

    goto :goto_3
.end method
