.class Lfreemarker/core/h1;
.super Lfreemarker/core/g4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/h1$do;
    }
.end annotation


# static fields
.field public static final do:Lfreemarker/core/h1;

.field private static final for:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lfreemarker/core/h1$do;",
            "Ljava/text/NumberFormat;",
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
    new-instance v0, Lfreemarker/core/h1;

    invoke-direct {v0}, Lfreemarker/core/h1;-><init>()V

    sput-object v0, Lfreemarker/core/h1;->do:Lfreemarker/core/h1;

    const-string v0, "freemarker.runtime"

    .line 2
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/core/h1;->if:Lfreemarker/log/if;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lfreemarker/core/h1;->for:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/g4;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/util/Locale;Lfreemarker/core/d0;)Lfreemarker/core/f4;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/vn0;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/h1$do;

    invoke-direct {v0, p1, p2}, Lfreemarker/core/h1$do;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    sget-object v1, Lfreemarker/core/h1;->for:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/NumberFormat;

    if-nez v2, :cond_7

    const-string v2, "number"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_0
    const-string v2, "currency"

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {p2}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v2, "percent"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-static {p2}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string v2, "computer"

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {p3}, Lfreemarker/core/d0;->s1()Ljava/text/NumberFormat;

    move-result-object p2

    goto :goto_0

    .line 11
    :cond_3
    :try_start_0
    invoke-static {p1, p2}, Lfreemarker/core/ExtendedDecimalFormatParser;->const(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/DecimalFormat;

    move-result-object p2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    const/16 p3, 0x400

    if-lt p2, p3, :cond_5

    const/4 p2, 0x0

    .line 13
    const-class v3, Lfreemarker/core/h1;

    monitor-enter v3

    .line 14
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lt v4, p3, :cond_4

    const/4 p2, 0x1

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 16
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_5

    .line 17
    sget-object p2, Lfreemarker/core/h1;->if:Lfreemarker/log/if;

    const-string p3, "Global Java NumberFormat cache has exceeded 1024 entries => cache flushed. Typical cause: Some template generates high variety of format pattern strings."

    invoke-virtual {p2, p3}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 19
    :cond_5
    :goto_2
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/text/NumberFormat;

    if-eqz p2, :cond_7

    move-object v2, p2

    goto :goto_4

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 21
    new-instance p3, Landroid/support/v4/vn0;

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, "Invalid DecimalFormat pattern"

    :goto_3
    invoke-direct {p3, p2, p1}, Landroid/support/v4/vn0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 22
    :cond_7
    :goto_4
    invoke-virtual {v2}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/text/NumberFormat;

    .line 23
    new-instance p3, Lfreemarker/core/g1;

    invoke-direct {p3, p2, p1}, Lfreemarker/core/g1;-><init>(Ljava/text/NumberFormat;Ljava/lang/String;)V

    return-object p3
.end method
