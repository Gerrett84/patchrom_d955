.class public abstract Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;
.super Ljava/lang/Object;
.source "AbstractScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$MySensorEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_FAR_AWAY:I = 0x2

.field private static final EVENT_NO_USER_ACTIVITY:I = 0x4

.field private static final EVENT_RELEASE:I = 0x3

.field private static final EVENT_TOO_CLOSE:I = 0x1

.field private static final FIRST_CHANGE_TIMEOUT:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "AbstractScreenOnProximityLock"

.field private static final PROXIMITY_THRESHOLD:F = 4.0f

.field private static final RELEASE_DELAY:I = 0x12c

.field private static sValidChangeDelay:I


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mDialog:Landroid/app/Dialog;

.field private mDownRecieved:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHeld:Z

.field private mIsFirstChange:Z

.field protected mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$MySensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;)V
    .locals 2
    .parameter "context"
    .parameter "keyguardMediator"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDownRecieved:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$MySensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$MySensorEventListener;-><init>(Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensorEventListener:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$MySensorEventListener;

    .line 116
    iput-object p1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mContext:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->sValidChangeDelay:I

    .line 119
    iput-object p2, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensorManager:Landroid/hardware/SensorManager;

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensor:Landroid/hardware/Sensor;

    .line 123
    new-instance v0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$1;-><init>(Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    .line 158
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mIsFirstChange:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mIsFirstChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->sValidChangeDelay:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->prepareHintDialog()V

    return-void
.end method

.method private prepareHintDialog()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 96
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mContext:Landroid/content/Context;

    const v3, 0x103006b

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 99
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7e0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 100
    const/16 v1, 0x1100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 103
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 106
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x3400

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x6030015

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method


# virtual methods
.method public declared-synchronized aquire()V
    .locals 4

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    const-string v0, "AbstractScreenOnProximityLock"

    const-string v1, "try to aquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHeld:Z

    if-nez v0, :cond_0

    .line 169
    const-string v0, "AbstractScreenOnProximityLock"

    const-string v1, "aquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHeld:Z

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mIsFirstChange:Z

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensorEventListener:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$MySensorEventListener;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensorEventListener:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$MySensorEventListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$MySensorEventListener;->handleChanges()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract enableUserActivity(Z)V
.end method

.method public declared-synchronized isHeld()Z
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    monitor-enter p0

    :try_start_0
    const-string v2, "AbstractScreenOnProximityLock"

    const-string v3, "try to release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHeld:Z

    if-eqz v2, :cond_0

    .line 183
    const-string v1, "AbstractScreenOnProximityLock"

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHeld:Z

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDownRecieved:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mSensorEventListener:Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock$MySensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v1, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldBeBlocked(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 197
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mHeld:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 218
    :cond_1
    :goto_0
    return v2

    .line 199
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 215
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 216
    iget-object v4, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDownRecieved:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mDownRecieved:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 202
    .end local v1           #keyCode:I
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/AbstractScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 203
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    :sswitch_1
    move v2, v3

    .line 211
    goto :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
    .end sparse-switch
.end method
