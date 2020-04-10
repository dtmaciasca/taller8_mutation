.class public Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;
.super Lorg/wikipedia/recurring/RecurringTask;
.source "AlphaUpdateChecker.java"


# static fields
.field private static final ALPHA_BUILD_APK_URL:Ljava/lang/String; = "https://github.com/wikimedia/apps-android-wikipedia/releases/download/latest/app-alpha-universal-release.apk"

.field private static final ALPHA_BUILD_DATA_URL:Ljava/lang/String; = "https://github.com/wikimedia/apps-android-wikipedia/releases/download/latest/rev-hash.txt"

.field private static final CHANNEL_ID:Ljava/lang/String; = "ALPHA_UPDATE_CHECKER_CHANNEL"

.field private static final PREFERENCE_KEY_ALPHA_COMMIT:Ljava/lang/String; = "alpha_last_checked_commit"

.field private static final RUN_INTERVAL_MILLI:J


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->RUN_INTERVAL_MILLI:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lorg/wikipedia/recurring/RecurringTask;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private showNotification()V
    .locals 7

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://github.com/wikimedia/apps-android-wikipedia/releases/download/latest/app-alpha-universal-release.apk"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 72
    .local v1, "pintent":Landroid/app/PendingIntent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "notification"

    const-string v4, "ALPHA_UPDATE_CHECKER_CHANNEL"

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_0

    .line 73
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v5, 0x2

    const-string v6, "Alpha updates"

    invoke-direct {v2, v4, v6, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 74
    .local v2, "mChannel":Landroid/app/NotificationChannel;
    iget-object v5, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 75
    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 78
    .end local v2    # "mChannel":Landroid/app/NotificationChannel;
    :cond_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    invoke-direct {v2, v5, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    const v5, 0x7f100034

    .line 79
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    const v5, 0x7f100033

    .line 80
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 81
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 84
    .local v2, "notificationBuilder":Landroidx/core/app/NotificationCompat$Builder;
    const v5, 0x7f080117

    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    iget-object v5, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 87
    .local v3, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "alpha-update-checker"

    return-object v0
.end method

.method protected run(Ljava/util/Date;)V
    .locals 4
    .param p1, "lastRun"    # Ljava/util/Date;

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "response":Lokhttp3/Response;
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "https://github.com/wikimedia/apps-android-wikipedia/releases/download/latest/rev-hash.txt"

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 51
    .local v1, "request":Lokhttp3/Request;
    invoke-static {}, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    move-object v0, v2

    .line 52
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 57
    .local v1, "hashString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    .line 61
    :cond_0
    const-string v2, "alpha_last_checked_commit"

    const-string v3, ""

    invoke-static {v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    invoke-direct {p0}, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->showNotification()V

    .line 64
    :cond_1
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 57
    .end local v1    # "hashString":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    .line 60
    :cond_2
    throw v1

    .line 53
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    .line 55
    :cond_3
    return-void
.end method

.method protected shouldRun(Ljava/util/Date;)Z
    .locals 5
    .param p1, "lastRun"    # Ljava/util/Date;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->RUN_INTERVAL_MILLI:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
