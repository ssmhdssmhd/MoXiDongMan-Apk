.class public Lorg/apache/commons/lang3/time/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/DateParser;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/new$this;,
        Lorg/apache/commons/lang3/time/new$case;,
        Lorg/apache/commons/lang3/time/new$goto;,
        Lorg/apache/commons/lang3/time/new$try;,
        Lorg/apache/commons/lang3/time/new$else;
    }
.end annotation


# static fields
.field public static final JAPANESE_IMPERIAL:Ljava/util/Locale;

.field private static final break:Lorg/apache/commons/lang3/time/new$else;

.field private static final case:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lorg/apache/commons/lang3/time/new$else;",
            ">;"
        }
    .end annotation
.end field

.field private static final catch:Lorg/apache/commons/lang3/time/new$else;

.field private static final class:Lorg/apache/commons/lang3/time/new$else;

.field private static final const:Lorg/apache/commons/lang3/time/new$else;

.field private static final else:Lorg/apache/commons/lang3/time/new$else;

.field private static final final:Lorg/apache/commons/lang3/time/new$else;

.field private static final goto:Lorg/apache/commons/lang3/time/new$else;

.field private static final import:Lorg/apache/commons/lang3/time/new$else;

.field private static final native:Lorg/apache/commons/lang3/time/new$else;

.field private static final public:Lorg/apache/commons/lang3/time/new$else;

.field private static final return:Lorg/apache/commons/lang3/time/new$else;

.field private static final serialVersionUID:J = 0x2L

.field private static final super:Lorg/apache/commons/lang3/time/new$else;

.field private static final this:Lorg/apache/commons/lang3/time/new$else;

.field private static final throw:Lorg/apache/commons/lang3/time/new$else;

.field private static final try:Ljava/util/regex/Pattern;

.field private static final while:Lorg/apache/commons/lang3/time/new$else;


# instance fields
.field private final century:I

.field private transient do:Ljava/util/regex/Pattern;

.field private transient for:Ljava/lang/String;

