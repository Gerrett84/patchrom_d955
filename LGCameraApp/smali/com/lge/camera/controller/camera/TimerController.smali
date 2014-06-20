.class public Lcom/lge/camera/controller/camera/TimerController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "TimerController.java"


# instance fields
.field private final MSG_INIT_COUNTER:I

.field private final MSG_START_COUNTER:I

.field private final MSG_STOP_COUNTER:I

.field private final TIMER_10SEC:I

.field private final TIMER_3SEC:I

.field private final TIMER_5SEC:I

.field private mCounterView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mInTimerShotCountdown:Z

.field private mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

.field private mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

.field private mTimerBGRotation:Landroid/view/animation/Animation;

.field private mTimerCaptureDelay:I

.field private mTimerCaptureMode:I

.field private mTimerCountDown:Ljava/util/Timer;

.field private mTimerLedEnabled:I

.field private timerDrawable:[I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 5
    .parameter "function"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 35
    iput v3, p0, Lcom/lge/camera/controller/camera/TimerController;->MSG_INIT_COUNTER:I

    .line 36
    iput v1, p0, Lcom/lge/camera/controller/camera/TimerController;->MSG_START_COUNTER:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->MSG_STOP_COUNTER:I

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->TIMER_3SEC:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->TIMER_5SEC:I

    .line 40
    iput v4, p0, Lcom/lge/camera/controller/camera/TimerController;->TIMER_10SEC:I

    .line 42
    new-instance v0, Lcom/lge/camera/controller/camera/TimerController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/TimerController$1;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mHandler:Landroid/os/Handler;

    .line 64
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 65
    iput-object v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    .line 68
    iput-object v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    .line 69
    iput-object v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    .line 73
    iput v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerLedEnabled:I

    .line 335
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->timerDrawable:[I

    .line 77
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mInit:Z

    .line 78
    return-void

    .line 335
    :array_0
    .array-data 0x4
        0x68t 0x4t 0x2t 0x7ft
        0x6at 0x4t 0x2t 0x7ft
        0x6bt 0x4t 0x2t 0x7ft
        0x6ct 0x4t 0x2t 0x7ft
        0x6dt 0x4t 0x2t 0x7ft
        0x6et 0x4t 0x2t 0x7ft
        0x6ft 0x4t 0x2t 0x7ft
        0x70t 0x4t 0x2t 0x7ft
        0x71t 0x4t 0x2t 0x7ft
        0x69t 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/TimerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/camera/TimerController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return p1
.end method

.method static synthetic access$210(Lcom/lge/camera/controller/camera/TimerController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/TimerController;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/camera/controller/camera/TimerController;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/TimerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/TimerController;->stopLEDForTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/TimerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private initEmotionalLEDForTimer()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 108
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    const-string v4, "CameraApp"

    const-string v5, "Initialize Emotional LED"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_camera_timer_noti"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerLedEnabled:I

    .line 115
    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerLedEnabled:I

    if-eq v4, v6, :cond_1

    .line 116
    const-string v4, "CameraApp"

    const-string v5, "Timer LED Setting is disabled"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v1, Lcom/lge/systemservice/core/LGContextImpl;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/lge/systemservice/core/LGContextImpl;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, mServiceContext:Lcom/lge/systemservice/core/LGContext;
    sget-object v4, Lcom/lge/systemservice/core/LGContext$ServiceList;->EMOTIONALLED_SERVICE:Lcom/lge/systemservice/core/LGContext$ServiceList;

    invoke-virtual {v1, v4}, Lcom/lge/systemservice/core/LGContext;->getLegacyService(Lcom/lge/systemservice/core/LGContext$ServiceList;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iput-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    .line 125
    new-instance v4, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    invoke-direct {v4}, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;-><init>()V

    iput-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    .line 126
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    const/4 v5, 0x0

    iput v5, v4, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->priority:I

    .line 127
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    iput v6, v4, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->flags:I

    .line 128
    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    sparse-switch v4, :sswitch_data_0

    .line 142
    :goto_1
    :try_start_0
    const-string v4, "com.lge.systemservice.core.emotionalledmanager.LGLedRecord"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 146
    .local v2, sClsRecord:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "whichLedPlay"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 147
    .local v3, whitchLedPlay:Ljava/lang/reflect/Field;
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v2           #sClsRecord:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #whitchLedPlay:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "whitchLedplay Setting fail"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_0
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    const/16 v5, 0x29

    iput v5, v4, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_1

    .line 133
    :sswitch_1
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    const/16 v5, 0x2a

    iput v5, v4, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_1

    .line 136
    :sswitch_2
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    const/16 v5, 0x2b

    iput v5, v4, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_1

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private startLEDForTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 156
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerLedEnabled:I

    if-ne v0, v2, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "CameraApp"

    const-string v1, "Emotioinal LED is started"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 162
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->start(Ljava/lang/String;ILcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;)V

    .line 166
    :cond_0
    return-void
.end method

.method private stopLEDForTimer()V
    .locals 3

    .prologue
    .line 169
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerLedEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "CameraApp"

    const-string v1, "Emotioinal LED is stopped"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public addMsgArg(II)V
    .locals 2
    .parameter "what"
    .parameter "arg"

    .prologue
    .line 468
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 469
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 470
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 471
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 472
    return-void
.end method

.method public displayInitCounter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 296
    const/4 v3, 0x0

    .line 298
    .local v3, resId:I
    const-string v4, "CameraApp"

    const-string v5, "init counter"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 301
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0900da

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    .line 302
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 303
    const-string v4, "CameraApp"

    const-string v5, " mCounterView is null."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "animation"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.Rotate"

    invoke-interface {v4, v5, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 315
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :cond_2
    const/4 v3, 0x0

    .line 319
    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    .line 320
    const v3, 0x7f02046d

    .line 327
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0901ee

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    .line 328
    .local v2, iv_timer_num:Lcom/lge/camera/components/RotateImageView;
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 329
    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 332
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    goto :goto_0

    .line 309
    .end local v2           #iv_timer_num:Lcom/lge/camera/components/RotateImageView;
    :catch_0
    move-exception v1

    .line 310
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 321
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 322
    const v3, 0x7f02046b

    goto :goto_2

    .line 323
    :cond_6
    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 324
    const v3, 0x7f020469

    goto :goto_2
.end method

.method public displayStartCounter(I)V
    .locals 6
    .parameter "timerCapturedDelay"

    .prologue
    const/4 v5, 0x0

    .line 350
    const/4 v2, 0x0

    .line 351
    .local v2, resId:I
    const-string v3, "CameraApp"

    const-string v4, "start counter"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    .line 355
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer task (count down) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    packed-switch p1, :pswitch_data_0

    .line 362
    if-lez p1, :cond_0

    .line 363
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->timerDrawable:[I

    add-int/lit8 v4, p1, -0x1

    aget v2, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 375
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0901ee

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageView;

    .line 376
    .local v1, iv_timer_num:Lcom/lge/camera/components/RotateImageView;
    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 379
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    .line 381
    .end local v1           #iv_timer_num:Lcom/lge/camera/components/RotateImageView;
    :cond_1
    :goto_1
    return-void

    .line 359
    :pswitch_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/controller/camera/TimerController;->addMsgArg(II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "CameraApp"

    const-string v4, "ArrayIndexOutOfBoundsException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 369
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "CameraApp"

    const-string v4, "NullPointerException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 371
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "CameraApp"

    const-string v4, "IndexOutOfBoundsException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public displayStopCounter()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 384
    const-string v3, "CameraApp"

    const-string v4, "stop counter"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 390
    :cond_0
    iget-boolean v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    if-eqz v3, :cond_2

    .line 391
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetCameraTimer"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 393
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    .line 394
    .local v1, focusState:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "go take a picture:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_flash"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, flashMode:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportGuideFlash()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "manual"

    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eq v1, v7, :cond_4

    const/4 v3, 0x6

    if-eq v1, v3, :cond_4

    if-eq v1, v6, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    .line 405
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 407
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 408
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 409
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    const-string v3, "1"

    const-string v4, "is-lowlight"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    const-string v3, "CameraApp"

    const-string v4, "doFocus : Flash auto and is-lowlight = 1"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 412
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    .line 423
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.TakePicture"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 424
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 426
    .end local v0           #flashMode:Ljava/lang/String;
    .end local v1           #focusState:I
    :cond_2
    return-void

    .line 416
    .restart local v0       #flashMode:Ljava/lang/String;
    .restart local v1       #focusState:I
    :cond_3
    const-string v3, "CameraApp"

    const-string v4, "doFocus : Flash on or auto"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 418
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    goto :goto_0

    .line 420
    :cond_4
    if-eq v1, v6, :cond_5

    if-ne v1, v7, :cond_1

    .line 421
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public getTimerCaptureDelay()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return v0
.end method

.method public isTimerShotCountdown()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    .line 441
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mInit:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/TimerController;->stopTimerShot()Z

    .line 433
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onPause()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    .line 436
    return-void
.end method

.method public reInitialize()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    .line 83
    return-void
.end method

.method public setTimerSetting(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 88
    iput p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    iput p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 93
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/TimerController;->initEmotionalLEDForTimer()V

    .line 95
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/TimerController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/TimerController$2;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public startTimerShot()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 180
    const-string v0, "CameraApp"

    const-string v4, "startTimerShot()"

    invoke-static {v0, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v4, 0x7f04

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DoCapture"

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 187
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "face_tracking"

    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "manual"

    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 196
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 198
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->playTimerSound(I)V

    .line 199
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/TimerController;->startLEDForTimer()V

    .line 200
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 201
    new-instance v0, Ljava/util/Timer;

    const-string v4, "timer_countdown"

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    .line 202
    new-instance v1, Lcom/lge/camera/controller/camera/TimerController$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/TimerController$3;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    .line 226
    .local v1, taskCountDown:Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 227
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 229
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 233
    :cond_2
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    invoke-virtual {p0, v6, v0}, Lcom/lge/camera/controller/camera/TimerController;->addMsgArg(II)V

    .line 234
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 235
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v4, 0x8

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 237
    return-void
.end method

.method public stopTimerShot()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    const-string v1, "CameraApp"

    const-string v2, "stopTimerShot()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, result:Z
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    .line 247
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    if-eqz v1, :cond_6

    .line 249
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 254
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 256
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    .line 258
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/TimerController;->stopLEDForTimer()V

    .line 260
    :cond_1
    iget v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    iput v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 262
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 264
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 268
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 272
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/lge/camera/controller/camera/TimerController;->addMsgArg(II)V

    .line 273
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setShutterButtonClicked(Z)V

    .line 276
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable()V

    .line 277
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 279
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 280
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 282
    :cond_5
    const/4 v0, 0x1

    .line 285
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/camera/TimerController$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/camera/TimerController$4;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    return v0
.end method

.method public timerAnimation(Z)V
    .locals 3
    .parameter "start"

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/TimerController;->checkMediator()Z

    move-result v1

    if-nez v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901ef

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 452
    .local v0, iv:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    if-nez v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    .line 456
    :cond_2
    if-eqz p1, :cond_3

    .line 457
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageView;->clearAnimation()V

    .line 458
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 462
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageView;->clearAnimation()V

    goto :goto_0
.end method
