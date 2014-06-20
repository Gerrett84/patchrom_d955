.class Lcom/android/lgesettings/fuelgauge/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/lgesettings/fuelgauge/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field cpuFgTime:J

.field cpuTime:J

.field defaultPackageName:Ljava/lang/String;

.field drainType:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

.field gpsTime:J

.field icon:Landroid/graphics/drawable/Drawable;

.field iconId:I

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field final mUidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field noCoveragePercent:D

.field percent:D

.field tcpBytesReceived:J

.field tcpBytesSent:J

.field uidObj:Landroid/os/BatteryStats$Uid;

.field usageTime:J

.field value:D

.field values:[D

.field wakeLockTime:J

.field wifiRunningTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "handler"
    .parameter "label"
    .parameter "drainType"
    .parameter "iconId"
    .parameter "uid"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/fuelgauge/BatterySipper;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;",
            "I",
            "Landroid/os/BatteryStats$Uid;",
            "[D)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, requestQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/fuelgauge/BatterySipper;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mUidCache:Ljava/util/Map;

    .line 68
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    .line 70
    iput-object p3, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p8, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->values:[D

    .line 72
    iput-object p4, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->drainType:Lcom/android/lgesettings/fuelgauge/PowerUsageDetail$DrainType;

    .line 74
    if-lez p6, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 77
    :cond_0
    if-eqz p8, :cond_1

    .line 78
    const/4 v0, 0x0

    aget-wide v0, p8, v0

    iput-wide v0, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->value:D

    .line 80
    :cond_1
    if-eqz p4, :cond_2

    if-nez p6, :cond_3

    :cond_2
    if-eqz p7, :cond_3

    .line 81
    invoke-virtual {p0, p7}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V

    .line 83
    :cond_3
    iput-object p7, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 84
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/lgesettings/fuelgauge/BatterySipper;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/android/lgesettings/fuelgauge/BatterySipper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/fuelgauge/BatterySipper;->compareTo(Lcom/android/lgesettings/fuelgauge/BatterySipper;)I

    move-result v0

    return v0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getNameIcon()V
    .locals 23

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 152
    .local v15, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v17

    .line 153
    .local v17, uid:I
    invoke-virtual {v15}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 154
    .local v5, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 155
    .local v12, packages:[Ljava/lang/String;
    if-nez v12, :cond_0

    .line 156
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 218
    :goto_0
    return-void

    .line 160
    :cond_0
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/String;

    .line 161
    .local v11, packageLabels:[Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v12, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    const/16 v16, -0x1

    .line 165
    .local v16, preferredIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    .line 167
    aget-object v20, v11, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 168
    move/from16 v16, v6

    .line 171
    :cond_1
    :try_start_0
    aget-object v20, v11, v6

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 172
    .local v3, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 173
    .local v8, label:Ljava/lang/CharSequence;
    if-eqz v8, :cond_2

    .line 174
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v11, v6

    .line 176
    :cond_2
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 177
    aget-object v20, v12, v6

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 178
    invoke-virtual {v3, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v3           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v8           #label:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 185
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 188
    :cond_4
    array-length v0, v11

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 189
    const/16 v20, 0x0

    aget-object v20, v11, v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 211
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 212
    .local v18, uidString:Ljava/lang/String;
    new-instance v19, Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;

    invoke-direct/range {v19 .. v19}, Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;-><init>()V

    .line 213
    .local v19, utd:Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;->name:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;->packageName:Ljava/lang/String;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mUidCache:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 181
    .end local v18           #uidString:Ljava/lang/String;
    .end local v19           #utd:Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;
    :catch_0
    move-exception v20

    .line 165
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 192
    :cond_7
    move-object v4, v12

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v9, :cond_5

    aget-object v14, v4, v7

    .line 194
    .local v14, pkgName:Ljava/lang/String;
    const/16 v20, 0x0

    :try_start_1
    move/from16 v0, v20

    invoke-virtual {v15, v14, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 195
    .local v13, pi:Landroid/content/pm/PackageInfo;
    iget v0, v13, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 196
    iget v0, v13, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v20, v0

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v14, v0, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 198
    .local v10, nm:Ljava/lang/CharSequence;
    if-eqz v10, :cond_8

    .line 199
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 200
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 201
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 202
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 207
    .end local v10           #nm:Ljava/lang/CharSequence;
    .end local v13           #pi:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v20

    .line 192
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V
    .locals 8
    .parameter "uidObj"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    .line 107
    .local v3, uid:I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, uidString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mUidCache:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    :try_start_0
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mUidCache:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;

    .line 112
    .local v5, utd:Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;
    iget-object v6, v5, Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 113
    iget-object v6, v5, Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;->name:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 114
    iget-object v6, v5, Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v5           #utd:Lcom/android/lgesettings/fuelgauge/BatterySipper$UidToDetail;
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v6

    .line 120
    :cond_0
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 121
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    .local v0, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, packages:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 124
    if-nez v1, :cond_4

    .line 126
    if-nez v3, :cond_2

    .line 127
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0806c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 135
    :cond_1
    :goto_1
    const v6, 0x7f0201e5

    iput v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->iconId:I

    .line 136
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 128
    :cond_2
    const-string v6, "mediaserver"

    iget-object v7, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 129
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0806c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    goto :goto_1

    .line 130
    :cond_3
    const-string v6, "bootanimation"

    iget-object v7, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0806c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    goto :goto_1

    .line 141
    :cond_4
    iget-object v7, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v7

    .line 142
    :try_start_1
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method getSortValue()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->value:D

    return-wide v0
.end method
