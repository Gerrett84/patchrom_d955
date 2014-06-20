.class public Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;
.super Ljava/lang/Object;
.source "WifiConnectionHistory.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiConnectionHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiConnectionInfo"
.end annotation


# instance fields
.field public BSSID:Ljava/lang/String;

.field public DateInfo:Ljava/lang/String;

.field public ErrorType:I

.field public KeyType:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/wifi/WifiConnectionHistory;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 679
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 680
    const-string v6, "\t"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, tokens:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x5

    if-lt v6, v7, :cond_6

    .line 685
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 686
    .local v4, token:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, nameValue:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 689
    const-string v6, "WifiConnectionHistory"

    const-string v7, "WifiConnectionInfo(nameValue) length is ERROR!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    :cond_1
    const-string v6, "ssid"

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 694
    aget-object v6, v3, v9

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 699
    :cond_2
    const-string v6, "date_info"

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 700
    aget-object v6, v3, v9

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    goto :goto_1

    .line 705
    :cond_3
    const-string v6, "error_type"

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 706
    aget-object v6, v3, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->ErrorType:I

    goto :goto_1

    .line 711
    :cond_4
    const-string v6, "key_type"

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 712
    aget-object v6, v3, v9

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->KeyType:Ljava/lang/String;

    goto :goto_1

    .line 717
    :cond_5
    const-string v6, "bssid"

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 718
    aget-object v6, v3, v9

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->BSSID:Ljava/lang/String;

    goto :goto_1

    .line 724
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #nameValue:[Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    :cond_6
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->DateInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->ErrorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->KeyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 741
    return-void
.end method
