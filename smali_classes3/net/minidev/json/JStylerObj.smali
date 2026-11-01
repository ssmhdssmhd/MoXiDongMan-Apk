.class Lnet/minidev/json/JStylerObj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/minidev/json/JStylerObj$do;,
        Lnet/minidev/json/JStylerObj$if;,
        Lnet/minidev/json/JStylerObj$for;,
        Lnet/minidev/json/JStylerObj$new;,
        Lnet/minidev/json/JStylerObj$try;,
        Lnet/minidev/json/JStylerObj$MustProtect;,
        Lnet/minidev/json/JStylerObj$StringProtector;
    }
.end annotation


# static fields
.field public static final do:Lnet/minidev/json/JStylerObj$new;

.field public static final for:Lnet/minidev/json/JStylerObj$for;

.field public static final if:Lnet/minidev/json/JStylerObj$try;

.field public static final new:Lnet/minidev/json/JStylerObj$if;

.field public static final try:Lnet/minidev/json/JStylerObj$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/minidev/json/JStylerObj$new;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/minidev/json/JStylerObj$new;-><init>(Lnet/minidev/json/JStylerObj$new;)V

    sput-object v0, Lnet/minidev/json/JStylerObj;->do:Lnet/minidev/json/JStylerObj$new;

    .line 2
    new-instance v0, Lnet/minidev/json/JStylerObj$try;

    invoke-direct {v0, v1}, Lnet/minidev/json/JStylerObj$try;-><init>(Lnet/minidev/json/JStylerObj$try;)V

    sput-object v0, Lnet/minidev/json/JStylerObj;->if:Lnet/minidev/json/JStylerObj$try;

    .line 3
    new-instance v0, Lnet/minidev/json/JStylerObj$for;

    invoke-direct {v0, v1}, Lnet/minidev/json/JStylerObj$for;-><init>(Lnet/minidev/json/JStylerObj$for;)V

    sput-object v0, Lnet/minidev/json/JStylerObj;->for:Lnet/minidev/json/JStylerObj$for;

    .line 4
    new-instance v0, Lnet/minidev/json/JStylerObj$if;

    invoke-direct {v0, v1}, Lnet/minidev/json/JStylerObj$if;-><init>(Lnet/minidev/json/JStylerObj$if;)V

    sput-object v0, Lnet/minidev/json/JStylerObj;->new:Lnet/minidev/json/JStylerObj$if;

    .line 5
    new-instance v0, Lnet/minidev/json/JStylerObj$do;

    invoke-direct {v0, v1}, Lnet/minidev/json/JStylerObj$do;-><init>(Lnet/minidev/json/JStylerObj$do;)V

    sput-object v0, Lnet/minidev/json/JStylerObj;->try:Lnet/minidev/json/JStylerObj$do;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(C)Z
    .locals 1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static do(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_1

    const-string v0, "null"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/16 v2, 0x74

    if-ne v0, v2, :cond_2

    const-string v0, "true"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/16 v2, 0x66

    if-ne v0, v2, :cond_3

    const-string v0, "false"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    const/16 v2, 0x4e

    if-ne v0, v2, :cond_4

    const-string v0, "NaN"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public static else(C)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x1f

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_1

    const/16 v0, 0x9f

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x2000

    if-lt p0, v0, :cond_3

    const/16 v0, 0x20ff

    if-le p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static for(C)Z
    .locals 1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static if(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static new(C)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static try(C)Z
    .locals 1

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
