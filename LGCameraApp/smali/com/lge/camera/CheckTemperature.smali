.class public Lcom/lge/camera/CheckTemperature;
.super Ljava/lang/Object;
.source "CheckTemperature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;
    }
.end annotation


# static fields
.field private static final AP_TEMP_FOR_FIRST_ENTRY:I = 0x39

.field private static final AP_TEMP_FOR_FIRST_ENTRY_INITIALADD:I = 0x0

.field private static final AP_TEMP_FOR_RELIABILITY:I = 0x38

.field private static final BATTERY_TEMP_FOR_RELIABILITY:I = 0x1ea

.field private static final BATTERY_TEMP_FOR_RELIABILITY_NOT_INITIAL:I = 0x1d6

.field private static final CHECK_TIME_INITIAL:I = 0xbb8

.field private static final CHECK_TIME_INTERVAL:I = 0x7530

.field private static final ENSURE_TIME_RUNNING:I = 0x2bf20

.field private static final EXTAP_TEMP_FOR_INITIAL:I = 0x63

.field private static final EXTAP_TEMP_FOR_RELIABILITY:D = 64.0

.field private static final IFPLUGGED_ADD_DEGREE_AP:I = 0x5

.field private static final IFPLUGGED_ADD_DEGREE_EXTAP:D = 6.5

.field private static final WAIT_TIME_FORCED_FINISH:I = 0x1388


# instance fields
.field private iAPTemper:I

.field private iAPTemperLimit:I

.field public iBatteryTemper:I

.field private iEXTAPTemper:D

.field private iEXTAPTemperLimit:D

.field private mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

.field private mHandlerFinishCamera:Landroid/os/Handler;

.field private mHandlerTempCheck:Landroid/os/Handler;

.field private mInitialCheck:Z

.field public mRunFinishCamera:Ljava/lang/Runnable;

.field private mRunState:Z

.field mRunTempCheck:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;)V
    .locals 4
    .parameter "function"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mRunState:Z

    .line 35
    iput-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    .line 36
    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    .line 37
    iput-wide v2, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    .line 38
    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemper:I

    .line 39
    iput-wide v2, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemper:D

    .line 40
    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iBatteryTemper:I

    .line 41
    iput-object v1, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    .line 42
    iput-object v1, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    .line 44
    iput-object v1, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    .line 72
    new-instance v0, Lcom/lge/camera/CheckTemperature$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/CheckTemperature$1;-><init>(Lcom/lge/camera/CheckTemperature;)V

    iput-object v0, p0, Lcom/lge/camera/CheckTemperature;->mRunTempCheck:Ljava/lang/Runnable;

    .line 216
    new-instance v0, Lcom/lge/camera/CheckTemperature$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/CheckTemperature$2;-><init>(Lcom/lge/camera/CheckTemperature;)V

    iput-object v0, p0, Lcom/lge/camera/CheckTemperature;->mRunFinishCamera:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/CheckTemperature;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mRunState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/CheckTemperature;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/CheckTemperature;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/CheckTemperature;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/CheckTemperature;)Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    return-object v0
.end method


