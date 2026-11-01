.class Lfreemarker/core/f1;
.super Lfreemarker/core/a4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/f1$do;
    }
.end annotation


# static fields
.field public static final do:Lfreemarker/core/f1;

.field private static final for:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lfreemarker/core/f1$do;",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final if:Lfreemarker/log/if;

.field private static final new:I = 0x400


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/f1;

    invoke-direct {v0}, Lfreemarker/core/f1;-><init>()V

    sput-object v0, Lfreemarker/core/f1;->do:Lfreemarker/core/f1;

    const-string v0, "freemarker.runtime"

    .line 2
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/core/f1;->if:Lfreemarker/log/if;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lfreemarker/core/f1;->for:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/a4;-><init>()V

    return-void
.end method

.method private for(Ljava/lang/String;)I
    .locals 1

    const-string v0, "short"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const-string v0, "medium"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-string v0, "long"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v0, "full"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method private if(ILjava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xb2;,
            Landroid/support/v4/vn0;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/f1$do;

    invoke-direct {v0, p1, p2, p3, p4}, Lfreemarker/core/f1$do;-><init>(ILjava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)V

    .line 2
    sget-object p3, Lfreemarker/core/f1;->for:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/text/DateFormat;

    if-nez p4, :cond_b

    .line 3
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "_"

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lfreemarker/core/f1;->for(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/f1;->for(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    if-eq p1, v5, :cond_6

    .line 6
    invoke-static {v0}, Lfreemarker/core/f1$do;->do(Lfreemarker/core/f1$do;)Ljava/util/Locale;

    move-result-object p4

    invoke-static {v2, p1, p4}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p4

    goto :goto_2

    .line 7
    :cond_3
    invoke-static {v0}, Lfreemarker/core/f1$do;->do(Lfreemarker/core/f1$do;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p4

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {v0}, Lfreemarker/core/f1$do;->do(Lfreemarker/core/f1$do;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p4

    goto :goto_2

    .line 9
    :cond_5
    new-instance p1, Landroid/support/v4/xb2;

    invoke-direct {p1}, Landroid/support/v4/xb2;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-nez p4, :cond_8

    .line 10
    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {v0}, Lfreemarker/core/f1$do;->do(Lfreemarker/core/f1$do;)Ljava/util/Locale;

    move-result-object p4

    invoke-direct {p1, p2, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 12
    new-instance p3, Landroid/support/v4/vn0;

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    const-string p2, "Invalid SimpleDateFormat pattern"

    :goto_3
    invoke-direct {p3, p2, p1}, Landroid/support/v4/vn0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 13
    :cond_8
    :goto_4
    invoke-static {v0}, Lfreemarker/core/f1$do;->if(Lfreemarker/core/f1$do;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 14
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    const/16 p2, 0x400

    if-lt p1, p2, :cond_a

    const/4 p1, 0x0

    .line 15
    const-class v1, Lfreemarker/core/f1;

    monitor-enter v1

    .line 16
    :try_start_1
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lt v2, p2, :cond_9

    .line 17
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    .line 18
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_a

    .line 19
    sget-object p1, Lfreemarker/core/f1;->if:Lfreemarker/log/if;

    const-string p2, "Global Java DateFormat cache has exceeded 1024 entries => cache flushed. Typical cause: Some template generates high variety of format pattern strings."

    invoke-virtual {p1, p2}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 21
    :cond_a
    :goto_6
    invoke-virtual {p3, v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/DateFormat;

    if-eqz p1, :cond_b

    move-object p4, p1

    .line 22
    :cond_b
    invoke-virtual {p4}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/DateFormat;

    return-object p1
.end method


# virtual methods
.method public do(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;ZLfreemarker/core/d0;)Lfreemarker/core/z3;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xb2;,
            Landroid/support/v4/vn0;
        }
    .end annotation

    .line 1
    new-instance p5, Lfreemarker/core/e1;

    invoke-direct {p0, p2, p1, p3, p4}, Lfreemarker/core/f1;->if(ILjava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-direct {p5, p1}, Lfreemarker/core/e1;-><init>(Ljava/text/DateFormat;)V

    return-object p5
.end method
