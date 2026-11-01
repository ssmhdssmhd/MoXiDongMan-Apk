.class public Lcom/wsw/cospa/model/Debug;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/model/Debug$CallBack;
    }
.end annotation


# static fields
.field public static for:Ljava/lang/String;

.field private static final new:Ljava/text/DateFormat;

.field private static try:J


# instance fields
.field private do:Lcom/wsw/cospa/model/Debug$CallBack;

.field private if:Landroid/support/v4/cq;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "[mm:ss.SSS]"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/wsw/cospa/model/Debug;->new:Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/cq;Lcom/wsw/cospa/model/Debug$CallBack;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/wsw/cospa/model/Debug;->try:J

    .line 3
    sput-object p1, Lcom/wsw/cospa/model/Debug;->for:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/wsw/cospa/model/Debug;->do:Lcom/wsw/cospa/model/Debug$CallBack;

    .line 5
    iput-object p3, p0, Lcom/wsw/cospa/model/Debug;->if:Landroid/support/v4/cq;

    .line 6
    invoke-static {p2}, Landroid/support/v4/fd2;->new(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;-><init>()V

    .line 8
    sget-object p3, Lcom/wsw/cospa/model/Debug;->for:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->setTag(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setNoteUrl(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->setGroup(Ljava/lang/Integer;)V

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterPage(Ljava/lang/Integer;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    const/4 p2, 0x1

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/model/Debug;->break(Lcom/wsw/cospa/bean/ComicShelfBean;Z)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, p2}, Lcom/wsw/cospa/model/Debug;->while(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private break(Lcom/wsw/cospa/bean/ComicShelfBean;Z)V
    .locals 2

    if-nez p2, :cond_0

    const-string p2, "\n"

    .line 1
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/model/Debug;->const()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "\u2605%s \u8be6\u60c5\u5f00\u59cb"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/model/while;->else(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    new-instance p2, Lcom/wsw/cospa/model/Debug$if;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/model/Debug$if;-><init>(Lcom/wsw/cospa/model/Debug;)V

    .line 6
    invoke-virtual {p1, p2}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/model/Debug;Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/Debug;->this(Lcom/wsw/cospa/bean/ChapterListBean;)V

    return-void
.end method

.method public static catch()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/model/while;->try()V

    return-void
.end method

.method private class()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug;->do:Lcom/wsw/cospa/model/Debug$CallBack;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/wsw/cospa/model/Debug$CallBack;->finish()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/hwangjr/rxbus/RxBus;->get()Lcom/hwangjr/rxbus/Bus;

    move-result-object v0

    const-string v1, "printDebugLog"

    const-string v2, "finish"

    invoke-virtual {v0, v1, v2}, Lcom/hwangjr/rxbus/Bus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static const()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/wsw/cospa/model/Debug;->new:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/wsw/cospa/model/Debug;->try:J

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/Debug;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/Debug;->if:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synthetic else(Lcom/wsw/cospa/model/Debug;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/model/Debug;->class()V

    return-void
.end method

.method public static final(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/cq;Lcom/wsw/cospa/model/Debug$CallBack;)V
    .locals 1
    .param p2    # Landroid/support/v4/cq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/wsw/cospa/model/Debug$CallBack;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u56fe\u6e90url\u4e0d\u80fd\u4e3a\u7a7a"

    .line 2
    invoke-interface {p3, p0}, Lcom/wsw/cospa/model/Debug$CallBack;->printError(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/support/v4/l22;->package(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a"

    .line 5
    invoke-interface {p3, p0}, Lcom/wsw/cospa/model/Debug$CallBack;->printError(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/wsw/cospa/model/Debug;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/wsw/cospa/model/Debug;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/cq;Lcom/wsw/cospa/model/Debug$CallBack;)V

    return-void
.end method

.method public static synthetic for()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/Debug;->const()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goto(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 3

    const-string v0, "\n"

    .line 1
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/wsw/cospa/model/Debug;->const()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u2605%s \u76ee\u5f55\u5f00\u59cb"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/while;->goto(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/model/Debug$for;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/model/Debug$for;-><init>(Lcom/wsw/cospa/model/Debug;)V

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/model/Debug;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/Debug;->super(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/model/Debug;Lcom/wsw/cospa/bean/ComicShelfBean;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/model/Debug;->break(Lcom/wsw/cospa/bean/ComicShelfBean;Z)V

    return-void
.end method

.method private super(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug;->do:Lcom/wsw/cospa/model/Debug$CallBack;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "\u25cf"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "%s%s"

    .line 2
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/Debug$CallBack;->printError(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/hwangjr/rxbus/RxBus;->get()Lcom/hwangjr/rxbus/Bus;

    move-result-object v0

    const-string v1, "printDebugLog"

    invoke-virtual {v0, v1, p1}, Lcom/hwangjr/rxbus/Bus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private this(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 3

    const-string v0, "\n"

    .line 1
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/wsw/cospa/model/Debug;->const()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u2605%s \u6b63\u6587\u5f00\u59cb"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/while;->break(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 5
    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/new;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/new;

    move-result-object p1

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/model/Debug$new;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/model/Debug$new;-><init>(Lcom/wsw/cospa/model/Debug;)V

    .line 7
    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static synthetic try(Lcom/wsw/cospa/model/Debug;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/Debug;->goto(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method private while(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/Debug;->const()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u2605%s \u641c\u7d22\u5f00\u59cb"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/model/Debug;->throw(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v1

    sget-object v4, Lcom/wsw/cospa/model/Debug;->for:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/wsw/cospa/model/while;->while(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/model/Debug$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/model/Debug$do;-><init>(Lcom/wsw/cospa/model/Debug;)V

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public throw(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/Debug;->do:Lcom/wsw/cospa/model/Debug$CallBack;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/wsw/cospa/model/Debug$CallBack;->printLog(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/hwangjr/rxbus/RxBus;->get()Lcom/hwangjr/rxbus/Bus;

    move-result-object v0

    const-string v1, "printDebugLog"

    invoke-virtual {v0, v1, p1}, Lcom/hwangjr/rxbus/Bus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