# virtual methods
.method public checkAPTemperature()V
    .locals 15

    .prologue
    .line 149
    const-string v13, "CameraApp"

    const-string v14, "[Camera temperature scenario] checkAPTemperature start"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v6, "00"

    .line 152
    .local v6, mReadData:Ljava/lang/String;
    const-string v5, "00"

    .line 154
    .local v5, mExtReadData:Ljava/lang/String;
    const-string v1, "/sys/bus/i2c/devices/4-004c/temperature"

    .line 155
    .local v1, TEMPER:Ljava/lang/String;
    const-string v0, "/sys/bus/i2c/devices/4-004c/ext_temperature"

    .line 157
    .local v0, EXT_TEMPER:Ljava/lang/String;
    const/4 v7, 0x0

    .line 158
    .local v7, temper:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 159
    .local v3, exttemper:Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 160
    .local v11, temperFileReader:Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 163
    .local v9, temperExtFileReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v12, Ljava/io/FileReader;

    const-string v13, "/sys/bus/i2c/devices/4-004c/temperature"

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    .end local v11           #temperFileReader:Ljava/io/FileReader;
    .local v12, temperFileReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    .line 165
    .end local v7           #temper:Ljava/io/BufferedReader;
    .local v8, temper:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 167
    if-eqz v6, :cond_0

    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, p0, Lcom/lge/camera/CheckTemperature;->iAPTemper:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    .line 174
    :cond_0
    if-eqz v12, :cond_1

    .line 175
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    .line 177
    :cond_1
    if-eqz v8, :cond_2

    .line 178
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v11, v12

    .end local v12           #temperFileReader:Ljava/io/FileReader;
    .restart local v11       #temperFileReader:Ljava/io/FileReader;
    move-object v7, v8

    .line 187
    .end local v8           #temper:Ljava/io/BufferedReader;
    .restart local v7       #temper:Ljava/io/BufferedReader;
    :cond_3
    :goto_0
    :try_start_4
    new-instance v10, Ljava/io/FileReader;

    const-string v13, "/sys/bus/i2c/devices/4-004c/ext_temperature"

    invoke-direct {v10, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 188
    .end local v9           #temperExtFileReader:Ljava/io/FileReader;
    .local v10, temperExtFileReader:Ljava/io/FileReader;
    :try_start_5
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 189
    .end local v3           #exttemper:Ljava/io/BufferedReader;
    .local v4, exttemper:Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 191
    if-eqz v5, :cond_4

    .line 192
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    iput-wide v13, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemper:D
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 200
    :cond_4
    if-eqz v10, :cond_5

    .line 201
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 203
    :cond_5
    if-eqz v4, :cond_6

    .line 204
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    move-object v9, v10

    .end local v10           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v9       #temperExtFileReader:Ljava/io/FileReader;
    move-object v3, v4

    .line 210
    .end local v4           #exttemper:Ljava/io/BufferedReader;
    .restart local v3       #exttemper:Ljava/io/BufferedReader;
    :cond_7
    :goto_1
    return-void

    .line 180
    .end local v7           #temper:Ljava/io/BufferedReader;
    .end local v11           #temperFileReader:Ljava/io/FileReader;
    .restart local v8       #temper:Ljava/io/BufferedReader;
    .restart local v12       #temperFileReader:Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 181
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v11, v12

    .end local v12           #temperFileReader:Ljava/io/FileReader;
    .restart local v11       #temperFileReader:Ljava/io/FileReader;
    move-object v7, v8

    .line 183
    .end local v8           #temper:Ljava/io/BufferedReader;
    .restart local v7       #temper:Ljava/io/BufferedReader;
    goto :goto_0

    .line 170
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 171
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 174
    if-eqz v11, :cond_8

    .line 175
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    .line 177
    :cond_8
    if-eqz v7, :cond_3

    .line 178
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 180
    :catch_2
    move-exception v2

    .line 181
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 174
    :goto_3
    if-eqz v11, :cond_9

    .line 175
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    .line 177
    :cond_9
    if-eqz v7, :cond_a

    .line 178
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 182
    :cond_a
    :goto_4
    throw v13

    .line 180
    :catch_3
    move-exception v2

    .line 181
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 206
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #exttemper:Ljava/io/BufferedReader;
    .end local v9           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v4       #exttemper:Ljava/io/BufferedReader;
    .restart local v10       #temperExtFileReader:Ljava/io/FileReader;
    :catch_4
    move-exception v2

    .line 207
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .end local v10           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v9       #temperExtFileReader:Ljava/io/FileReader;
    move-object v3, v4

    .line 209
    .end local v4           #exttemper:Ljava/io/BufferedReader;
    .restart local v3       #exttemper:Ljava/io/BufferedReader;
    goto :goto_1

    .line 194
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 195
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 200
    if-eqz v9, :cond_b

    .line 201
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 203
    :cond_b
    if-eqz v3, :cond_7

    .line 204
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_1

    .line 206
    :catch_6
    move-exception v2

    .line 207
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 197
    .restart local v2       #e:Ljava/io/IOException;
    :goto_6
    :try_start_d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 200
    if-eqz v9, :cond_c

    .line 201
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 203
    :cond_c
    if-eqz v3, :cond_7

    .line 204
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_1

    .line 206
    :catch_8
    move-exception v2

    .line 207
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 199
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v13

    .line 200
    :goto_7
    if-eqz v9, :cond_d

    .line 201
    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 203
    :cond_d
    if-eqz v3, :cond_e

    .line 204
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 208
    :cond_e
    :goto_8
    throw v13

    .line 206
    :catch_9
    move-exception v2

    .line 207
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 199
    .end local v2           #e:Ljava/io/IOException;
    .end local v9           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v10       #temperExtFileReader:Ljava/io/FileReader;
    :catchall_2
    move-exception v13

    move-object v9, v10

    .end local v10           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v9       #temperExtFileReader:Ljava/io/FileReader;
    goto :goto_7

    .end local v3           #exttemper:Ljava/io/BufferedReader;
    .end local v9           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v4       #exttemper:Ljava/io/BufferedReader;
    .restart local v10       #temperExtFileReader:Ljava/io/FileReader;
    :catchall_3
    move-exception v13

    move-object v9, v10

    .end local v10           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v9       #temperExtFileReader:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #exttemper:Ljava/io/BufferedReader;
    .restart local v3       #exttemper:Ljava/io/BufferedReader;
    goto :goto_7

    .line 196
    .end local v9           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v10       #temperExtFileReader:Ljava/io/FileReader;
    :catch_a
    move-exception v2

    move-object v9, v10

    .end local v10           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v9       #temperExtFileReader:Ljava/io/FileReader;
    goto :goto_6

    .end local v3           #exttemper:Ljava/io/BufferedReader;
    .end local v9           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v4       #exttemper:Ljava/io/BufferedReader;
    .restart local v10       #temperExtFileReader:Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v9, v10

    .end local v10           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v9       #temperExtFileReader:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #exttemper:Ljava/io/BufferedReader;
    .restart local v3       #exttemper:Ljava/io/BufferedReader;
    goto :goto_6

    .line 194
    .end local v9           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v10       #temperExtFileReader:Ljava/io/FileReader;
    :catch_c
    move-exception v2

    move-object v9, v10

    .end local v10           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v9       #temperExtFileReader:Ljava/io/FileReader;
    goto :goto_5

    .end local v3           #exttemper:Ljava/io/BufferedReader;
    .end local v9           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v4       #exttemper:Ljava/io/BufferedReader;
    .restart local v10       #temperExtFileReader:Ljava/io/FileReader;
    :catch_d
    move-exception v2

    move-object v9, v10

    .end local v10           #temperExtFileReader:Ljava/io/FileReader;
    .restart local v9       #temperExtFileReader:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #exttemper:Ljava/io/BufferedReader;
    .restart local v3       #exttemper:Ljava/io/BufferedReader;
    goto :goto_5

    .line 173
    .end local v11           #temperFileReader:Ljava/io/FileReader;
    .restart local v12       #temperFileReader:Ljava/io/FileReader;
    :catchall_4
    move-exception v13

    move-object v11, v12

    .end local v12           #temperFileReader:Ljava/io/FileReader;
    .restart local v11       #temperFileReader:Ljava/io/FileReader;
    goto :goto_3

    .end local v7           #temper:Ljava/io/BufferedReader;
    .end local v11           #temperFileReader:Ljava/io/FileReader;
    .restart local v8       #temper:Ljava/io/BufferedReader;
    .restart local v12       #temperFileReader:Ljava/io/FileReader;
    :catchall_5
    move-exception v13

    move-object v11, v12

    .end local v12           #temperFileReader:Ljava/io/FileReader;
    .restart local v11       #temperFileReader:Ljava/io/FileReader;
    move-object v7, v8

    .end local v8           #temper:Ljava/io/BufferedReader;
    .restart local v7       #temper:Ljava/io/BufferedReader;
    goto :goto_3

    .line 170
    .end local v11           #temperFileReader:Ljava/io/FileReader;
    .restart local v12       #temperFileReader:Ljava/io/FileReader;
    :catch_e
    move-exception v2

    move-object v11, v12

    .end local v12           #temperFileReader:Ljava/io/FileReader;
    .restart local v11       #temperFileReader:Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v7           #temper:Ljava/io/BufferedReader;
    .end local v11           #temperFileReader:Ljava/io/FileReader;
    .restart local v8       #temper:Ljava/io/BufferedReader;
    .restart local v12       #temperFileReader:Ljava/io/FileReader;
    :catch_f
    move-exception v2

    move-object v11, v12

    .end local v12           #temperFileReader:Ljava/io/FileReader;
    .restart local v11       #temperFileReader:Ljava/io/FileReader;
    move-object v7, v8

    .end local v8           #temper:Ljava/io/BufferedReader;
    .restart local v7       #temper:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public checkAvailablityToRunCameraApp()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    const v5, 0x7f0b02e2

    const/4 v4, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/lge/camera/CheckTemperature;->checkAPTemperature()V

    .line 95
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Camera temperature scenario] checkAPTemperature end, current AP temper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/CheckTemperature;->iAPTemper:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Camera temperature scenario] checkAPTemperature end, current battery temper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/CheckTemperature;->iBatteryTemper:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Camera temperature scenario] checkAPTemperature end, current EXTAP temper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemper:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    if-eqz v0, :cond_3

    .line 100
    const-string v0, "CameraApp"

    const-string v1, "[Camera temperature scenario] Initial check"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/16 v0, 0x39

    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    .line 102
    const-wide v0, 0x4058c00000000000L

    iput-wide v0, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    invoke-interface {v0}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getIsCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    if-eqz v0, :cond_4

    .line 111
    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    .line 119
    :cond_0
    :goto_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Camera temperature scenario] limit of AP temper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "CameraApp"

    const-string v1, "[Camera temperature scenario] limit of BATTERY temper initial : 490"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Camera temperature scenario] limit of EXTAP temper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    if-eqz v0, :cond_6

    .line 125
    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemper:I

    iget v1, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iBatteryTemper:I

    const/16 v1, 0x1ea

    if-le v0, v1, :cond_5

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    invoke-interface {v0}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mRunFinishCamera:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    :cond_2
    :goto_2
    return-void

    .line 104
    :cond_3
    const/16 v0, 0x38

    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    .line 105
    const-wide/high16 v0, 0x4050

    iput-wide v0, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    goto :goto_0

    .line 113
    :cond_4
    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    .line 114
    iget-wide v0, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    const-wide/high16 v2, 0x401a

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    goto :goto_1

    .line 131
    :cond_5
    iput-boolean v4, p0, Lcom/lge/camera/CheckTemperature;->mRunState:Z

    goto :goto_2

    .line 135
    :cond_6
    const-string v0, "CameraApp"

    const-string v1, "[Camera temperature scenario] limit of BATTERY temp not initial : 470"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iAPTemper:I

    iget v1, p0, Lcom/lge/camera/CheckTemperature;->iAPTemperLimit:I

    if-le v0, v1, :cond_7

    iget-wide v0, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemper:D

    iget-wide v2, p0, Lcom/lge/camera/CheckTemperature;->iEXTAPTemperLimit:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/lge/camera/CheckTemperature;->iBatteryTemper:I

    const/16 v1, 0x1d6

    if-le v0, v1, :cond_9

    .line 138
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    invoke-interface {v0}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mGet:Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->toastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mRunFinishCamera:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 143
    :cond_9
    iput-boolean v4, p0, Lcom/lge/camera/CheckTemperature;->mRunState:Z

    goto :goto_2
.end method

.method public checkTemperatureForKddi()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 58
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    .line 66
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mRunTempCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public releaseCheckTemperature()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mRunState:Z

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/CheckTemperature;->mInitialCheck:Z

    .line 229
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mRunTempCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/CheckTemperature;->mRunFinishCamera:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    :cond_1
    iput-object v2, p0, Lcom/lge/camera/CheckTemperature;->mHandlerTempCheck:Landroid/os/Handler;

    .line 238
    iput-object v2, p0, Lcom/lge/camera/CheckTemperature;->mHandlerFinishCamera:Landroid/os/Handler;

    .line 239
    return-void
.end method

.method public setBatteryTemper(I)V
    .locals 0
    .parameter "temper"

    .prologue
    .line 213
    iput p1, p0, Lcom/lge/camera/CheckTemperature;->iBatteryTemper:I

    .line 214
    return-void
.end method
