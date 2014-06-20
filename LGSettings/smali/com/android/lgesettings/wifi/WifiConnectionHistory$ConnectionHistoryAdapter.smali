.class Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiConnectionHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiConnectionHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionHistoryAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;

.field private mWifiConnectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/wifi/WifiConnectionHistory;Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;)V
    .locals 1
    .parameter
    .parameter "state"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mActive:Ljava/util/ArrayList;

    .line 164
    iput-object p2, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mState:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;

    .line 165
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mWifiConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mWifiConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->notifyDataSetChanged()V

    .line 204
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->updateOptionsMenu()V

    .line 205
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mWifiConnectionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mWifiConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 188
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mWifiConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mWifiConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 195
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSecurityString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "security"

    .prologue
    const v4, 0x7f0802db

    .line 278
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 280
    .local v0, context:Landroid/content/Context;
    if-nez p1, :cond_0

    .line 281
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    :goto_0
    return-object v2

    .line 282
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 285
    :cond_1
    const v2, 0x7f0802d3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, securityStrFormat:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 211
    const-string v5, "WifiConnectionHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConnectionHistoryAdapter.getView: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-nez p2, :cond_0

    .line 219
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    #getter for: Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->access$100(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0401aa

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 223
    new-instance v4, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;

    invoke-direct {v4}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;-><init>()V

    .line 224
    .local v4, holder:Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;
    const v5, 0x7f0a0104

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;->mSsid:Landroid/widget/TextView;

    .line 225
    const v5, 0x7f0a03d9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;->mFirst_item:Landroid/widget/TextView;

    .line 226
    const v5, 0x7f0a03da

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;->mSecond_item:Landroid/widget/TextView;

    .line 227
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mWifiConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;

    .line 236
    .local v0, ConnectionInfo:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;
    monitor-enter v0

    .line 237
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v1, WifiConnectionInfoFirst:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .local v2, WifiConnectionInfoSecond:Ljava/lang/StringBuilder;
    :try_start_1
    iput-object v0, v4, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;->ConnectionInfo:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;

    .line 242
    iget-object v5, v4, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;->mSsid:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const-string v5, "["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v5, v0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v5, "] "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget v5, v0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->ErrorType:I

    packed-switch v5, :pswitch_data_0

    .line 260
    :goto_1
    iget-object v5, v4, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;->mFirst_item:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v5, v0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->KeyType:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->getSecurityString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v5, " / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v5, v0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v5, v4, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;->mSecond_item:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 273
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    return-object p2

    .line 231
    .end local v0           #ConnectionInfo:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;
    .end local v1           #WifiConnectionInfoFirst:Ljava/lang/StringBuilder;
    .end local v2           #WifiConnectionInfoSecond:Ljava/lang/StringBuilder;
    .end local v4           #holder:Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;

    .restart local v4       #holder:Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;
    goto :goto_0

    .line 250
    .restart local v0       #ConnectionInfo:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;
    .restart local v1       #WifiConnectionInfoFirst:Ljava/lang/StringBuilder;
    .restart local v2       #WifiConnectionInfoSecond:Ljava/lang/StringBuilder;
    :pswitch_0
    :try_start_3
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    #getter for: Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->access$200(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0802ce

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 267
    :catch_0
    move-exception v3

    .line 268
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 270
    .end local v1           #WifiConnectionInfoFirst:Ljava/lang/StringBuilder;
    .end local v2           #WifiConnectionInfoSecond:Ljava/lang/StringBuilder;
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 253
    .restart local v1       #WifiConnectionInfoFirst:Ljava/lang/StringBuilder;
    .restart local v2       #WifiConnectionInfoSecond:Ljava/lang/StringBuilder;
    :pswitch_1
    :try_start_5
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    #getter for: Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->access$200(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0802cd

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 256
    :pswitch_2
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    #getter for: Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->access$200(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0802cf

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    #calls: Lcom/android/lgesettings/wifi/WifiConnectionHistory;->constructWifiConnectionList()Ljava/util/List;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->access$000(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, WifiConnectionList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 174
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    .end local v0           #WifiConnectionList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;>;"
    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->mWifiConnectionList:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->notifyDataSetChanged()V

    .line 176
    return-void
.end method
