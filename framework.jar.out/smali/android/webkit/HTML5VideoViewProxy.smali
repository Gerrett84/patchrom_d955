.class Landroid/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;,
        Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;,
        Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;,
        Landroid/webkit/HTML5VideoViewProxy$TracksData;,
        Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;,
        Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;,
        Landroid/webkit/HTML5VideoViewProxy$CharacterSize;
    }
.end annotation


# static fields
.field private static final ACTION_HTML5VIDEO_BROWSER_PLAY:Ljava/lang/String; = "lge.browser.intent.action.HTML5VIDEO_BROWSER_PLAY"

.field private static final ACTION_HTML5VIDEO_STREAM_PLAY:Ljava/lang/String; = "lge.browser.intent.action.HTML5VIDEO_STREAMING_PLAY"

.field private static final BACKGROUND_COLOR:Ljava/lang/String; = "subtitle_background_color"

.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final CC_STATE:Ljava/lang/String; = "subtitle_enable"

.field private static final CHARACTER_COLOR:Ljava/lang/String; = "subtitle_color"

.field private static final CHARACTER_EDGE:Ljava/lang/String; = "subtitle_edge"

.field private static final CHARACTER_EDGE_INDEX:Ljava/lang/String; = "subtitle_edge"

.field private static final CHARACTER_SIZE:Ljava/lang/String; = "subtitle_size"

.field private static final CHARACTER_SIZE_INDEX:Ljava/lang/String; = "subtitle_size"

.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field private static final DEFAULT_CHARACTER_COLOR:I = -0x1

.field private static final DEFAULT_CHARACTER_EDGE:Ljava/lang/String; = null

.field private static final DEFAULT_CHARACTER_EDGE_INDEX:I = 0x0

.field private static final DEFAULT_CHARACTER_SIZE:Ljava/lang/String; = null

.field private static final DEFAULT_CHARACTER_SIZE_INDEX:I = 0x2

.field private static final DEFAULT_WINDOW_COLOR:I = 0x0

.field private static final ENDED:I = 0xc9

.field private static final ENTER_FROM_LGBROWSER:I = 0xce

.field private static final ENTER_FULLSCREEN:I = 0x6b

.field private static final ERROR:I = 0x67

.field private static final FONT:Ljava/lang/String; = "subtitle_font"

.field private static final FONT_PATH:Ljava/lang/String; = "subtitle_font"

.field private static final HEADER:Ljava/lang/String; = "Header"

.field private static IS_THERE_STREAMING_PLAYER:Z = false

.field private static final KEY_IS_PLAYING:Ljava/lang/String; = "isplay"

.field private static final KEY_POS:Ljava/lang/String; = "position"

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final ON_ENDED:I = 0x1

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final REQUEST_SUBTITLE_SETTINGS:I = 0x6c

.field private static final RESTORESTATE:I = 0xcd

.field private static final SEEK:I = 0x65

.field private static final SELECT_TRACK:I = 0x6d

.field private static final SETDURATION:I = 0xcf

.field private static final SET_SUBTITLE_SETTINGS:I = 0xd1

.field private static final SET_TRACK_PLAYED:I = 0xd0

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final SUBTITLE_SETTINGS_PREFS:Ljava/lang/String; = "SubtitleSettings"

.field private static final TIMEUPDATE:I = 0x12c

.field private static final TRACK_KIND:Ljava/lang/String; = "subtitle_kind"

.field private static final TRACK_LABEL:Ljava/lang/String; = "subtitle_lang_label"

.field private static final TRACK_LANG:Ljava/lang/String; = "subtitle_lang"

.field private static final TRACK_PLAYED:Ljava/lang/String; = "language_index"

.field private static final TRACK_SRC:Ljava/lang/String; = "subtitle_path_url"

.field private static final WINDOW_COLOR:Ljava/lang/String; = "subtitle_window_color"

.field private static fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mIsFloatingwindowSupport:Z

.field private static mIsInlineVideoEnded:Z

.field private static mTracksData:Landroid/webkit/HTML5VideoViewProxy$TracksData;


# instance fields
.field private mIsDirectFullScreen:Z

