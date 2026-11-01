.class public Landroid/support/v4/bx;
.super Landroid/text/format/DateUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/bx$do;
    }
.end annotation


# static fields
.field public static final do:I = 0x0

.field public static final for:I = 0x2

.field public static final if:I = 0x1

.field public static final new:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/format/DateUtils;-><init>()V

    return-void
.end method

.method public static break(Ljava/util/Date;Ljava/util/Date;)J
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, p1, v0}, Landroid/support/v4/bx;->new(Ljava/util/Date;Ljava/util/Date;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static case(Ljava/util/Date;Ljava/util/Date;)[J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Landroid/support/v4/bx;->try(J)[J

    move-result-object p0

    return-object p0
.end method

.method public static catch(JJ)J
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/v4/bx;->for(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static class(Ljava/util/Date;Ljava/util/Date;)J
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Landroid/support/v4/bx;->new(Ljava/util/Date;Ljava/util/Date;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static const(JJ)J
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/v4/bx;->for(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static do(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Landroid/support/v4/bx;->if(II)I

    move-result p0

    return p0
.end method

.method public static else(JJ)J
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/v4/bx;->for(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final(Ljava/util/Date;Ljava/util/Date;)J
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/support/v4/bx;->new(Ljava/util/Date;Ljava/util/Date;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static for(JJI)J
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p0, p4}, Landroid/support/v4/bx;->new(Ljava/util/Date;Ljava/util/Date;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static goto(Ljava/util/Date;Ljava/util/Date;)J
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {p0, p1, v0}, Landroid/support/v4/bx;->new(Ljava/util/Date;Ljava/util/Date;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static if(II)I
    .locals 7

    const-string v0, "1"

    const-string v1, "3"

    const-string v2, "5"

    const-string v3, "7"

    const-string v4, "8"

    const-string v5, "10"

    const-string v6, "12"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "6"

    const-string v3, "9"

    const-string v4, "11"

    .line 2
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x1f

    return p0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x1e

    return p0

    :cond_1
    const/16 p1, 0x1d

    if-gtz p0, :cond_2

    return p1

    .line 7
    :cond_2
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_3

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_4

    :cond_3
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_5

    :cond_4
    return p1

    :cond_5
    const/16 p0, 0x1c

    return p0
.end method

.method public static import(Ljava/util/Date;)Z
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x6

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "date is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static native(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/bx;->public(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static new(Ljava/util/Date;Ljava/util/Date;I)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/bx;->case(Ljava/util/Date;Ljava/util/Date;)[J

    move-result-object p0

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    aget-wide p1, p0, p1

    return-wide p1

    :cond_0
    if-ne p2, p1, :cond_1

    .line 3
    aget-wide p1, p0, v0

    return-wide p1

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    const/4 p1, 0x0

    .line 4
    aget-wide p1, p0, p1

    return-wide p1

    .line 5
    :cond_2
    aget-wide p1, p0, p1

    return-wide p1
.end method

.method public static public(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Landroid/support/v4/uv0;->extends(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static return(Ljava/lang/String;)I
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "0"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Landroid/support/v4/uv0;->extends(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static super(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static this(JJ)J
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/v4/bx;->for(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static throw(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/bx;->while(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static try(J)[J
    .locals 14

    const-wide/32 v0, 0x5265c00

    .line 1
    div-long v2, p0, v0

    .line 2
    rem-long/2addr p0, v0

    const-wide/32 v0, 0x36ee80

    .line 3
    div-long v4, p0, v0

    .line 4
    rem-long/2addr p0, v0

    const-wide/32 v0, 0xea60

    .line 5
    div-long v6, p0, v0

    .line 6
    rem-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    .line 7
    div-long v0, p0, v0

    .line 8
    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v9, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v10, 0x1

    aput-object p0, v9, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v11, 0x2

    aput-object p0, v9, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v12, 0x3

    aput-object p0, v9, v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v13, 0x4

    aput-object p0, v9, v13

    const-string p0, "different: %d ms, %d days, %d hours, %d minutes, %d seconds"

    .line 10
    invoke-static {v8, p0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/uv0;->public(Ljava/lang/String;)V

    new-array p0, v13, [J

    aput-wide v2, p0, p1

    aput-wide v4, p0, v10

    aput-wide v6, p0, v11

    aput-wide v0, p0, v12

    return-object p0
.end method

.method public static while(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