.field private transient if:[Lorg/apache/commons/lang3/time/new$else;

.field private final locale:Ljava/util/Locale;

.field private transient new:Lorg/apache/commons/lang3/time/new$else;

.field private final pattern:Ljava/lang/String;

.field private final startYear:I

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    const-string v0, "D+|E+|F+|G+|H+|K+|M+|S+|W+|Z+|a+|d+|h+|k+|m+|s+|w+|y+|z+|\'\'|\'[^\']++(\'\'[^\']*+)*+\'|[^\'A-Za-z]++"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/new;->try:Ljava/util/regex/Pattern;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    .line 3
    sput-object v0, Lorg/apache/commons/lang3/time/new;->case:[Ljava/util/concurrent/ConcurrentMap;

    .line 4
    new-instance v0, Lorg/apache/commons/lang3/time/new$do;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$do;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->else:Lorg/apache/commons/lang3/time/new$else;

    .line 5
    new-instance v0, Lorg/apache/commons/lang3/time/new$if;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/time/new$if;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->goto:Lorg/apache/commons/lang3/time/new$else;

    .line 6
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->this:Lorg/apache/commons/lang3/time/new$else;

    .line 7
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->break:Lorg/apache/commons/lang3/time/new$else;

    .line 8
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->catch:Lorg/apache/commons/lang3/time/new$else;

    .line 9
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->class:Lorg/apache/commons/lang3/time/new$else;

    .line 10
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->const:Lorg/apache/commons/lang3/time/new$else;

    .line 11
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->final:Lorg/apache/commons/lang3/time/new$else;

    .line 12
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->super:Lorg/apache/commons/lang3/time/new$else;

    .line 13
    new-instance v0, Lorg/apache/commons/lang3/time/new$for;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$for;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->throw:Lorg/apache/commons/lang3/time/new$else;

    .line 14
    new-instance v0, Lorg/apache/commons/lang3/time/new$new;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$new;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->while:Lorg/apache/commons/lang3/time/new$else;

    .line 15
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->import:Lorg/apache/commons/lang3/time/new$else;

    .line 16
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->native:Lorg/apache/commons/lang3/time/new$else;

    .line 17
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->public:Lorg/apache/commons/lang3/time/new$else;

    .line 18
    new-instance v0, Lorg/apache/commons/lang3/time/new$case;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/new$case;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/new;->return:Lorg/apache/commons/lang3/time/new$else;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/time/new;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/lang3/time/new;->pattern:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/lang3/time/new;->timeZone:Ljava/util/TimeZone;

    .line 5
    iput-object p3, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    .line 6
    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    .line 7
    invoke-virtual {p1, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    goto :goto_0

    .line 9
    :cond_0
    sget-object p4, Lorg/apache/commons/lang3/time/new;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 10
    :cond_1
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x50

    .line 12
    :goto_0
    div-int/lit8 p3, p2, 0x64

    mul-int/lit8 p3, p3, 0x64

    iput p3, p0, Lorg/apache/commons/lang3/time/new;->century:I

    sub-int/2addr p2, p3

    .line 13
    iput p2, p0, Lorg/apache/commons/lang3/time/new;->startYear:I

    .line 14
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/new;->else(Ljava/util/Calendar;)V

    return-void
.end method

.method public static synthetic access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/new;->if(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/new;->new(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/commons/lang3/time/new;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/new;->do(I)I

    move-result p0

    return p0
.end method

.method private case(Ljava/lang/String;Ljava/util/Calendar;)Lorg/apache/commons/lang3/time/new$else;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79

    const/4 v3, 0x2

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_2

    sparse-switch v1, :sswitch_data_0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 2
    :pswitch_0
    sget-object p1, Lorg/apache/commons/lang3/time/new;->throw:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    .line 3
    :pswitch_1
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/new;->try(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/new$else;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lorg/apache/commons/lang3/time/new;->final:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    :pswitch_3
    const/4 p1, 0x7

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/time/new;->try(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/new$else;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_4
    sget-object p1, Lorg/apache/commons/lang3/time/new;->class:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    .line 7
    :sswitch_0
    sget-object p1, Lorg/apache/commons/lang3/time/new;->break:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    .line 8
    :sswitch_1
    sget-object p1, Lorg/apache/commons/lang3/time/new;->public:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    .line 9
    :sswitch_2
    sget-object p1, Lorg/apache/commons/lang3/time/new;->native:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    .line 10
    :sswitch_3
    sget-object p1, Lorg/apache/commons/lang3/time/new;->super:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    .line 11
    :sswitch_4
    sget-object p1, Lorg/apache/commons/lang3/time/new;->while:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    .line 12
    :sswitch_5
    sget-object p1, Lorg/apache/commons/lang3/time/new;->const:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    :sswitch_6
    const/16 p1, 0x9

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/time/new;->try(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/new$else;

    move-result-object p1

    return-object p1

    .line 14
    :sswitch_7
    sget-object p1, Lorg/apache/commons/lang3/time/new;->catch:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    .line 15
    :sswitch_8
    sget-object p1, Lorg/apache/commons/lang3/time/new;->return:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    .line 16
    :sswitch_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    invoke-direct {p0, v3, p2}, Lorg/apache/commons/lang3/time/new;->try(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/new$else;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/commons/lang3/time/new;->goto:Lorg/apache/commons/lang3/time/new$else;

    :goto_0
    return-object p1

    .line 17
    :sswitch_a
    sget-object p1, Lorg/apache/commons/lang3/time/new;->import:Lorg/apache/commons/lang3/time/new$else;

    return-object p1

    .line 18
    :sswitch_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v3, :cond_1

    .line 19
    new-instance p2, Lorg/apache/commons/lang3/time/new$try;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/lang3/time/new$try;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 20
    :cond_1
    :goto_1
    new-instance p2, Lorg/apache/commons/lang3/time/new$try;

    invoke-direct {p2, p1}, Lorg/apache/commons/lang3/time/new$try;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_2
    :sswitch_c
    const/16 p1, 0xf

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/time/new;->try(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/new$else;

    move-result-object p1

    return-object p1

    .line 22
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v3, :cond_4

    sget-object p1, Lorg/apache/commons/lang3/time/new;->this:Lorg/apache/commons/lang3/time/new$else;

    goto :goto_2

    :cond_4
    sget-object p1, Lorg/apache/commons/lang3/time/new;->else:Lorg/apache/commons/lang3/time/new$else;

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_b
        0x4b -> :sswitch_a
        0x4d -> :sswitch_9
        0x53 -> :sswitch_8
        0x57 -> :sswitch_7
        0x5a -> :sswitch_c
        0x61 -> :sswitch_6
        0x64 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6b -> :sswitch_3
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private do(I)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/time/new;->century:I

    add-int/2addr v0, p1

    .line 2
    iget v1, p0, Lorg/apache/commons/lang3/time/new;->startYear:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x64

    :goto_0
    return v0
.end method

.method private else(Ljava/util/Calendar;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Lorg/apache/commons/lang3/time/new;->try:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lorg/apache/commons/lang3/time/new;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/lang3/time/new;->for:Ljava/lang/String;

    .line 6
    invoke-direct {p0, v3, p1}, Lorg/apache/commons/lang3/time/new;->case(Ljava/lang/String;Ljava/util/Calendar;)Lorg/apache/commons/lang3/time/new$else;

    move-result-object v3

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 8
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/apache/commons/lang3/time/new;->new:Lorg/apache/commons/lang3/time/new$else;

    .line 10
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 11
    invoke-virtual {v3, p0, v0}, Lorg/apache/commons/lang3/time/new$else;->do(Lorg/apache/commons/lang3/time/new;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/time/new;->for:Ljava/lang/String;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/commons/lang3/time/new$else;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/lang3/time/new$else;

    iput-object p1, p0, Lorg/apache/commons/lang3/time/new;->if:[Lorg/apache/commons/lang3/time/new$else;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/time/new;->do:Ljava/util/regex/Pattern;

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/new;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" ; gave up at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-direct {p0, v4, p1}, Lorg/apache/commons/lang3/time/new;->case(Ljava/lang/String;Ljava/util/Calendar;)Lorg/apache/commons/lang3/time/new$else;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/lang3/time/new;->new:Lorg/apache/commons/lang3/time/new$else;

    .line 19
    invoke-virtual {v3, p0, v0}, Lorg/apache/commons/lang3/time/new$else;->do(Lorg/apache/commons/lang3/time/new;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_3
    iput-object v4, p0, Lorg/apache/commons/lang3/time/new;->for:Ljava/lang/String;

    .line 22
    iget-object v3, p0, Lorg/apache/commons/lang3/time/new;->new:Lorg/apache/commons/lang3/time/new$else;

    goto :goto_0

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal pattern character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/new;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static for(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lorg/apache/commons/lang3/time/new$else;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/time/new;->case:[Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 2
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    aput-object v1, v0, p0

    .line 4
    :cond_0
    aget-object p0, v0, p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static if(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 3

    const-string v0, "\\Q"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_4

    const-string v1, "E\\\\E\\"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x51

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    return-object p0

    .line 9
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const-string p1, "\\E"

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private static new(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Calendar;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p0, v0, p2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    iget-object p1, p0, Lorg/apache/commons/lang3/time/new;->timeZone:Ljava/util/TimeZone;

    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/new;->else(Ljava/util/Calendar;)V

    return-void
.end method

.method private try(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/new$else;
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/time/new;->for(I)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/time/new$else;

    if-nez v1, :cond_1

    const/16 v1, 0xf

    if-ne p1, v1, :cond_0

    .line 3
    new-instance p1, Lorg/apache/commons/lang3/time/new$this;

    iget-object p2, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    invoke-direct {p1, p2}, Lorg/apache/commons/lang3/time/new$this;-><init>(Ljava/util/Locale;)V

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/time/new$goto;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/commons/lang3/time/new$goto;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/time/new$else;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/commons/lang3/time/new;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lorg/apache/commons/lang3/time/new;

    .line 3
    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->pattern:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/new;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->timeZone:Ljava/util/TimeZone;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/new;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getFieldWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParsePattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->do:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/new;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method public isNextNumber()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->new:Lorg/apache/commons/lang3/time/new$else;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/new$else;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/new;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    sget-object v2, Lorg/apache/commons/lang3/time/new;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "\" does not match "

    const-string v3, "Unparseable date: \""

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(The "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " locale does not support dates before 1868 AD)\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/lang3/time/new;->do:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 4
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/lang3/time/new;->do:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 5

    .line 5
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 6
    iget-object v1, p0, Lorg/apache/commons/lang3/time/new;->do:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang3/time/new;->timeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/lang3/time/new;->if:[Lorg/apache/commons/lang3/time/new$else;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 11
    aget-object v2, v3, v2

    .line 12
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Lorg/apache/commons/lang3/time/new$else;->for(Lorg/apache/commons/lang3/time/new;Ljava/util/Calendar;Ljava/lang/String;)V

    move v2, v4

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 14
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/new;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/new;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateParser["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/new;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/new;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/new;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
