.class public Lcom/android/lgesettings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment;,
        Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;,
        Lcom/android/lgesettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/lgesettings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/lgesettings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/lgesettings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment;,
        Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/lgesettings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/lgesettings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/lgesettings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/lgesettings/DataUsageSummary$AppItem;,
        Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;,
        Lcom/android/lgesettings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/lgesettings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field static aboidBlink:Z

.field private static confirmDialogShowed:Z

.field private static isDataDisable:Z

.field private static isbackgrounddatablockcheck:Z

.field private static mContentQueryMap:Landroid/content/ContentQueryMap;

.field private static mDataEnabledChecked:Z

.field private static mPopupdisable:Z

.field private static mSettingsObserver:Ljava/util/Observer;

.field private static mTitleStyle:I

.field private static positiveResult:Z

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;

.field static task:Ljava/util/TimerTask;

.field static timer:Ljava/util/Timer;


# instance fields
.field private mAdapter:Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/lgesettings/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/lgesettings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/lgesettings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field private mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDataEnabledViewListener:Landroid/view/View$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuAutoSync:Landroid/view/MenuItem;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/lgesettings/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;

.field settingsCursor:Landroid/database/Cursor;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 294
    sput-boolean v1, Lcom/android/lgesettings/DataUsageSummary;->mPopupdisable:Z

    .line 296
    sput-boolean v1, Lcom/android/lgesettings/DataUsageSummary;->isDataDisable:Z

    .line 299
    sput v1, Lcom/android/lgesettings/DataUsageSummary;->mTitleStyle:I

    .line 302
    sput-boolean v1, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledChecked:Z

    .line 307
    sput-boolean v1, Lcom/android/lgesettings/DataUsageSummary;->aboidBlink:Z

    .line 308
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/lgesettings/DataUsageSummary;->timer:Ljava/util/Timer;

    .line 309
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$1;

    invoke-direct {v0}, Lcom/android/lgesettings/DataUsageSummary$1;-><init>()V

    sput-object v0, Lcom/android/lgesettings/DataUsageSummary;->task:Ljava/util/TimerTask;

    .line 1252
    sput-boolean v1, Lcom/android/lgesettings/DataUsageSummary;->confirmDialogShowed:Z

    .line 1253
    sput-boolean v1, Lcom/android/lgesettings/DataUsageSummary;->positiveResult:Z

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/lgesettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1974
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/lgesettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/lgesettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 238
    iput v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mInsetSide:I

    .line 269
    iput-boolean v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowWifi:Z

    .line 270
    iput-boolean v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowEthernet:Z

    .line 275
    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;

    .line 281
    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 282
    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 316
    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDialog:Landroid/app/AlertDialog;

    .line 1021
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$5;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 1036
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$6;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1500
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$7;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1606
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$8;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledViewListener:Landroid/view/View$OnClickListener;

    .line 1627
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$9;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1649
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$10;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1669
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$11;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1683
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$12;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1697
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$13;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1818
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$14;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1849
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$15;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$15;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1902
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$16;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChartListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 3313
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$17;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3437
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$18;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$18;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 3504
    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->isConfirmDialogShowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/lgesettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/lgesettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/android/lgesettings/DataUsageSummary;->setConfirmDialogShowed(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/lgesettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/lgesettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/lgesettings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/lgesettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/lgesettings/DataUsageSummary;Lcom/android/lgesettings/net/ChartData;)Lcom/android/lgesettings/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/lgesettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAdapter:Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/lgesettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400()Z
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->getPopupdisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/android/lgesettings/DataUsageSummary;->setPopupdisable(Z)V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/lgesettings/DataUsageSummary;Lcom/android/lgesettings/DataUsageSummary$AppItem;)Lcom/android/lgesettings/DataUsageSummary$AppItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$3700(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/android/lgesettings/DataUsageSummary;->setPositiveResult(Z)V

    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->isPositiveResult()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/lgesettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/lgesettings/DataUsageSummary;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    sput-boolean p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledChecked:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isRememberOptionChecked()Z

    move-result v0

    return v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 968
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 972
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 973
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/lgesettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private checkChamelionRoamingDisable()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3555
    .line 3557
    const-string v0, "310120"

    .line 3558
    const-string v0, "311870"

    .line 3559
    const-string v0, "311490"

    .line 3560
    const-string v0, "000000"

    .line 3561
    const-string v0, "123456"

    .line 3563
    const-string v0, "Sprint"

    .line 3564
    const-string v0, "Boost Mobile"

    .line 3565
    const-string v0, "Virgin Mobile"

    .line 3569
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3570
    const-string v3, "ro.cdma.home.operator.alpha"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3571
    const-string v3, "DataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "operator_numeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    const-string v0, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operator_alpha = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    const-string v0, "ro.sprint.hfa.flag"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3574
    const-string v3, "activationOK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3575
    const-string v0, "DataUsage"

    const-string v3, "HFA yes"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    const-string v0, "ro.sprint.chameleon.flag"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3578
    const-string v3, "payloadOK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3579
    const-string v0, "DataUsage"

    const-string v3, "Payload Data yes"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    move v3, v1

    .line 3590
    :goto_1
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bHAF_activation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bPayload_data = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    if-eqz v3, :cond_9

    .line 3594
    if-eqz v0, :cond_5

    .line 3595
    const-string v0, "Boost Mobile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Virgin Mobile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3597
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "RoamPreference_MenuDisplay"

    invoke-static {v0, v3, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3598
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BM VG Chamelion_display = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    :goto_2
    if-nez v0, :cond_a

    :goto_3
    return v1

    .line 3582
    :cond_1
    const-string v0, "DataUsage"

    const-string v3, "Payload Data No"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 3583
    goto :goto_0

    .line 3587
    :cond_2
    const-string v0, "DataUsage"

    const-string v3, "HFA  No"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v3, v2

    .line 3588
    goto :goto_1

    .line 3599
    :cond_3
    const-string v0, "Sprint"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3600
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "RoamPreference_MenuDisplay"

    invoke-static {v0, v3, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3601
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPR Chamelion_display = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3603
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "RoamPreference_MenuDisplay"

    invoke-static {v0, v3, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3604
    const-string v3, "DataUsage"

    const-string v4, "Chamelion_display : 1 (other)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3608
    :cond_5
    const-string v0, "Boost Mobile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Virgin Mobile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3611
    :cond_6
    const-string v0, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM VG Chamelion_display = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_2

    .line 3612
    :cond_7
    const-string v0, "Sprint"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3614
    const-string v0, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPR Chamelion_display = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_2

    .line 3617
    :cond_8
    const-string v0, "DataUsage"

    const-string v3, "Chamelion_display : 1 (other)"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_2

    :cond_9
    move v0, v1

    .line 3621
    goto/16 :goto_2

    :cond_a
    move v1, v2

    .line 3624
    goto/16 :goto_3
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3072
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 3073
    if-nez v0, :cond_0

    move-object v0, v1

    .line 3085
    :goto_0
    return-object v0

    .line 3075
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 3085
    goto :goto_0

    .line 3077
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 3079
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 3081
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 3083
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 3075
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static convertArabNum(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2002
    .line 2003
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 2004
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2006
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2007
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 2008
    if-ltz v2, :cond_0

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    .line 2009
    new-instance v3, Ljava/lang/Character;

    add-int/lit16 v2, v2, 0x660

    int-to-char v2, v2

    invoke-direct {v3, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 2006
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2011
    :cond_0
    new-instance v2, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_1

    .line 2015
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 2016
    if-eqz p1, :cond_2

    .line 2019
    :goto_2
    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 953
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 965
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 958
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 959
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 961
    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 962
    .local v0, chartTransition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 963
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 964
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1978
    .line 1980
    sget-object v8, Lcom/android/lgesettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1981
    :try_start_0
    sget-object v0, Lcom/android/lgesettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1986
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1987
    sget-object v1, Lcom/android/lgesettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10014

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->convertArabNum(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    .line 1990
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/lgesettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10014

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    goto :goto_0

    .line 1994
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1897
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1898
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1899
    const-string v1, "test.subscriberid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1336
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/lgesettings/DataUsageSummary$AppItem;->key:I

    .line 1337
    .local v0, uid:I
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1338
    .local v1, uidPolicy:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1291
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1292
    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getPopupdisable()Z
    .locals 1

    .prologue
    .line 3433
    sget-boolean v0, Lcom/android/lgesettings/DataUsageSummary;->mPopupdisable:Z

    return v0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 3118
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3098
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 3099
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 3103
    const-string v3, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MPCS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3104
    :cond_0
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    .line 3109
    :cond_1
    :goto_0
    return v0

    .line 3105
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 3107
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    goto :goto_0

    .line 3109
    :cond_3
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 3141
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 3142
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3187
    const v0, 0x7f04004d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3189
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3190
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 3178
    const v0, 0x7f0400e4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3179
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3181
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3182
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 3256
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3257
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3261
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3262
    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3263
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 3265
    new-instance v3, Lcom/android/lgesettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/lgesettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3266
    new-instance v3, Lcom/android/lgesettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/lgesettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 3267
    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3303
    if-nez p0, :cond_1

    .line 3308
    :cond_0
    :goto_0
    return v0

    .line 3306
    :cond_1
    const-string v1, "Airplanemodeenabler"

    const-string v2, "isAirplaneModeOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1283
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1286
    :goto_0
    return v0

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isConfirmDialogShowed()Z
    .locals 1

    .prologue
    .line 1256
    sget-boolean v0, Lcom/android/lgesettings/DataUsageSummary;->confirmDialogShowed:Z

    return v0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1240
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1878
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1879
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1880
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1881
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1883
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 2
    .parameter "policy"

    .prologue
    const/4 v0, 0x0

    .line 1273
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    if-nez v1, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isPositiveResult()Z
    .locals 1

    .prologue
    .line 1264
    sget-boolean v0, Lcom/android/lgesettings/DataUsageSummary;->positiveResult:Z

    return v0
.end method

.method private isRememberOptionChecked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 410
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_connectivity_pop_rem"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .parameter "restrictBackground"

    .prologue
    .line 1343
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1344
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateBody()V

    .line 1351
    :goto_0
    return-void

    .line 1347
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/lgesettings/DataUsageSummary$AppItem;->key:I

    .line 1348
    .local v0, uid:I
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1350
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1348
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static setConfirmDialogShowed(Z)V
    .locals 0
    .parameter "showed"

    .prologue
    .line 1260
    sput-boolean p0, Lcom/android/lgesettings/DataUsageSummary;->confirmDialogShowed:Z

    .line 1261
    return-void
.end method

.method private setDataRoaming(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1299
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1300
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1301
    return-void

    .line 1299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1247
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 1248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1249
    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 4
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1889
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1890
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1891
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1892
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 1894
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 2
    .parameter "limitBytes"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1222
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2
    .parameter "warningBytes"

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1216
    return-void
.end method

.method private static setPopupdisable(Z)V
    .locals 0
    .parameter "popupdisable"

    .prologue
    .line 3429
    sput-boolean p0, Lcom/android/lgesettings/DataUsageSummary;->mPopupdisable:Z

    .line 3430
    return-void
.end method

.method private static setPositiveResult(Z)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1268
    sput-boolean p0, Lcom/android/lgesettings/DataUsageSummary;->positiveResult:Z

    .line 1269
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3287
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3289
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3290
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 3
    .parameter "parent"
    .parameter "resId"

    .prologue
    .line 3274
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3276
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/DataUsageSummary;->mTitleStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3279
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 3280
    return-void
.end method

.method private updateAppDetail()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1139
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1140
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1141
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1143
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1144
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v2, v1}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1156
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-virtual {v2, v13}, Lcom/android/lgesettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1159
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;

    iget v6, v2, Lcom/android/lgesettings/DataUsageSummary$AppItem;->key:I

    .line 1160
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/lgesettings/net/UidDetailProvider;

    invoke-virtual {v2, v6, v0}, Lcom/android/lgesettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/lgesettings/net/UidDetail;

    move-result-object v2

    .line 1161
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/lgesettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1163
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1164
    iget-object v7, v2, Lcom/android/lgesettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 1165
    iget-object v7, v2, Lcom/android/lgesettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    .line 1166
    iget-object v10, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/lgesettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1147
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 1151
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1210
    :goto_1
    return-void

    .line 1169
    :cond_1
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/lgesettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/lgesettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1173
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 1174
    if-eqz v5, :cond_4

    array-length v2, v5

    if-lez v2, :cond_4

    .line 1175
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1176
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    array-length v7, v5

    move v2, v1

    :goto_2
    if-ge v2, v7, :cond_6

    aget-object v8, v5, v2

    .line 1181
    iget-object v9, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    iget-object v8, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v4, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1188
    :goto_3
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1189
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1196
    :goto_4
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateDetailData()V

    .line 1198
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1200
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0807f7

    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1201
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0807f8

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1204
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 1180
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1192
    :cond_4
    iput-object v13, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1193
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 1208
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 1050
    iput-boolean v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mBinding:Z

    .line 1051
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    :goto_0
    return-void

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1056
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v5

    .line 1057
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 1059
    :goto_1
    if-nez v5, :cond_2

    .line 1060
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1057
    goto :goto_1

    .line 1064
    :cond_2
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1067
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1068
    :cond_3
    iput-object v5, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 1071
    const-string v6, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1072
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    :goto_2
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 1079
    const-string v0, "mobile"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1080
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v3, v0, :cond_4

    const-string v0, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v3, v0, :cond_4

    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_7

    .line 1082
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f080a7c

    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1086
    :goto_3
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0807e8

    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1088
    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 1121
    :goto_4
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;

    invoke-static {v3, v4}, Lcom/android/lgesettings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/lgesettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1125
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1127
    iput-boolean v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    .line 1074
    :cond_5
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_5

    .line 1084
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0807f3

    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_3

    .line 1090
    :cond_8
    const-string v0, "3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1091
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0807f4

    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1092
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0807ea

    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1094
    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_4

    .line 1096
    :cond_9
    const-string v0, "4g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1097
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0807f5

    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1098
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0807e9

    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1100
    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_4

    .line 1102
    :cond_a
    const-string v0, "wifi"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1104
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_4

    .line 1108
    :cond_b
    const-string v0, "ethernet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1110
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_4

    .line 1115
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 14
    .parameter

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000

    const/4 v11, 0x0

    .line 1434
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/lgesettings/DataUsageSummary$CycleItem;

    .line 1435
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1437
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1441
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    if-eqz v0, :cond_8

    .line 1442
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    iget-object v0, v0, Lcom/android/lgesettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    .line 1443
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    iget-object v0, v0, Lcom/android/lgesettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 1446
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1447
    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move-wide v9, v12

    .line 1448
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v7, v12, v2

    .line 1451
    :goto_2
    if-eqz p1, :cond_5

    .line 1453
    invoke-static {v7, v8, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v11

    .line 1456
    :goto_3
    cmp-long v2, v4, v9

    if-lez v2, :cond_0

    .line 1457
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1458
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v12, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1462
    const/4 v0, 0x1

    move-wide v4, v2

    .line 1463
    goto :goto_3

    .line 1466
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, p1}, Lcom/android/lgesettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1469
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v7

    .line 1472
    :goto_5
    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 1473
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 1474
    iget-object v7, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 1476
    goto :goto_5

    .line 1478
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1482
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1483
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/lgesettings/DataUsageSummary$CycleItem;)I

    move-result v3

    .line 1484
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary$CycleItem;

    .line 1489
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1490
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1498
    :goto_6
    return-void

    .line 1493
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    .line 1496
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    move-wide v7, v2

    goto/16 :goto_2

    :cond_7
    move-wide v9, v7

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v7, v9

    goto/16 :goto_0
.end method

.method private updateDetailData()V
    .locals 17

    .prologue
    .line 1744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v8

    .line 1745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v4

    .line 1746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1748
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 1750
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/DataUsageSummary$CycleItem;

    .line 1751
    iget-wide v10, v1, Lcom/android/lgesettings/DataUsageSummary$CycleItem;->start:J

    .line 1752
    iget-wide v2, v1, Lcom/android/lgesettings/DataUsageSummary$CycleItem;->end:J

    .line 1754
    cmp-long v13, v8, v10

    if-ltz v13, :cond_0

    cmp-long v13, v4, v2

    if-lez v13, :cond_8

    .line 1756
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCurCycleItem = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 1757
    invoke-static {v12, v8, v9, v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 1758
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "before mCurDateRange = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 1759
    cmp-long v1, v8, v10

    if-gez v1, :cond_1

    move-wide v8, v10

    .line 1760
    :cond_1
    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    move-wide v1, v2

    .line 1761
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-virtual {v3, v8, v9, v1, v2}, Lcom/android/lgesettings/widget/ChartDataUsageView;->updateValueAdjustRange(JJ)V

    .line 1762
    invoke-static {v12, v8, v9, v1, v2}, Lcom/android/lgesettings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    .line 1763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after mCurDateRange = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    move-wide v4, v1

    move-wide v2, v8

    .line 1766
    :goto_1
    const/4 v8, 0x0

    .line 1767
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    iget-object v1, v1, Lcom/android/lgesettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v1, :cond_4

    .line 1769
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    iget-object v1, v1, Lcom/android/lgesettings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 1770
    iget-wide v9, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v13

    .line 1771
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    iget-object v1, v1, Lcom/android/lgesettings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    .line 1772
    iget-wide v13, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v15, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v13, v15

    .line 1774
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mAppPieChart:Lcom/android/lgesettings/widget/PieChartView;

    const/16 v8, 0xaf

    invoke-virtual {v1, v8}, Lcom/android/lgesettings/widget/PieChartView;->setOriginAngle(I)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mAppPieChart:Lcom/android/lgesettings/widget/PieChartView;

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/PieChartView;->removeAllSlices()V

    .line 1777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mAppPieChart:Lcom/android/lgesettings/widget/PieChartView;

    const-string v8, "#d88d3a"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v13, v14, v8}, Lcom/android/lgesettings/widget/PieChartView;->addSlice(JI)V

    .line 1778
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mAppPieChart:Lcom/android/lgesettings/widget/PieChartView;

    const-string v8, "#666666"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v9, v10, v8}, Lcom/android/lgesettings/widget/PieChartView;->addSlice(JI)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mAppPieChart:Lcom/android/lgesettings/widget/PieChartView;

    invoke-virtual {v1}, Lcom/android/lgesettings/widget/PieChartView;->generatePath()V

    .line 1782
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static {v12, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    invoke-static {v12, v13, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    iget-object v1, v1, Lcom/android/lgesettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 1788
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1800
    :goto_2
    if-eqz v8, :cond_6

    iget-wide v6, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v8, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v6, v8

    .line 1801
    :goto_3
    invoke-static {v12, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 1802
    invoke-static {v12, v2, v3, v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v2

    .line 1805
    const-string v1, "mobile"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3g"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "4g"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1807
    :cond_2
    const v1, 0x7f080811

    .line 1812
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lcom/android/lgesettings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1815
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1816
    return-void

    :cond_3
    move-wide v1, v4

    .line 1760
    goto/16 :goto_0

    .line 1791
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    if-eqz v1, :cond_5

    .line 1792
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/DataUsageSummary;->mChartData:Lcom/android/lgesettings/net/ChartData;

    iget-object v1, v1, Lcom/android/lgesettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 1796
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v7, v2, v3, v4, v5}, Lcom/android/lgesettings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/lgesettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v6, v7, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    .line 1800
    :cond_6
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 1809
    :cond_7
    const v1, 0x7f080810

    goto :goto_4

    :cond_8
    move-wide v2, v8

    goto/16 :goto_1
.end method

.method private updatePolicy(Z)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1358
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1359
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 1360
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1369
    :cond_0
    :goto_0
    const-string v2, "mobile"

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1370
    iput-boolean v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mBinding:Z

    .line 1371
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1372
    invoke-static {}, Lcom/android/lgesettings/DataUsageSummary;->isConfirmDialogShowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1373
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1375
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    sput-boolean v2, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledChecked:Z

    .line 1379
    :goto_1
    iput-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mBinding:Z

    .line 1381
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    if-eqz v2, :cond_2

    .line 1382
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDataUsageSwitch(Landroid/widget/Switch;Landroid/widget/CompoundButton$OnCheckedChangeListener;)Z

    .line 1388
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 1389
    invoke-direct {p0, v2}, Lcom/android/lgesettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1391
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1392
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v3, :cond_6

    .line 1395
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v2, :cond_5

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1398
    :cond_6
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1400
    if-eqz v2, :cond_7

    .line 1401
    iput-wide v6, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 1405
    :cond_7
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1406
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    if-eqz v0, :cond_8

    .line 1407
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1421
    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    .line 1423
    invoke-direct {p0, v2}, Lcom/android/lgesettings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1425
    :cond_9
    return-void

    .line 1363
    :cond_a
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 1364
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1377
    :cond_b
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 1413
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1414
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1416
    :cond_d
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    if-eqz v0, :cond_8

    .line 1417
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method

.method private updateTabs()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 982
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 983
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 985
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v3

    .line 986
    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 987
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f0807f0

    invoke-direct {p0, v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 988
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f0807ef

    invoke-direct {p0, v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 992
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 993
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f0807ec

    invoke-direct {p0, v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 995
    :cond_1
    iget-boolean v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 996
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f0807ed

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1000
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-le v3, v1, :cond_6

    .line 1001
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1002
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1003
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1005
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateBody()V

    .line 1009
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 1016
    :cond_3
    :goto_5
    return-void

    .line 989
    :cond_4
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 990
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f0807ee

    invoke-direct {p0, v4, v5}, Lcom/android/lgesettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 999
    goto :goto_1

    :cond_6
    move v1, v2

    .line 1000
    goto :goto_2

    .line 1001
    :cond_7
    const/16 v2, 0x8

    goto :goto_3

    .line 1007
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 1010
    :cond_9
    if-eqz v0, :cond_3

    .line 1012
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateBody()V

    goto :goto_5
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 3153
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 3154
    .local v6, conn:Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 3157
    .local v10, hasEthernet:Z
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 3159
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 3170
    .local v8, ethernetBytes:J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3162
    .end local v8           #ethernetBytes:J
    :catch_0
    move-exception v7

    .line 3163
    .local v7, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3166
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8       #ethernetBytes:J
    goto :goto_0

    .line 3170
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 320
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 322
    .local v6, context:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 324
    invoke-static {v6}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 325
    const-string v0, "hyk"

    const-string v1, "[hyk]if tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mContext:Landroid/content/Context;

    .line 338
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 340
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 342
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 343
    invoke-static {v6}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 345
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "data_usage"

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 347
    new-instance v0, Lcom/android/lgesettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

    .line 348
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->read()V

    .line 350
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_wifi"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowWifi:Z

    .line 351
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_ethernet"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowEthernet:Z

    .line 354
    invoke-static {v6}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    invoke-static {v6}, Lcom/android/lgesettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowWifi:Z

    .line 356
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowEthernet:Z

    .line 359
    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 362
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 363
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v0, "android.skt.intent.action.USER_BACKG_SETTING"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    const-string v0, "register the ACTION_PHONE_STATE_CHANGED for DCM"

    invoke-static {v0}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 372
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "mobile_data"

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->settingsCursor:Landroid/database/Cursor;

    .line 378
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->settingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 379
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->settingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v10, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    sput-object v0, Lcom/android/lgesettings/DataUsageSummary;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 381
    :cond_3
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$2;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    sput-object v0, Lcom/android/lgesettings/DataUsageSummary;->mSettingsObserver:Ljava/util/Observer;

    .line 395
    sget-object v0, Lcom/android/lgesettings/DataUsageSummary;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_4

    .line 396
    sget-object v0, Lcom/android/lgesettings/DataUsageSummary;->mContentQueryMap:Landroid/content/ContentQueryMap;

    sget-object v1, Lcom/android/lgesettings/DataUsageSummary;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 400
    :cond_4
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_5

    .line 401
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 402
    .local v8, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/lgesettings/MDMSettingsAdapter;->addDataUsageSettingPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 407
    .end local v8           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_5
    return-void

    .line 327
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_6
    const-string v0, "hyk"

    const-string v1, "[hyk]if not tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0807d8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 330
    :cond_7
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 333
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080a7c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 334
    :cond_9
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080fa3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 720
    const/high16 v0, 0x7f11

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 721
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x8

    const v8, 0x1020016

    const v7, -0x777778

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 420
    const v0, 0x7f040055

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 422
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/lgesettings/DataUsageSummary;->mTitleStyle:I

    .line 424
    new-instance v0, Lcom/android/lgesettings/net/UidDetailProvider;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/lgesettings/net/UidDetailProvider;

    .line 425
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    const v0, 0x1020012

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 434
    const v0, 0x7f0a00bb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 435
    const v0, 0x1020013

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 436
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 440
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v0

    const/high16 v3, 0x200

    if-ne v0, v3, :cond_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 460
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 462
    const v0, 0x7f040053

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 463
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 466
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 468
    iget v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mInsetSide:I

    if-lez v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mInsetSide:I

    invoke-static {v0, v3}, Lcom/android/lgesettings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 471
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mInsetSide:I

    iget v4, p0, Lcom/android/lgesettings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v3, 0x7f0a00b8

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 478
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v3, 0x7f0a00b9

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 480
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 481
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v0, v3}, Lcom/android/lgesettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 482
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    new-instance v3, Lcom/android/lgesettings/DataUsageSummary$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/DataUsageSummary$3;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 492
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    .line 496
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v0, v3}, Lcom/android/lgesettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 499
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 507
    :cond_3
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-ne v0, v6, :cond_5

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 509
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 514
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 516
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 520
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 522
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 560
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v3, 0x7f0a00ae

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 561
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v3, 0x7f0a00af

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 562
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    .line 563
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 564
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 566
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    .line 567
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mChartListener:Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->setListener(Lcom/android/lgesettings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 568
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 572
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 573
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v1, 0x7f0a00b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 574
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 575
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/widget/PieChartView;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppPieChart:Lcom/android/lgesettings/widget/PieChartView;

    .line 576
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 577
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 578
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v1, 0x7f0a00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 580
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 581
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 584
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 586
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 587
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 588
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 589
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 594
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_PRADAUI:Z

    if-ne v6, v0, :cond_6

    .line 595
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 598
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_PRADAUI:Z

    if-ne v6, v0, :cond_7

    .line 599
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 604
    :cond_7
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/lgesettings/net/UidDetailProvider;

    iget v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v0, v1, v3}, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/lgesettings/net/UidDetailProvider;I)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAdapter:Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;

    .line 605
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 606
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mAdapter:Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 609
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mCycleAdapter:Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 611
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mChart:Lcom/android/lgesettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 614
    return-object v2

    .line 429
    :catch_0
    move-exception v0

    .line 430
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 524
    :cond_8
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-ne v0, v6, :cond_9

    .line 525
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 528
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 529
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 535
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 540
    :cond_9
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v6, :cond_5

    .line 541
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 546
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 548
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 551
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 552
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 914
    sget-object v0, Lcom/android/lgesettings/DataUsageSummary;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 915
    sget-object v0, Lcom/android/lgesettings/DataUsageSummary;->mContentQueryMap:Landroid/content/ContentQueryMap;

    sget-object v1, Lcom/android/lgesettings/DataUsageSummary;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->settingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->settingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 920
    :cond_1
    iput-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 921
    iput-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 923
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/lgesettings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/lgesettings/net/UidDetailProvider;->clearCache()V

    .line 924
    iput-object v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/lgesettings/net/UidDetailProvider;

    .line 926
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 927
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 929
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 934
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 937
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_3

    .line 939
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :cond_3
    :goto_0
    return-void

    .line 940
    :catch_0
    move-exception v0

    .line 941
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 800
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v7, v6

    .line 909
    :cond_0
    :goto_0
    return v7

    .line 803
    :pswitch_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/MDMSettingsAdapter;->isShowDataUsageRoamingToastIfNeed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 810
    :goto_1
    if-eqz v0, :cond_3

    .line 811
    invoke-static {p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    goto :goto_0

    :cond_2
    move v0, v6

    .line 809
    goto :goto_1

    .line 814
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/lgesettings/DataUsageSummary;->setDataRoaming(Z)V

    .line 816
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080f50

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 825
    :pswitch_1
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/MDMSettingsAdapter;->isShowEnforceBackgroundDataRestrictedToastIfNeed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v7

    .line 833
    :goto_2
    if-eqz v0, :cond_8

    .line 834
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 835
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 837
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 838
    invoke-static {p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    goto :goto_0

    :cond_5
    move v0, v6

    .line 832
    goto :goto_2

    .line 841
    :cond_6
    invoke-static {p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    goto :goto_0

    .line 845
    :cond_7
    invoke-static {p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    goto :goto_0

    .line 848
    :cond_8
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 849
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 851
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 852
    invoke-static {p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;->show(Lcom/android/lgesettings/DataUsageSummary;)V

    goto/16 :goto_0

    .line 856
    :cond_9
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto/16 :goto_0

    .line 861
    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto/16 :goto_0

    .line 867
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    move v6, v7

    .line 868
    :cond_b
    invoke-direct {p0, v6}, Lcom/android/lgesettings/DataUsageSummary;->setMobilePolicySplit(Z)V

    .line 869
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 870
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 874
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c

    move v6, v7

    :cond_c
    iput-boolean v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowWifi:Z

    .line 875
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_wifi"

    iget-boolean v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 876
    iget-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 877
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 881
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_d

    move v6, v7

    :cond_d
    iput-boolean v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowEthernet:Z

    .line 882
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_ethernet"

    iget-boolean v2, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 883
    iget-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 884
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 888
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 889
    const-class v1, Lcom/android/lgesettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080812

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 894
    :pswitch_6
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 895
    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip global sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 898
    :cond_e
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/MDMSettingsAdapter;->isShowDataUsageAutoSyncToastIfNeed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_10

    move v6, v7

    :cond_10
    invoke-static {p0, v6}, Lcom/android/lgesettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Lcom/android/lgesettings/DataUsageSummary;Z)V

    goto/16 :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x7f0a0483
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 620
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 628
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 725
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 726
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v5

    .line 727
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 729
    :goto_0
    const v3, 0x7f0a0483

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    .line 732
    const-string v3, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 733
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 738
    :goto_1
    const v3, 0x7f0a0484

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 739
    const-string v3, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 740
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 747
    :goto_2
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_0

    .line 748
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v3

    iget-object v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkEnforceBackgroundDataRestrictedPolicy(Landroid/view/MenuItem;Landroid/widget/CheckBox;)V

    .line 754
    :cond_0
    const v3, 0x7f0a0486

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    .line 755
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 756
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    if-nez v5, :cond_7

    move v3, v1

    :goto_3
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 758
    const v3, 0x7f0a0485

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 759
    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v0, :cond_8

    if-nez v5, :cond_8

    move v0, v1

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 760
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 762
    const v0, 0x7f0a0487

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 763
    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 764
    if-nez v5, :cond_9

    move v0, v1

    :goto_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 765
    iget-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 770
    :goto_6
    const v0, 0x7f0a0488

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 771
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 772
    if-nez v5, :cond_b

    move v0, v1

    :goto_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 773
    iget-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 778
    :goto_8
    const v0, 0x7f0a0489

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 779
    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 780
    :cond_1
    if-nez v5, :cond_d

    :goto_9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 785
    :goto_a
    const v0, 0x7f0a048a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 787
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080882

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 788
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 789
    const/high16 v1, 0x1080

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 791
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 792
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 796
    :goto_b
    return-void

    :cond_2
    move v0, v2

    .line 727
    goto/16 :goto_0

    .line 735
    :cond_3
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->checkChamelionRoamingDisable()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_c
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 736
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->getDataRoaming()Z

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_4
    move v3, v2

    .line 735
    goto :goto_c

    .line 742
    :cond_5
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v4}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v5, :cond_6

    if-eqz v0, :cond_6

    move v3, v1

    :goto_d
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 743
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v6}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_6
    move v3, v2

    .line 742
    goto :goto_d

    :cond_7
    move v3, v2

    .line 756
    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 759
    goto/16 :goto_4

    :cond_9
    move v0, v2

    .line 764
    goto/16 :goto_5

    .line 767
    :cond_a
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_b
    move v0, v2

    .line 772
    goto/16 :goto_7

    .line 775
    :cond_c
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    :cond_d
    move v1, v2

    .line 780
    goto/16 :goto_9

    .line 782
    :cond_e
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 794
    :cond_f
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b
.end method

.method public onResume()V
    .locals 4

    .prologue
    const v3, 0x1020016

    const/4 v2, 0x0

    .line 632
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 657
    const-string v0, "u0"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 659
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowWifi:Z

    .line 661
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mShowEthernet:Z

    .line 666
    :cond_0
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 669
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 670
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 671
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 672
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 673
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/DataUsageSummary;->setMobileDataEnabled(Z)V

    .line 674
    invoke-direct {p0, v2}, Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V

    .line 682
    :cond_1
    :goto_0
    const-string v0, "TLF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/DataUsageSummary;->setMobileDataEnabled(Z)V

    .line 688
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 689
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 693
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary;->updateTabs()V

    .line 696
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageSummary$4;-><init>(Lcom/android/lgesettings/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/DataUsageSummary$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 716
    return-void

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 677
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1307
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1310
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_network_user_background_setting_data"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v4, v5, v0}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1314
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1316
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_network_background_data_roaming_backup"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1322
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1324
    if-ne p1, v1, :cond_3

    .line 1325
    sput-boolean v1, Lcom/android/lgesettings/DataUsageSummary;->isbackgrounddatablockcheck:Z

    .line 1333
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1310
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1316
    goto :goto_1

    .line 1327
    :cond_3
    sput-boolean v2, Lcom/android/lgesettings/DataUsageSummary;->isbackgrounddatablockcheck:Z

    goto :goto_2
.end method
