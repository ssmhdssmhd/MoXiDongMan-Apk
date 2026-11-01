.class final Lfreemarker/core/o3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/o3$do;
    }
.end annotation


# static fields
.field public static final break:J

.field private static final case:Lfreemarker/cache/break;

.field public static final catch:J = 0x100000000L

.field public static final class:J = 0x200000000L

.field private static final do:Lfreemarker/log/if;

.field public static final else:J

.field private static final for:I = 0x19

.field public static final goto:J

.field private static volatile if:Z

.field private static final new:Ljava/lang/Object;

.field public static final this:J

.field private static try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "freemarker.runtime"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/core/o3;->do:Lfreemarker/log/if;

    .line 2
    invoke-virtual {v0}, Lfreemarker/log/if;->public()Z

    move-result v0

    sput-boolean v0, Lfreemarker/core/o3;->if:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/core/o3;->new:Ljava/lang/Object;

    .line 4
    new-instance v0, Lfreemarker/cache/break;

    const/16 v1, 0x32

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lfreemarker/cache/break;-><init>(II)V

    sput-object v0, Lfreemarker/core/o3;->case:Lfreemarker/cache/break;

    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Lfreemarker/core/o3;->new(I)J

    move-result-wide v0

    sput-wide v0, Lfreemarker/core/o3;->else:J

    const/16 v0, 0x8

    .line 6
    invoke-static {v0}, Lfreemarker/core/o3;->new(I)J

    move-result-wide v0

    sput-wide v0, Lfreemarker/core/o3;->goto:J

    const/4 v0, 0x4

    .line 7
    invoke-static {v0}, Lfreemarker/core/o3;->new(I)J

    move-result-wide v0

    sput-wide v0, Lfreemarker/core/o3;->this:J

    const/16 v0, 0x20

    .line 8
    invoke-static {v0}, Lfreemarker/core/o3;->new(I)J

    move-result-wide v0

    sput-wide v0, Lfreemarker/core/o3;->break:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x63

    if-eq v3, v4, :cond_5

    const/16 v4, 0x66

    if-eq v3, v4, :cond_4

    const/16 v4, 0x69

    if-eq v3, v4, :cond_3

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x72

    if-eq v3, v4, :cond_1

    const/16 v4, 0x73

    if-eq v3, v4, :cond_0

    .line 3
    sget-boolean v4, Lfreemarker/core/o3;->if:Z

    if-eqz v4, :cond_6

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized regular expression flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lfreemarker/core/o3;->try(Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_0
    sget-wide v3, Lfreemarker/core/o3;->break:J

    goto :goto_1

    :cond_1
    const-wide v3, 0x100000000L

    goto :goto_1

    .line 8
    :cond_2
    sget-wide v3, Lfreemarker/core/o3;->goto:J

    goto :goto_1

    .line 9
    :cond_3
    sget-wide v3, Lfreemarker/core/o3;->else:J

    goto :goto_1

    :cond_4
    const-wide v3, 0x200000000L

    goto :goto_1

    .line 10
    :cond_5
    sget-wide v3, Lfreemarker/core/o3;->this:J

    :goto_1
    or-long/2addr v0, v3

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-wide v0
.end method

.method public static do(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/vl2;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lfreemarker/core/o3;->if(Ljava/lang/String;JZ)V

    return-void
.end method

.method public static for(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/o3$do;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/o3$do;-><init>(Ljava/lang/String;I)V

    .line 2
    sget-object v1, Lfreemarker/core/o3;->case:Lfreemarker/cache/break;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v1, v0}, Lfreemarker/cache/break;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    return-object v2

    .line 5
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    monitor-enter v1

    .line 7
    :try_start_2
    invoke-virtual {v1, v0, p0}, Lfreemarker/cache/break;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Landroid/support/v4/vl2;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Malformed regular expression: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/support/v4/dl2;

    invoke-direct {v2, p0}, Landroid/support/v4/dl2;-><init>(Ljava/lang/Throwable;)V

    aput-object v2, v0, v1

    invoke-direct {p1, p0, v0}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p0

    .line 10
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static if(Ljava/lang/String;JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/vl2;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    sget-boolean v0, Lfreemarker/core/o3;->if:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-wide v0, Lfreemarker/core/o3;->goto:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-string p1, "m"

    goto :goto_0

    .line 3
    :cond_1
    sget-wide v0, Lfreemarker/core/o3;->break:J

    and-long/2addr v0, p1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-string p1, "s"

    goto :goto_0

    .line 4
    :cond_2
    sget-wide v0, Lfreemarker/core/o3;->this:J

    and-long/2addr p1, v0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    const-string p1, "c"

    :goto_0
    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "?"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p0, p2, v0

    const/4 p0, 0x2

    const-string v0, " doesn\'t support the \""

    aput-object v0, p2, p0

    const/4 p0, 0x3

    aput-object p1, p2, p0

    const/4 p0, 0x4

    const-string p1, "\" flag without the \"r\" flag."

    aput-object p1, p2, p0

    if-nez p3, :cond_3

    .line 5
    new-instance p0, Lfreemarker/core/z4;

    invoke-direct {p0, p2}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfreemarker/core/z4;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/core/o3;->try(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_3
    new-instance p0, Landroid/support/v4/vl2;

    invoke-direct {p0, p2}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw p0

    :cond_4
    return-void
.end method

.method private static new(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static try(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lfreemarker/core/o3;->if:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lfreemarker/core/o3;->new:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget v1, Lfreemarker/core/o3;->try:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 4
    sput v3, Lfreemarker/core/o3;->try:I

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " This will be an error in some later FreeMarker version!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " [Will not log more regular expression flag problems until restart!]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_1
    sget-object v0, Lfreemarker/core/o3;->do:Lfreemarker/log/if;

    invoke-virtual {v0, p0}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p0, 0x0

    .line 9
    :try_start_1
    sput-boolean p0, Lfreemarker/core/o3;->if:Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