.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy;->mIsInlineVideoEnded:Z

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->fontMap:Ljava/util/Map;

    .line 211
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->fontMap:Ljava/util/Map;

    const-string v1, "/system/fonts/Font1_Stable_Slap.ttf"

    const-string v2, "Stable_Slap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->fontMap:Ljava/util/Map;

    const-string v1, "/system/fonts/Font2_Luminous_Serif.ttf"

    const-string v2, "Luminous_Serif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->fontMap:Ljava/util/Map;

    const-string v1, "/system/fonts/Font3_Smart_Monospaced.ttf"

    const-string v2, "Smart_Monospaced"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->fontMap:Ljava/util/Map;

    const-string v1, "/system/fonts/Font4_Luminous_Sans.ttf"

    const-string v2, "Luminous_Sans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->fontMap:Ljava/util/Map;

    const-string v1, "/system/fonts/Font5_Comics_Narrow.ttf"

    const-string v2, "Comics_Narrow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->fontMap:Ljava/util/Map;

    const-string v1, "/system/fonts/Font6_Luminous_Script.ttf"

    const-string v2, "Luminous_Script"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->fontMap:Ljava/util/Map;

    const-string v1, "/system/fonts/Font7_Spacious_SmallCap.ttf"

    const-string v2, "Spacious_SmallCap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->NORMAL:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    iget-object v0, v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->value:Ljava/lang/String;

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->DEFAULT_CHARACTER_SIZE:Ljava/lang/String;

    .line 226
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->NONE:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    iget-object v0, v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->value:Ljava/lang/String;

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->DEFAULT_CHARACTER_EDGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebViewClassic;I)V
    .locals 7
    .parameter "webView"
    .parameter "nativePtr"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1099
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    iput-boolean v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsDirectFullScreen:Z

    .line 1101
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    .line 1105
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3, p0}, Landroid/webkit/WebViewClassic;->setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 1107
    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 1109
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V

    .line 1111
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.lge.streamingplayer"

    const-string v6, "com.lge.streamingplayer.StreamingPlayer"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1112
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    sput-boolean v1, Landroid/webkit/HTML5VideoViewProxy;->IS_THERE_STREAMING_PLAYER:Z

    .line 1114
    const-string/jumbo v1, "ro.lge.capp_qwindow"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/webkit/HTML5VideoViewProxy;->mIsFloatingwindowSupport:Z

    .line 1116
    return-void

    :cond_0
    move v1, v2

    .line 1112
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy;->IS_THERE_STREAMING_PLAYER:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method static synthetic access$1702(Landroid/webkit/HTML5VideoViewProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$1800(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/HTML5VideoViewProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->isDirectFullScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnRestoreState(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnterFromLGBrowser(I)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeSetDuration(II)V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnChangeTrackPlayed(II)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/HTML5VideoViewProxy;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p7}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnChangeSubtitleSettings(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy;->mIsInlineVideoEnded:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    sput-boolean p0, Landroid/webkit/HTML5VideoViewProxy;->mIsInlineVideoEnded:Z

    return p0
.end method

.method static synthetic access$400(Landroid/webkit/HTML5VideoViewProxy;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->setDirectFullScreen(Z)V

    return-void
.end method

.method static synthetic access$500()Landroid/webkit/HTML5VideoViewProxy$TracksData;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->getTracks()Landroid/webkit/HTML5VideoViewProxy$TracksData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->onTrackPlayedUpdate(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/HTML5VideoViewProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p6}, Landroid/webkit/HTML5VideoViewProxy;->onSubtitleSettingsUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    .line 1119
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$1;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    .line 1173
    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "poster"

    .prologue
    .line 1176
    if-nez p1, :cond_0

    .line 1184
    :goto_0
    return-void

    .line 1180
    :cond_0
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    .line 1181
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1182
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1183
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;I)Landroid/webkit/HTML5VideoViewProxy;
    .locals 2
    .parameter "webViewCore"
    .parameter "nativePtr"

    .prologue
    .line 1568
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/webkit/HTML5VideoViewProxy;-><init>(Landroid/webkit/WebViewClassic;I)V

    return-object v0
.end method

.method private getSubtitleSettingsPrefs()V
    .locals 15

    .prologue
    .line 1388
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v13, "SubtitleSettings"

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1389
    .local v11, preferences:Landroid/content/SharedPreferences;
    const-string/jumbo v0, "subtitle_color"

    const/4 v13, 0x0

    invoke-interface {v11, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1392
    .local v8, characterColor:Ljava/lang/String;
    const/16 v0, 0x10

    :try_start_0
    invoke-static {v8, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    long-to-int v1, v13

    .line 1396
    .local v1, intCharacterColor:I
    :goto_0
    const-string/jumbo v0, "subtitle_background_color"

    const/4 v13, 0x0

    invoke-interface {v11, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1399
    .local v7, backgroundColor:Ljava/lang/String;
    const/16 v0, 0x10

    :try_start_1
    invoke-static {v7, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v13

    long-to-int v2, v13

    .line 1403
    .local v2, intBackgroundColor:I
    :goto_1
    const-string/jumbo v0, "subtitle_window_color"

    const/4 v13, 0x0

    invoke-interface {v11, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1406
    .local v12, windowColor:Ljava/lang/String;
    const/16 v0, 0x10

    :try_start_2
    invoke-static {v12, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v13

    long-to-int v3, v13

    .line 1410
    .local v3, intWindowColor:I
    :goto_2
    const-string/jumbo v0, "subtitle_font"

    const-string v13, ""

    invoke-interface {v11, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1411
    .local v4, font:Ljava/lang/String;
    const-string/jumbo v0, "subtitle_size"

    sget-object v13, Landroid/webkit/HTML5VideoViewProxy;->DEFAULT_CHARACTER_SIZE:Ljava/lang/String;

    invoke-interface {v11, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1412
    .local v5, characterSize:Ljava/lang/String;
    const-string/jumbo v0, "subtitle_edge"

    sget-object v13, Landroid/webkit/HTML5VideoViewProxy;->DEFAULT_CHARACTER_EDGE:Ljava/lang/String;

    invoke-interface {v11, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1414
    .local v6, characterEdge:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v13, 0xd1

    invoke-static {v0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    .line 1415
    .local v10, msg:Landroid/os/Message;
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;

    invoke-direct/range {v0 .. v6}, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1416
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1417
    return-void

    .line 1393
    .end local v1           #intCharacterColor:I
    .end local v2           #intBackgroundColor:I
    .end local v3           #intWindowColor:I
    .end local v4           #font:Ljava/lang/String;
    .end local v5           #characterSize:Ljava/lang/String;
    .end local v6           #characterEdge:Ljava/lang/String;
    .end local v7           #backgroundColor:Ljava/lang/String;
    .end local v10           #msg:Landroid/os/Message;
    .end local v12           #windowColor:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1394
    .local v9, ex:Ljava/lang/Exception;
    const/4 v1, -0x1

    .restart local v1       #intCharacterColor:I
    goto :goto_0

    .line 1400
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v7       #backgroundColor:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 1401
    .restart local v9       #ex:Ljava/lang/Exception;
    const/high16 v2, -0x100

    .restart local v2       #intBackgroundColor:I
    goto :goto_1

    .line 1407
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v12       #windowColor:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 1408
    .restart local v9       #ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #intWindowColor:I
    goto :goto_2
.end method

.method private static getTracks()Landroid/webkit/HTML5VideoViewProxy$TracksData;
    .locals 1

    .prologue
    .line 1303
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->mTracksData:Landroid/webkit/HTML5VideoViewProxy$TracksData;

    if-nez v0, :cond_0

    .line 1304
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$TracksData;

    invoke-direct {v0}, Landroid/webkit/HTML5VideoViewProxy$TracksData;-><init>()V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mTracksData:Landroid/webkit/HTML5VideoViewProxy$TracksData;

    .line 1305
    :cond_0
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy;->mTracksData:Landroid/webkit/HTML5VideoViewProxy$TracksData;

    return-object v0
.end method

.method private isDirectFullScreen()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsDirectFullScreen:Z

    return v0
.end method

.method private native nativeOnChangeSubtitleSettings(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native nativeOnChangeTrackPlayed(II)V
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnEnterFromLGBrowser(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRestoreState(I)V
.end method

.method private native nativeOnStopFullscreen(II)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
.end method

.method private native nativeSetDuration(II)V
.end method

.method private onSubtitleSettingsUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 13
    .parameter "characterColor"
    .parameter "backgroundColor"
    .parameter "windowColor"
    .parameter "fontPath"
    .parameter "characterSizeIndex"
    .parameter "characterEdgeIndex"

    .prologue
    .line 1326
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v10, v1

    .line 1333
    .local v10, intCharacterColor:I
    :goto_0
    const/16 v1, 0x10

    :try_start_1
    invoke-static {p2, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    long-to-int v9, v1

    .line 1340
    .local v9, intBackgroundColor:I
    :goto_1
    const/16 v1, 0x10

    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v1

    long-to-int v11, v1

    .line 1345
    .local v11, intWindowColor:I
    :goto_2
    const/4 v5, 0x0

    .line 1347
    .local v5, font:Ljava/lang/String;
    :try_start_3
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy;->fontMap:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1348
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy;->fontMap:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1355
    :cond_0
    :goto_3
    if-ltz p5, :cond_1

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->values()[Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    move-result-object v1

    array-length v1, v1

    move/from16 v0, p5

    if-ge v0, v1, :cond_1

    .line 1356
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->values()[Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    move-result-object v1

    aget-object v1, v1, p5

    iget-object v6, v1, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->value:Ljava/lang/String;

    .line 1361
    .local v6, characterSize:Ljava/lang/String;
    :goto_4
    if-ltz p6, :cond_2

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->values()[Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    move-result-object v1

    array-length v1, v1

    move/from16 v0, p6

    if-ge v0, v1, :cond_2

    .line 1362
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->values()[Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    move-result-object v1

    aget-object v1, v1, p6

    iget-object v7, v1, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->value:Ljava/lang/String;

    .line 1367
    .local v7, characterEdge:Ljava/lang/String;
    :goto_5
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/webkit/HTML5VideoViewProxy;->storeSubtitleSettingsPrefs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xd1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 1372
    .local v12, msg:Landroid/os/Message;
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;

    move v2, v10

    move v3, v9

    move v4, v11

    invoke-direct/range {v1 .. v7}, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1373
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1374
    return-void

    .line 1327
    .end local v5           #font:Ljava/lang/String;
    .end local v6           #characterSize:Ljava/lang/String;
    .end local v7           #characterEdge:Ljava/lang/String;
    .end local v9           #intBackgroundColor:I
    .end local v10           #intCharacterColor:I
    .end local v11           #intWindowColor:I
    .end local v12           #msg:Landroid/os/Message;
    :catch_0
    move-exception v8

    .line 1328
    .local v8, ex:Ljava/lang/Exception;
    const/4 v10, -0x1

    .restart local v10       #intCharacterColor:I
    goto :goto_0

    .line 1334
    .end local v8           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 1335
    .restart local v8       #ex:Ljava/lang/Exception;
    const/high16 v9, -0x100

    .restart local v9       #intBackgroundColor:I
    goto :goto_1

    .line 1341
    .end local v8           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 1342
    .restart local v8       #ex:Ljava/lang/Exception;
    const/4 v11, 0x0

    .restart local v11       #intWindowColor:I
    goto :goto_2

    .line 1358
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v5       #font:Ljava/lang/String;
    :cond_1
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy;->DEFAULT_CHARACTER_SIZE:Ljava/lang/String;

    .restart local v6       #characterSize:Ljava/lang/String;
    goto :goto_4

    .line 1364
    :cond_2
    sget-object v7, Landroid/webkit/HTML5VideoViewProxy;->DEFAULT_CHARACTER_EDGE:Ljava/lang/String;

    .restart local v7       #characterEdge:Ljava/lang/String;
    goto :goto_5

    .line 1350
    .end local v6           #characterSize:Ljava/lang/String;
    .end local v7           #characterEdge:Ljava/lang/String;
    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method private onTrackPlayedUpdate(I)V
    .locals 3
    .parameter "trackPlayed"

    .prologue
    .line 1315
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xd0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1316
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1317
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1318
    const/4 v1, 0x0

    sput-object v1, Landroid/webkit/HTML5VideoViewProxy;->mTracksData:Landroid/webkit/HTML5VideoViewProxy$TracksData;

    .line 1319
    return-void
.end method

.method private selectTrack()V
    .locals 9

    .prologue
    .line 1447
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->getTracks()Landroid/webkit/HTML5VideoViewProxy$TracksData;

    move-result-object v8

    .line 1448
    .local v8, tracks:Landroid/webkit/HTML5VideoViewProxy$TracksData;
    iget-object v1, v8, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackSrc:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v6, v1, 0x1

    .line 1449
    .local v6, count:I
    new-array v4, v6, [Ljava/lang/String;

    .line 1450
    .local v4, items:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x20b03ad

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v4, v2

    .line 1451
    const/4 v7, 0x1

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 1452
    iget-object v1, v8, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLabel:[Ljava/lang/String;

    add-int/lit8 v2, v7, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v8, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLabel:[Ljava/lang/String;

    add-int/lit8 v2, v7, -0x1

    aget-object v1, v1, v2

    :goto_1
    aput-object v1, v4, v7

    .line 1451
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1452
    :cond_0
    iget-object v1, v8, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    add-int/lit8 v2, v7, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v8, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    add-int/lit8 v2, v7, -0x1

    aget-object v1, v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, v8, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackSrc:[Ljava/lang/String;

    add-int/lit8 v2, v7, -0x1

    aget-object v1, v1, v2

    iget-object v2, v8, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackSrc:[Ljava/lang/String;

    add-int/lit8 v3, v7, -0x1

    aget-object v2, v2, v3

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1458
    :cond_2
    iget v1, v8, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackPlayed:I

    add-int/lit8 v5, v1, 0x1

    .line 1460
    .local v5, selection:I
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/webkit/HTML5VideoViewProxy$2;

    invoke-direct {v3, p0}, Landroid/webkit/HTML5VideoViewProxy$2;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;-><init>(Landroid/webkit/HTML5VideoViewProxy;Landroid/content/Context;Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;[Ljava/lang/String;I)V

    .line 1469
    .local v0, selectTrackDialog:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;
    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->show()V

    .line 1470
    return-void
.end method

.method private sendTimeupdate()V
    .locals 3

    .prologue
    .line 1187
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1188
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1189
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1190
    return-void
.end method

.method private setDirectFullScreen(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 155
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsDirectFullScreen:Z

    .line 156
    return-void
.end method

.method private storeSubtitleSettingsPrefs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "characterColor"
    .parameter "backgroundColor"
    .parameter "windowColor"
    .parameter "font"
    .parameter "characterSize"
    .parameter "characterEdge"

    .prologue
    .line 1421
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SubtitleSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1422
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "subtitle_color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1423
    const-string/jumbo v1, "subtitle_background_color"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1424
    const-string/jumbo v1, "subtitle_window_color"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1425
    const-string/jumbo v1, "subtitle_font"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1426
    const-string/jumbo v1, "subtitle_size"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1427
    const-string/jumbo v1, "subtitle_edge"

    invoke-interface {v0, v1, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1429
    return-void
.end method


# virtual methods
.method public dispatchOnEnded()V
    .locals 3

    .prologue
    .line 788
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 789
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 790
    return-void
.end method

.method public dispatchOnEnterFromLGBrowser()V
    .locals 3

    .prologue
    .line 810
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xce

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 811
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 812
    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    .prologue
    .line 793
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 795
    return-void
.end method

.method public dispatchOnRestoreState()V
    .locals 3

    .prologue
    .line 804
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 805
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 806
    return-void
.end method

.method public dispatchOnStopFullScreen(Z)V
    .locals 3
    .parameter "stillPlaying"

    .prologue
    .line 798
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 799
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 800
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 801
    return-void

    .line 799
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enterFullScreenVideo(ILjava/lang/String;)V
    .locals 1
    .parameter "layerId"
    .parameter "url"

    .prologue
    .line 1554
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p1, p2, p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    .line 1555
    return-void
.end method

.method public enterFullscreenForVideoLayer(Ljava/lang/String;I)V
    .locals 2
    .parameter "url"
    .parameter "videoLayerID"

    .prologue
    .line 1220
    if-nez p1, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 1224
    :cond_0
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1225
    .local v0, message:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1226
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1227
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public exitFullScreenVideo()V
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    .line 1559
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 847
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 849
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 850
    .local v2, url:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 851
    .local v0, client:Landroid/webkit/WebChromeClient;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 852
    .local v3, videoLayerID:I
    if-eqz v0, :cond_0

    .line 854
    sput-boolean v5, Landroid/webkit/HTML5VideoViewProxy;->mIsInlineVideoEnded:Z

    .line 856
    iget v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v2, v4, p0, v0, v3}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;I)V

    goto :goto_0

    .line 861
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #videoLayerID:I
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 862
    .restart local v2       #url:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 863
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 864
    .restart local v3       #videoLayerID:I
    if-eqz v0, :cond_0

    .line 865
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v3, v2, p0, v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 871
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #videoLayerID:I
    :sswitch_2
    sput-boolean v5, Landroid/webkit/HTML5VideoViewProxy;->mIsInlineVideoEnded:Z

    .line 873
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 874
    .local v1, time:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    .line 875
    iget v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v4, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->seek(ILandroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 879
    .end local v1           #time:Ljava/lang/Integer;
    :sswitch_3
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 883
    :sswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_1

    .line 885
    sput-boolean v6, Landroid/webkit/HTML5VideoViewProxy;->mIsInlineVideoEnded:Z

    .line 887
    invoke-static {v6}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$1002(Z)Z

    .line 889
    :cond_1
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    goto :goto_0

    .line 892
    :sswitch_5
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 893
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_2

    .line 894
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 897
    :cond_2
    iput v5, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    goto :goto_0

    .line 902
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_6
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 903
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 909
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_7
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 910
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto :goto_0

    .line 915
    :sswitch_8
    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v6}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$1100(Z)V

    goto :goto_0

    .line 919
    :sswitch_9
    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$1100(Z)V

    goto :goto_0

    .line 924
    :sswitch_a
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->getSubtitleSettingsPrefs()V

    goto/16 :goto_0

    .line 928
    :sswitch_b
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->selectTrack()V

    goto/16 :goto_0

    .line 847
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_1
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0xc9 -> :sswitch_4
        0x12c -> :sswitch_7
    .end sparse-switch
.end method

.method public isInCallingState()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1263
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1265
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    const-string/jumbo v3, "net.ims.vt.incall"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1267
    .local v1, mVTStatus:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return v2

    .line 1271
    :cond_1
    if-eqz v1, :cond_2

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1274
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1287
    if-nez p1, :cond_0

    .line 1288
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1289
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1299
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 1293
    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    .line 1294
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 1297
    :cond_1
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .line 1298
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 777
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 778
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 783
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 840
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 841
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1601
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 1602
    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1606
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1603
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 1604
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1611
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 1612
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1619
    :goto_0
    return v0

    .line 1614
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1615
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 1619
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 760
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    .line 761
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 762
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 763
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 767
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 768
    return-void
.end method

.method public onTimeupdate()V
    .locals 1

    .prologue
    .line 816
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 817
    return-void
.end method

.method public onTimeupdateManually(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 821
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 822
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 823
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 824
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1244
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1245
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1246
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 0

    .prologue
    .line 1550
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pauseAndDispatch()V

    .line 1551
    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2
    .parameter "url"
    .parameter "position"
    .parameter "videoLayerID"

    .prologue
    .line 1202
    if-nez p1, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1206
    :cond_0
    if-lez p2, :cond_1

    .line 1207
    invoke-virtual {p0, p2}, Landroid/webkit/HTML5VideoViewProxy;->seek(I)V

    .line 1209
    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1210
    .local v0, message:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1211
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1212
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public requestSubtitleSettings()V
    .locals 2

    .prologue
    .line 1433
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1434
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1435
    return-void
.end method

.method public seek(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 1235
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1236
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1237
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1238
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 1546
    invoke-static {p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 1547
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 829
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcf

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 830
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 831
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 832
    return-void
.end method

.method public setTracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "src"
    .parameter "lang"
    .parameter "label"
    .parameter "kind"
    .parameter "trackPlayed"

    .prologue
    .line 1310
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$TracksData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy$TracksData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy;->mTracksData:Landroid/webkit/HTML5VideoViewProxy$TracksData;

    .line 1311
    return-void
.end method

.method public showCannotPlayToast()V
    .locals 3

    .prologue
    .line 1278
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x20b0032

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1279
    return-void
.end method

.method public showSelectTrackDialog()V
    .locals 3

    .prologue
    .line 1439
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy;->mTracksData:Landroid/webkit/HTML5VideoViewProxy$TracksData;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->getTracks()Landroid/webkit/HTML5VideoViewProxy$TracksData;

    move-result-object v1

    iget v1, v1, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackPlayed:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1443
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public teardown()V
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 1257
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 1258
    return-void
.end method
