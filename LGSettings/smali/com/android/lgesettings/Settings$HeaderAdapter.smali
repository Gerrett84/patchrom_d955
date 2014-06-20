.class Lcom/android/lgesettings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAirplaneModeEnabler_VZW:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

.field private mAuthHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

.field private final mDataUsageEnabler:Lcom/android/lgesettings/DataUsageEnabler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/lgesettings/accounts/AuthenticatorHelper;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/lgesettings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v2, 0x0

    .line 1514
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1516
    iput-object p3, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    .line 1517
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1522
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mAirplaneModeEnabler_VZW:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    .line 1528
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/lgesettings/Utils;->isVeeModel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/Settings;->access$200()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1529
    new-instance v0, Lcom/android/lgesettings/DataUsageEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/lgesettings/DataUsageEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mDataUsageEnabler:Lcom/android/lgesettings/DataUsageEnabler;

    .line 1533
    :goto_1
    new-instance v0, Lcom/android/lgesettings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/lgesettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

    .line 1534
    new-instance v0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    .line 1535
    return-void

    .line 1525
    :cond_0
    iput-object v2, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mAirplaneModeEnabler_VZW:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    goto :goto_0

    .line 1531
    :cond_1
    iput-object v2, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mDataUsageEnabler:Lcom/android/lgesettings/DataUsageEnabler;

    goto :goto_1
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 10
    .parameter "header"

    .prologue
    const-wide/32 v8, 0x7f0a0440

    const-wide/32 v6, 0x7f0a043f

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1456
    iget-object v2, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v2, :cond_4

    .line 1458
    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0a043d

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return v0

    .line 1460
    :cond_1
    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0a045c

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0a0465

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0a045e

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    .line 1461
    goto :goto_0

    .line 1464
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1466
    :cond_4
    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/lgesettings/Utils;->isVeeModel()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/lgesettings/Settings;->access$200()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0a0441

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 1469
    :cond_5
    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_6

    iget-wide v2, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    :cond_6
    invoke-static {}, Lcom/android/lgesettings/Settings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1470
    goto :goto_0

    :cond_7
    move v0, v1

    .line 1475
    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1494
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1488
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1489
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1540
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1541
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 1542
    .local v2, headerType:I
    const/4 v7, 0x0

    .line 1544
    .local v7, view:Landroid/view/View;
    if-nez p2, :cond_6

    .line 1545
    new-instance v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/lgesettings/Settings$1;)V

    .line 1546
    .local v3, holder:Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 1586
    :cond_0
    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1587
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v2, :cond_1

    .line 1588
    const v8, 0x7f02027a

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1597
    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 1702
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v2, :cond_5

    .line 1703
    if-eqz v3, :cond_3

    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 1704
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0072

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1707
    :cond_3
    if-eqz v3, :cond_4

    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 1708
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0072

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1711
    :cond_4
    if-eqz v3, :cond_5

    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->arrow:Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    .line 1712
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {}, Lcom/android/lgesettings/Settings;->access$400()Landroid/preference/PreferenceActivity$Header;

    move-result-object v10

    iget-wide v10, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_18

    .line 1713
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->arrow:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1719
    :cond_5
    :goto_3
    return-object v7

    .line 1548
    :pswitch_0
    new-instance v7, Landroid/widget/TextView;

    .end local v7           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x1010208

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v7       #view:Landroid/view/View;
    move-object v8, v7

    .line 1550
    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 1554
    :pswitch_1
    iget-object v8, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400f0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1556
    const v8, 0x7f0a004e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1557
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1559
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1561
    const v8, 0x7f0a020b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1563
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1564
    const v8, 0x7f0a020a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    .line 1565
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0a043d

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1566
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1573
    :pswitch_2
    iget-object v8, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400ef

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1576
    const v8, 0x7f0a004e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1577
    const v8, 0x7f0a004b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1579
    const v8, 0x7f0a001e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1581
    const v8, 0x7f0a0209

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->arrow:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 1592
    .end local v3           #holder:Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_6
    move-object v7, p2

    .line 1593
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3       #holder:Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1599
    :pswitch_3
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1604
    :pswitch_4
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0a043f

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 1605
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1606
    iget-object v8, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

    iget-object v9, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    iget-object v10, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v9, v10}, Lcom/android/lgesettings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;Landroid/widget/TextView;)V

    .line 1632
    :cond_7
    :goto_4
    :pswitch_5
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_11

    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1634
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, accType:Ljava/lang/String;
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1637
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1639
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1640
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1641
    iget-object v8, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/lgesettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/android/lgesettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1642
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1646
    .end local v0           #accType:Ljava/lang/String;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_5
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1652
    .local v6, summary:Ljava/lang/CharSequence;
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v8, :cond_8

    .line 1653
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1654
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1655
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    :cond_8
    :goto_6
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0a0444

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    .line 1672
    const/4 v8, 0x1

    const-string v9, "SPRINT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eq v8, v9, :cond_9

    const/4 v8, 0x1

    const-string v9, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eq v8, v9, :cond_9

    const/4 v8, 0x1

    const-string v9, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v8, v9, :cond_16

    .line 1675
    :cond_9
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    .line 1676
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v9, 0x7f080454

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1689
    :cond_a
    :goto_7
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0a0442

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 1690
    const/4 v8, 0x1

    const-string v9, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v8, v9, :cond_2

    .line 1692
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 1693
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v9, 0x7f0804d5

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 1608
    .end local v6           #summary:Ljava/lang/CharSequence;
    :cond_b
    iget-object v8, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

    iget-object v9, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_4

    .line 1610
    :cond_c
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0a0440

    cmp-long v8, v8, v10

    if-nez v8, :cond_e

    .line 1611
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1612
    iget-object v8, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    iget-object v9, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    iget-object v10, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v9, v10}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;Landroid/widget/TextView;)V

    goto/16 :goto_4

    .line 1614
    :cond_d
    iget-object v8, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    iget-object v9, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_4

    .line 1617
    :cond_e
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0a043d

    cmp-long v8, v8, v10

    if-nez v8, :cond_10

    .line 1618
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    if-eqz v8, :cond_f

    .line 1619
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1621
    :cond_f
    iget-object v8, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mAirplaneModeEnabler_VZW:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-object v9, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_4

    .line 1623
    :cond_10
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/lgesettings/Utils;->isVeeModel(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Lcom/android/lgesettings/Settings;->access$200()Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0a0441

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 1624
    iget-object v8, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mDataUsageEnabler:Lcom/android/lgesettings/DataUsageEnabler;

    iget-object v9, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/DataUsageEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_4

    .line 1644
    :cond_11
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v9, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 1656
    .restart local v6       #summary:Ljava/lang/CharSequence;
    :cond_12
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0a043f

    cmp-long v8, v8, v10

    if-eqz v8, :cond_13

    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0a0440

    cmp-long v8, v8, v10

    if-nez v8, :cond_15

    .line 1658
    :cond_13
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 1659
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1661
    :cond_14
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1664
    :cond_15
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1679
    :cond_16
    const/4 v8, 0x1

    const-string v9, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v8, v9, :cond_a

    .line 1680
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v8, :cond_17

    .line 1681
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v9, 0x7f02021f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1683
    :cond_17
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v8, :cond_a

    .line 1684
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v9, 0x7f080d10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    .line 1715
    .end local v6           #summary:Ljava/lang/CharSequence;
    :cond_18
    iget-object v8, v3, Lcom/android/lgesettings/Settings$HeaderAdapter$HeaderViewHolder;->arrow:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1597
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1504
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1509
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1499
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1734
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mAirplaneModeEnabler_VZW:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    invoke-virtual {v0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->pause()V

    .line 1737
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isVeeModel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/Settings;->access$200()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1738
    iget-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mDataUsageEnabler:Lcom/android/lgesettings/DataUsageEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/DataUsageEnabler;->pause()V

    .line 1740
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiEnabler;->pause()V

    .line 1741
    iget-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->pause()V

    .line 1742
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 1723
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mAirplaneModeEnabler_VZW:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    invoke-virtual {v0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->resume()V

    .line 1726
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isVeeModel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/Settings;->access$200()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1727
    iget-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mDataUsageEnabler:Lcom/android/lgesettings/DataUsageEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/DataUsageEnabler;->resume()V

    .line 1729
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/lgesettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiEnabler;->resume()V

    .line 1730
    iget-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->resume()V

    .line 1731
    return-void
.end method

.method public updateAirplaneModeEnabler(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 1480
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ksson] isChecked =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mAirplaneModeEnabler_VZW:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/lgesettings/Settings$HeaderAdapter;->mAirplaneModeEnabler_VZW:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->setSwitchChecked(Z)V

    .line 1484
    :cond_0
    return-void
.end method
