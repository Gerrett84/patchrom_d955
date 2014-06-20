.class public Lcom/android/lgesettings/MPCSPowerTonePicker;
.super Landroid/app/ListActivity;
.source "MPCSPowerTonePicker.java"


# instance fields
.field PowerToneitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentPosition:I

.field private currentPowerTonePosition:I

.field private listView:Landroid/widget/ListView;

.field mCancelButton:Landroid/widget/Button;

.field mOKButton:Landroid/widget/Button;

.field mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->currentPosition:I

    .line 58
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/MPCSPowerTonePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->currentPowerTonePosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/MPCSPowerTonePicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/lgesettings/MPCSPowerTonePicker;->writePowerOnTone(I)V

    return-void
.end method

.method private deletePowerSoundFolder(Ljava/io/File;)V
    .locals 7
    .parameter "folder"

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 216
    .local v2, childFileList:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 217
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 218
    .local v1, childFile:Ljava/io/File;
    const-string v5, "MPCSPowerTonePicker"

    const-string v6, "[deletePowerSoundFolder] for"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #childFile:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 223
    return-void
.end method

.method private initPowerToneUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->PowerToneitems:Ljava/util/ArrayList;

    .line 170
    iget-object v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->PowerToneitems:Ljava/util/ArrayList;

    const v2, 0x7f080dc2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->PowerToneitems:Ljava/util/ArrayList;

    const v2, 0x7f080dc3

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->PowerToneitems:Ljava/util/ArrayList;

    const v2, 0x7f080dc4

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->PowerToneitems:Ljava/util/ArrayList;

    const v2, 0x7f080dc5

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x109000f

    iget-object v2, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->PowerToneitems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 178
    .local v0, Adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->listView:Landroid/widget/ListView;

    .line 181
    iget-object v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 183
    invoke-static {}, Lcom/android/lgesettings/Utils;->getPowerTonePosition()I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->currentPosition:I

    .line 184
    const-string v1, "MPCSPowerTonePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->currentPosition:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->listView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->currentPosition:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 187
    return-void
.end method

.method private updatePowerToneList()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method private writePowerOnTone(I)V
    .locals 11
    .parameter "index"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 226
    const-string v1, "data/data/com.android.settings/"

    .line 227
    .local v1, dir:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, file_name:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "powersound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v4, folder:Ljava/io/File;
    const-string v6, "MPCSPowerTonePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[writePowerOnTone] index hhh : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 233
    invoke-direct {p0, v4}, Lcom/android/lgesettings/MPCSPowerTonePicker;->deletePowerSoundFolder(Ljava/io/File;)V

    .line 234
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 236
    invoke-virtual {v4, v9, v10}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 237
    invoke-virtual {v4, v9, v9}, Ljava/io/File;->setWritable(ZZ)Z

    .line 238
    invoke-virtual {v4, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 239
    const-string v6, "MPCSPowerTonePicker"

    const-string v7, "[writePowerOnTone] mkdir"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-eqz p1, :cond_0

    .line 241
    const-string v6, "MPCSPowerTonePicker"

    const-string v7, "[writePowerOnTone] mkdir2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "powersound/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v5, outfile:Ljava/io/File;
    const-string v6, "MPCSPowerTonePicker"

    const-string v7, "[writePowerOnTone] mkdir3"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_0
    const-string v6, "MPCSPowerTonePicker"

    const-string v7, "[writePowerOnTone] createnew file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 247
    .local v0, abc:Z
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 248
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 249
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 250
    const-string v6, "MPCSPowerTonePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[writePowerOnTone] createnew file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v0           #abc:Z
    .end local v5           #outfile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v5       #outfile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 253
    .local v2, e:Ljava/io/IOException;
    const-string v6, "MPCSPowerTonePicker"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 68
    const v0, 0x7f080b08

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->setTitle(I)V

    .line 70
    invoke-direct {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->initPowerToneUI()V

    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->updatePowerToneList()V

    .line 75
    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mCancelButton:Landroid/widget/Button;

    .line 76
    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mOKButton:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/MPCSPowerTonePicker$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/MPCSPowerTonePicker$1;-><init>(Lcom/android/lgesettings/MPCSPowerTonePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mOKButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/MPCSPowerTonePicker$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/MPCSPowerTonePicker$2;-><init>(Lcom/android/lgesettings/MPCSPowerTonePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->setVolumeControlStream(I)V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    .line 199
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 114
    iput p3, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->currentPowerTonePosition:I

    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 116
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 117
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    .line 118
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 119
    packed-switch p3, :pswitch_data_0

    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 162
    :goto_0
    :pswitch_0
    return-void

    .line 127
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 128
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 129
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 131
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 132
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 138
    :pswitch_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 139
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 140
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 141
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 144
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v0

    goto :goto_0

    .line 149
    :pswitch_3
    :try_start_2
    invoke-virtual {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 150
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 151
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 152
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 153
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 154
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 155
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/high16 v11, 0x6400

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move v7, v9

    .line 311
    :goto_0
    return v7

    .line 267
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "settings_style"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 268
    .local v5, settingStyle:I
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/MPCSPowerTonePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 269
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 271
    .local v4, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 272
    .local v6, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v6           #topActivity:Landroid/content/ComponentName;
    :goto_1
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, baseActivityClassName:Ljava/lang/String;
    if-ne v5, v8, :cond_2

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 281
    const-string v7, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.android.lgesettings.Settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 283
    :cond_0
    const-string v7, "soosin"

    const-string v9, "onBackPressed"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->onBackPressed()V

    move v7, v8

    .line 285
    goto :goto_0

    .line 274
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 275
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 287
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v1       #baseActivityClassName:Ljava/lang/String;
    :cond_1
    const-string v7, "soosin"

    const-string v9, "intent action - SOUND_SETTINGS"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 290
    const-string v7, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/MPCSPowerTonePicker;->startActivity(Landroid/content/Intent;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->finish()V

    move v7, v8

    .line 293
    goto :goto_0

    .line 296
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    const-string v7, "com.android.lgesettings.Settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 297
    const-string v7, "soosin"

    const-string v9, "onBackPressed"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->onBackPressed()V

    move v7, v8

    .line 299
    goto/16 :goto_0

    .line 302
    :cond_3
    const-string v7, "soosin"

    const-string v9, "intent action - SOUND_SETTINGS"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    const-string v7, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/MPCSPowerTonePicker;->startActivity(Landroid/content/Intent;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->finish()V

    move v7, v8

    .line 308
    goto/16 :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method
