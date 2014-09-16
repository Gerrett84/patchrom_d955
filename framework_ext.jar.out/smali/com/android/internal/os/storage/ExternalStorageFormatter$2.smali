.class Lcom/android/internal/os/storage/ExternalStorageFormatter$2;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;

.field final synthetic val$volumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;[Landroid/os/storage/StorageVolume;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$volumes:[Landroid/os/storage/StorageVolume;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 213
    const/4 v6, 0x0

    .line 215
    .local v6, success:Z
    :try_start_0
    sget-boolean v8, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM_SDENCRYPTION:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->m3LM:I
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$volumes:[Landroid/os/storage/StorageVolume;

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 218
    .local v7, volume:Landroid/os/storage/StorageVolume;
    const-string v8, "OTG_ISSUE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ExternalStorageFommater]formmat volume : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v8, v9}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_1
    const/4 v6, 0x1

    .line 231
    :goto_1
    if-eqz v6, :cond_3

    .line 232
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 233
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 286
    :goto_2
    return-void

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 227
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 228
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v9, 0x10404ce

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 239
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    sget-boolean v8, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM_SDENCRYPTION:Z

    if-eqz v8, :cond_3

    .line 244
    const-string v8, "DeviceManager3LM"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 245
    .local v5, service:Landroid/os/IBinder;
    if-eqz v5, :cond_4

    .line 247
    :try_start_1
    invoke-static {v5}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v1

    .line 248
    .local v1, deviceManager:Landroid/os/IDeviceManager3LM;
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/os/IDeviceManager3LM;->setSdEncryptionRequired(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    .end local v1           #deviceManager:Landroid/os/IDeviceManager3LM;
    .end local v5           #service:Landroid/os/IBinder;
    :cond_3
    :goto_3
    if-nez v6, :cond_5

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 261
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    :goto_4
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_2

    .line 249
    .restart local v5       #service:Landroid/os/IBinder;
    :catch_1
    move-exception v2

    .line 250
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "ExternalStorageFormatter"

    const-string v9, "Failed talking with 3LM service"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 253
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v8, "ExternalStorageFormatter"

    const-string v9, "Can\'t get 3LM service"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 264
    .end local v5           #service:Landroid/os/IBinder;
    :cond_5
    :try_start_2
    sget-boolean v8, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM_SDENCRYPTION:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->m3LM:I
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v8

    if-ne v8, v11, :cond_8

    .line 265
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$volumes:[Landroid/os/storage/StorageVolume;

    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_5
    if-ge v3, v4, :cond_7

    aget-object v7, v0, v3

    .line 266
    .restart local v7       #volume:Landroid/os/storage/StorageVolume;
    const-string v8, "OTG_ISSUE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ExternalStorageFommater]mount volume : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string/jumbo v8, "unmounted"

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 268
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 265
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 271
    .end local v7           #volume:Landroid/os/storage/StorageVolume;
    :cond_7
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const/4 v9, 0x0

    #setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->m3LM:I
    invoke-static {v8, v9}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 275
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_2
    move-exception v2

    .line 276
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v8, "ExternalStorageFormatter"

    const-string v9, "Failed talking with mount service"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 273
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_8
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v8, v9}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 280
    :catch_3
    move-exception v2

    .line 281
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v8, "ExternalStorageFormatter"

    const-string v9, "Timeout, null returned"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method
