.class public Landroid/support/v4/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:Lorg/apache/commons/lang3/time/for;

.field public static final case:Lorg/apache/commons/lang3/time/for;

.field private static final do:Ljava/util/TimeZone;

.field public static final else:Lorg/apache/commons/lang3/time/for;

.field public static final for:Lorg/apache/commons/lang3/time/for;

.field public static final goto:Lorg/apache/commons/lang3/time/for;

.field public static final if:Lorg/apache/commons/lang3/time/for;

.field public static final new:Lorg/apache/commons/lang3/time/for;

.field public static final this:Lorg/apache/commons/lang3/time/for;

.field public static final try:Lorg/apache/commons/lang3/time/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "GMT"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ax;->do:Ljava/util/TimeZone;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 2
    invoke-static {v0}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ax;->if:Lorg/apache/commons/lang3/time/for;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZZ"

    .line 3
    invoke-static {v0}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ax;->for:Lorg/apache/commons/lang3/time/for;

    const-string v0, "yyyy-MM-dd"

    .line 4
    invoke-static {v0}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ax;->new:Lorg/apache/commons/lang3/time/for;

    const-string v0, "yyyy-MM-ddZZ"

    .line 5
    invoke-static {v0}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ax;->try:Lorg/apache/commons/lang3/time/for;

    const-string v0, "\'T\'HH:mm:ss"

    .line 6
    invoke-static {v0}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ax;->case:Lorg/apache/commons/lang3/time/for;

    const-string v0, "\'T\'HH:mm:ssZZ"

    .line 7
    invoke-static {v0}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ax;->else:Lorg/apache/commons/lang3/time/for;

    const-string v0, "HH:mm:ss"

    .line 8
    invoke-static {v0}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ax;->goto:Lorg/apache/commons/lang3/time/for;

    const-string v0, "HH:mm:ssZZ"

    .line 9
    invoke-static {v0}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ax;->this:Lorg/apache/commons/lang3/time/for;

    .line 10
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/for;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ax;->break:Lorg/apache/commons/lang3/time/for;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static case(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Landroid/support/v4/ax;->goto(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/for;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lorg/apache/commons/lang3/time/for;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static const(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Landroid/support/v4/ax;->do:Ljava/util/TimeZone;

    const/4 p1, 0x0

    invoke-static {v0, p2, p0, p1}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static do(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0, p0}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static else(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/ax;->goto(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Landroid/support/v4/ax;->do:Ljava/util/TimeZone;

    invoke-static {v0, p2, p0, p3}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static for(JLjava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p3, p0}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/for;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lorg/apache/commons/lang3/time/for;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0, p3}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static new(JLjava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2, p3, p4}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static super(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/ax;->do:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static this(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static throw(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/ax;->do:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Landroid/support/v4/ax;->class(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Landroid/support/v4/ax;->goto(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
